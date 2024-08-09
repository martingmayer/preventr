# {Main fxs} ----
prep_terms <- function(dat, 
                       model = c("base", "uacr", "hba1c", "sdi", "full"),
                       units = c("mg/dL", "mmol/L")) {
  
  model <- match.arg(model)
  units <- match.arg(units)
  
  add_const_and_unlist <- function(pred_dat) {
    pred_dat %>% dplyr::mutate(constant = 1) %>% as.list() %>% unlist()
  }
  
  remove_vars_for <- function(dat, col_name_contains) {
    
    request <- col_name_contains %>% strsplit("|", fixed = TRUE) %>% unlist()
    
    stopifnot(request %in% c("uacr", "hba1c", "sdi"))
    
    dat %>% dplyr::select(-matches(col_name_contains))
  }
  
  # All models centered as follows, where relevant:
  # age 55
  # non-HDL-C 3.5
  # HDL-C 1.3
  # SBP 130
  # BMI 25
  # eGFR 90
  # HbA1c 5.3
  # (no DM, not smoking, no medication)
  # However, for terms involved in a piece-wise linear spline
  # (sbp < vs. >= 110, bmi < vs. >= 30, egfr < vs. >= 60), 
  # centering occurs for the portion of the spline
  # where the centering value might actually occur; for the other portion
  # of the spline, the value subtracted is the value at which the knot
  # was placed
  
  pred_vals <- dat %>% 
    dplyr::transmute(
      age = (age - 55) / 10,
      # Age squared is only used by 30-yr models, but all other terms
      # are the same. As such, include it in prepared terms, but remove
      # during run of `run_models()` if running a 10-yr model
      # More precisely, age squared is ((age - 55) / 10)^2, but this is already
      # calculated for `age` immediately above, so can just do `age^2` here.
      age_squared = age^2,
      non_hdl_c = 
        ifelse(
          units == "mg/dL",
          convert_chol_to_mmol(total_c - hdl_c) - 3.5,
          (total_c - hdl_c) - 3.5
        ),
      hdl_c = ifelse(
        units == "mg/dL",
        (convert_chol_to_mmol(hdl_c) - 1.3) / 0.3,
        (hdl_c - 1.3) / 0.3
      ),
      sbp_lt_110 = (min(sbp, 110) - 110) / 20,
      sbp_gte_110 = (max(sbp, 110) - 130) / 20,
      dm = as_numeric_binary(dm),
      smoking = as_numeric_binary(smoking),
      bmi_lt_30 = (min(bmi, 30) - 25) / 5,
      bmi_gte_30 = (max(bmi, 30) - 30) / 5,
      egfr_lt_60 = (min(egfr, 60) - 60) / -15,
      egfr_gte_60 = (max(egfr, 60) - 90) / -15,
      bp_tx = as_numeric_binary(bp_tx),
      statin = as_numeric_binary(statin),
      bp_tx_sbp_gte_110 = bp_tx * sbp_gte_110,
      statin_non_hdl_c = statin * non_hdl_c,
      age_non_hdl_c = age * non_hdl_c,
      age_hdl_c = age * hdl_c,
      age_sbp_gte_110 = age * sbp_gte_110,
      age_dm = age * dm,
      age_smoking = age * smoking,
      age_bmi_gte_30 = age * bmi_gte_30,
      age_egfr_lt_60 = age * egfr_lt_60,
      sdi = ifelse(exists("zip", dat), get_sdi(zip), NA),
      hba1c = ifelse(exists("hba1c", dat), hba1c, NA),
      uacr = ifelse(exists("uacr", dat), uacr, NA)
    )
  
  if(model == "base") {
    return(pred_vals %>% remove_vars_for("sdi|hba1c|uacr") %>% add_const_and_unlist())
  }
  
  pred_vals <- pred_vals %>% 
    dplyr::mutate(
      
      # Add preds for sdi model variant  
      sdi_4_to_6 = as_numeric_binary(is_between(sdi, 4, 6)),
      sdi_7_to_10 = as_numeric_binary(is_between(sdi, 7, 10)),
      missing_sdi = as_numeric_binary(is.na(sdi)),
      
      # Add preds for uacr model variant  
      ln_uacr = ifelse(!is.na(uacr), log(uacr), 0),
      missing_uacr = as_numeric_binary(is.na(uacr)),
      
      # Add preds for hba1c model variant
      hba1c_dm = ifelse(!is.na(hba1c) && dm == 1, hba1c - 5.3, 0),
      hba1c_no_dm = ifelse(!is.na(hba1c) && dm == 0, hba1c - 5.3, 0),
      missing_hba1c = as_numeric_binary(is.na(hba1c))
    )
  
  # Now get rid of sdi, hba1c, and uacr (base values not needed)
  pred_vals <- pred_vals %>% dplyr::select(-c(sdi, hba1c, uacr))
  
  if(model == "uacr") {
    return(pred_vals %>% remove_vars_for("sdi|hba1c") %>% add_const_and_unlist())
  }
  
  if(model == "hba1c") {
    return(pred_vals %>% remove_vars_for("sdi|uacr") %>% add_const_and_unlist())
  }
  
  if(model == "sdi") {
    return(pred_vals %>% remove_vars_for("uacr|hba1c") %>% add_const_and_unlist())
  }
  
  # Return full model
  pred_vals %>% add_const_and_unlist()
}

run_models <- function(model = c("base", "uacr", "hba1c", "sdi", "full"),
                       sex = c("female", "male"),
                       time = c("10yr", "30yr"), 
                       pred_vals, 
                       dp = 3) {
  
  stopifnot(
    is.numeric(dp) && length(dp) != 0 && 
      dp >= 0 && round(dp) == dp
  )
  model <- match.arg(model)
  sex <- match.arg(sex)
  time <- match.arg(time)
  
  # If running a 10-year model, drop "age_squared" value from the `pred_vals` 
  # vector, as that term is only used in 30-year estimates
  if(time == "10yr") {
    pred_vals <- pred_vals[setdiff(names(pred_vals), "age_squared")]
  }
  
  desired_models <- 
    get(paste0(model, "_", time)) %>% 
    dplyr::select(dplyr::starts_with(sex))
  
  res <- vector("numeric", length(desired_models))
  names(res) <- gsub(paste0(sex, "_"), "", names(desired_models))
  
  for(given_model in seq_along(desired_models)) {
    log_odds <- sum(desired_models[[given_model]] * pred_vals)
    res[[given_model]] <- round_half_up(exp(log_odds) / (1 + exp(log_odds)), dp)
  }
  
  res %>% 
    as.list() %>% 
    append(
      list(
        model = model, 
        over_years = gsub("yr", "", time) %>% as.integer(),
        # Population of problems, if relevant, handled elsewhere
        input_problems = NA_character_
      )
    ) %>% 
    dplyr::as_tibble()
}

#' @title
#'  Estimate risk of cardiovascular events using the American Heart Association (AHA) Predicting Risk of 
#'  cardiovascular disease EVENTs (PREVENT) equations.
#' 
#' @description
#'  `estimate_risk()` and `est_risk()` are the same function, with the latter
#'  being a literal copy of the former just for those who favor syntactical brevity
#'  (i.e., a function synonym).
#'  
#'  Estimation includes both 10- and 30-year risk of 5 events:
#'  - Total cardiovascular disease (CVD)
#'    - This outcome includes atherosclerotic CVD (ASCVD) and heart failure as 
#'    defined below
#'  - ASCVD
#'    - This outcome includes coronary heart disease (CHD) and stroke as defined below
#'  - Heart failure (often abbreviated HF, but not herein)
#'  - CHD
#'    - This outcome includes nonfatal myocardial infarction (MI) and fatal CHD
#'  - Stroke
#'
#'  See also the README for this package, which goes into additional detail about
#'  the PREVENT equations ([site](https://martingmayer.com/preventr), 
#'  [GitHub](https://github.com/martingmayer/preventr)).
#'
#' @param age Numeric (required predictor variable): Age in years, from 30-79
#' @param sex Character (required predictor variable): Either `"female"` or
#'   `"male"` (`"f"` and `"m"` are accepted abbreviations)
#' @param sbp Numeric (required predictor variable): Systolic blood pressure
#'   (SBP) in mmHg, from 90-180; see the "Details" section for more information
#'   about the upper bound of the range
#' @param bp_tx Logical or numeric equivalent (required predictor variable):
#'   Whether the person is on blood pressure treatment, either `TRUE` or `FALSE`
#'   (1 or 0 are accepted as alternative input)
#' @param total_c Numeric (required predictor variable): Total cholesterol in
#'   mg/dL or mmol/L (see `chol_unit` argument), from 130-320 (for `chol_unit =
#'   "mg/dL"`) or 3.36-8.28 (for `chol_unit = "mmol/L"`)
#' @param hdl_c Numeric (required predictor variable): High-density lipoprotein
#'   cholesterol (HDL-C) in mg/dL or mmol/L (see `chol_unit` argument), from
#'   20-100 (for `chol_unit = "mg/dL"`) or 0.52-2.59 (for `chol_unit =
#'   "mmol/L"`)
#' @param statin Logical or numeric equivalent (required predictor variable):
#'   Whether the person is taking a statin, either `TRUE` or `FALSE` (1 or 0 are
#'   accepted as alternative input)
#' @param dm Logical or numeric equivalent (required predictor variable):
#'   Whether the person has diabetes mellitus (DM), either `TRUE` or `FALSE` (1
#'   or 0 are accepted as alternative input)
#' @param smoking Logical or numeric equivalent (required predictor variable):
#'   Whether the person is currently smoking (which PREVENT defines as cigarette
#'   use within the last 30 days), either `TRUE` or `FALSE` (1 or 0 are accepted
#'   as alternative input)
#' @param egfr Numeric or call (required predictor variable): Estimated glomerular
#'   filtration rate (eGFR) in mL/min/1.73m<sup>2</sup>, entered either as a
#'   numeric from 15-140 or as a call to `calc_egfr()` or synonyms, as described 
#'   in the "Details" section
#' @param bmi Numeric or call (required predictor variable): Body mass index (BMI) in
#'   kg/m<sup>2</sup>, entered either as a numeric from 18.5-39.9 or as a call to 
#'   `calc_bmi()` or synonyms, as described in the "Details" section
#' @param hba1c Numeric (optional predictor variable): Glycated hemoglobin
#'   (HbA1c) in %, from 4.5-15; see the "Details" section for more information
#'   about the lower bound of the range
#' @param uacr Numeric (optional predictor variable): Urine
#'   albumin-to-creatinine ratio (UACR) in mg/g, from 0.1-25000
#' @param zip Character (optional predictor variable): ZIP code of the person's
#'   residence, used to estimate the Social Deprivation Index (SDI); see the
#'   "Details" section for more information
#' @param model Character (required, but has default): The PREVENT model to use,
#'   one of `NULL` (the default), `"base"` (the base model), `"hba1c"` (the base
#'   model adding HbA1c), `"uacr"` (the base model adding UACR), `"sdi"` (the
#'   base model adding SDI), or `"full"` (the base model adding HbA1c, UACR, and
#'   SDI). If `NULL`, the model will be determined by algorithm specified in the
#'   "Details" section, and this is the intended argument for most users. The
#'   ability to specify mainly exists for specific use cases (e.g., research
#'   purposes).
#' @param time Character or numeric (required, but has default): Whether to
#'   estimate risk over 10 or 30 years, one of `"both"` (character; the default);
#'   `10` (numeric), `"10"` (character), or `"10yr"` (character); or `30`
#'   (numeric), `"30"` (character), or `"30yr"` (character); if estimating over 
#'   30 years and age > 59, a warning will accompany the results regarding the
#'   reliability of the estimation (see the "Value" section for more information)
#' @param chol_unit Character (required, but has default): The unit of
#'   measurement for `total_c` and `hdl_c`, either `"mg/dL"` (the default) or
#'   `"mmol/L"` (`"mg"` and `"mmol"` are accepted abbreviations)
#' @param optional_strict Logical (required, but has default): Whether to
#'   enforce strictness on optional predictor variables, either `TRUE` or
#'   `FALSE` (the default). The argument itself is strict, so 1 or 0 are *not*
#'   accepted (in contrast with some of the other logical inputs considered by
#'   this function), and moreover, anything other than `TRUE` will be treated as
#'   `FALSE`. If `FALSE`, the function will discard invalid optional predictor
#'   variables but still allow the model to run. If `TRUE`, optional predictor
#'   variables entered (if any) must be valid for the function to return 
#'   risk estimates. See the "Value" section for more information.
#' @param quiet Logical (required, but has default): Whether to suppress
#'   messages and warnings in the console, either `TRUE` or `FALSE` (the
#'   default); this argument is strict, so 1 or 0 are *not* accepted (in
#'   contrast with some of the other logical inputs considered by this
#'   function), and moreover, anything other than `TRUE` will be treated as
#'   `FALSE`
#'   
#' @details
#'  ## Why is the upper limit of the SBP range 180 mmHg?
#'  
#'  Some may notice the upper limit is set to 180 mmHg here, whereas the PREVENT
#'  equations technically permit up to 200 mmHg. The Pooled Cohort Equations (PCEs)
#'  do this as well. I have restricted to 180 mmHg, as SBP beyond 180 mmHg constitutes
#'  hypertensive urgency (per [AHA's own definitions](https://pubmed.ncbi.nlm.nih.gov/29133354/)), 
#'  and irrespective of the debate surrounding labels like hypertensive urgency
#'  and emergency, it would seem clinically unreasonable to engage with the 
#'  PREVENT equations when someone has more pressing matters to address 
#'  (better blood pressure control *per se*).
#'  
#'  ## Why is the lower limit of the HbA1c 4.5%?
#'  
#'  Some may notice the lower limit is set to 4.5% here, whereas the PREVENT
#'  equations technically permit down to 3%. I have restricted to 4.5%, as 
#'  HbA1c of 3% is neither realistic nor safe for a person. For example, 
#'  using [the HbA1c to estimated average glucose (eAG) 
#'  converter from the American Diabetes Association](https://professional.diabetes.org/glucose_calc) (https://professional.diabetes.org/glucose_calc),
#'  a HbA1c of 3% corresponds to an eAG of 39 mg/dL (2.2 mmol/L).
#'  
#'  ## Entering eGFR and BMI as a call rather than a numeric value
#'  
#'  The `eGFR` and `bmi` arguments can be entered as numeric values or as calls to
#'  `calc_egfr()` and `calc_bmi()`, respectively. They both have synonyms as well:
#'  - Synonyms for `calc_egfr()` are `calculate_egfr()`, `calc_ckd_epi()`, and 
#'  `calculate_ckd_epi()`, with the latter two synonyms reflecting the 
#'  calculation is from the CKD-EPI equations (the reparameterized version 
#'  without race, which is also what the PREVENT equations use).
#'  - The synonym for `calc_bmi()` is `calculate_bmi()`.
#'  
#'  These convenience functions add value where a person might have the necessary
#'  components to calculate the respective parameter but do not have handy the 
#'  parameter itself.
#'  
#'  Although these convenience functions were, of course, tested for accuracy, 
#'  they were written and tested within the context of supporting the PREVENT 
#'  equations as implemented within this package. As such, they are not exported, 
#'  and users will be warned to proceed with caution if they try to use these 
#'  functions outside of `estimate_risk()` or its synonym `est_risk()`.
#'  
#'  The syntax for these convenience functions is as follows:
#'  - `calc_egfr(cr, units = "mg/dL", age, sex, quiet = FALSE)`
#'      - `cr` is the creatinine in whatever units are specified by `units`
#'      - `units` is the unit of measurement for `cr`, either `"mg/dL"` or `"umol/L"`,
#'      with `"mg"` and `"umol"` being accepted abbreviations
#'      - `age` is the age of the person, but there is no need to enter this, as
#'      the function will extract this from the `age` argument of `estimate_risk()`;
#'      in fact, any argument entered here will be ignored in favor of the `age`
#'      argument of `estimate_risk()`
#'      - `sex` is the sex of the person, but there is no need to enter this, as
#'      the function will extract this from the `sex` argument of `estimate_risk()`;
#'      in fact, any argument entered here will be ignored in favor of the `sex`
#'      argument of `estimate_risk()`
#'      - `quiet` is a logical indicating whether to suppress the warning about 
#'      use outside of `estimate_risk()`
#'      - An example call would be `calc_egfr(1.2)` (because `units` defaults
#'      to `"mg/dL"`) or `calc_egfr(88, "umol")`
#'  - `calc_bmi(weight, height, units = "nonmetric", quiet = FALSE)`
#'    - `weight` is the weight in pounds if `units = "nonmetric"` or kilograms 
#'    if `units = "metric"`
#'    - `height` is the height in inches if `units = "nonmetric"` or centimeters 
#'    if `units = "metric"`
#'    - `units` is the unit of measurement for `weight` and `height`, either
#'    `"nonmetric"` or `"metric"`
#'    - `quiet` is a logical indicating whether to suppress the warning about
#'    use outside of `estimate_risk()`
#'    - An example call would be `calc_bmi(150, 70)` (because `units` defaults 
#'    to `"nonmetric"`) or `calc_bmi(68, 178, "metric")`
#'  
#'  ## What is the Social Deprivation Index (SDI)?
#'  
#'  Read more from the [Robert Graham Center's page on the SDI](https://www.graham-center.org/maps-data-tools/social-deprivation-index.html)
#'  (https://www.graham-center.org/maps-data-tools/social-deprivation-index.html)
#'  
#'  ## Model selection when `model = NULL`
#'  
#'  If `model = NULL`, the model will be determined by the following algorithm:
#'  - If no optional predictor variables (HbA1c, UACR, zip code) are
#'  entered, or only invalid optional variables are entered and
#'  `optional_strict = FALSE`: The base model
#'  - If one of the optional predictor variables is entered, or two or
#'  more optional predictor variables are entered but only one is valid and
#'  `optional_strict = FALSE`: The base model adding that variable (e.g., if
#'  HbA1c is entered and no other optional predictor variables are entered, the 
#'  base model adding HbA1c; if HbA1c and UACR are entered, but HbA1c is
#'  invalid and `optional_strict = FALSE`, the base model adding UACR)
#'  - If two or more of the optional predictor variables are entered, or
#'  all three optional variables are entered but one is invalid and
#'  `optional_strict = FALSE`: The full model (the PREVENT equations include
#'  a term for optional predictor variables being missing, so if one of the 
#'  optional predictor variables is missing in this scenario, it is treated as 
#'  such within the full model)
#'  
#'  ## What if SDI is not available for a zip code?
#'  
#'  Some zip codes do not have SDI data available, and the PREVENT equations 
#'  include a term for SDI being missing. As such, if a user enters a valid zip 
#'  code but no SDI data are available, the user will be notified, and the tool 
#'  will then implement the missing term as part of predicting risk whenever 
#'  the full model is used, but SDI will otherwise be removed from prediction. 
#'  Specifically, the following models will predict risk in the situation where 
#'  the user enters a valid zip code, but no SDI data are available:
#'  - If the user does not enter a valid HbA1c or UACR: The base model
#'  - If the user enters valid HbA1c and UACR: The full model (treating SDI as missing)
#'  - If the user enters a valid HbA1c: The base model adding HbA1c
#'  - If the user enters a valid UACR: The base model adding UACR
#' 
#' @return `estimate_risk()` will always return a data frame as a tibble, and
#'   all references herein to a data frame being returned are for a data frame
#'   as a tibble (see the [tibble](https://tibble.tidyverse.org/) package for more detail). 
#'   However, the manner in which the data frame is returned will come in one of two ways, 
#'   depending on the `time` argument:
#'   - When `time = "both"`: A list of length 2, with each item in the list
#'   being a data frame containing the 10-year and 30-year estimates, in that
#'   order
#'   - Otherwise: A single data frame containing the risk estimate for the
#'   specified time horizon
#'
#'   The data frame will have the following columns:
#'   - `total_cvd`: The estimated risk of a total CVD event (column type: double)
#'   - `ascvd`: The estimated risk of an ASCVD event (column type: double)
#'   - `heart_failure`: The estimated risk of a HF event (column type: double)
#'   - `chd`: The estimated risk of a CHD event (column type: double)
#'   - `stroke`: The estimated risk of a stroke event (column type: double)
#'   - `model`: The PREVENT model used (column type: character)
#'   - `over_years`: The time horizon for the risk estimate (column type: integer)
#'   - `input_problems`: Semicolon-separated vector of length one delineating 
#'   input problems, if any exist; otherwise, `NA_character_` (column type:
#'   character)
#'
#'   ## When valid input parameters exist for all required predictor variables
#'
#'   The risk estimate columns are all of type double, and they are presented as
#'   a proportion rounded to 3 decimal places. Halves are rounded up to align
#'   with what many people likely expect, but this is in contrast to base R's
#'   default rounding behavior (it is a perfectly reasonable default, but
#'   perhaps somewhat unexpected for people who are not familiar with different
#'   standards/conventions for rounding; see [round()] for further detail).
#'
#'   The `model` column will be of type character, taking one of the following
#'   values: `"base"`, `"hba1c"`, `"uacr"`, `"sdi"`, or `"full"`.
#'
#'   The `over_years` column will be of type integer, either 10 or 30.
#'
#'   If `optional_strict = TRUE`, the above will only hold if the optional
#'   predictor variables that are entered (if any) are valid; if any
#'   optional variables are entered but are invalid, the function will behave in
#'   the same manner as when invalid input parameters exist for one or more
#'   required variables.
#'
#'   ## When invalid input parameters exist for one or more required predictor variable(s)
#'
#'   The function will issue a warning about the problematic variables, unless
#'   `quiet = FALSE`. A data frame will be returned with the following 
#'   characteristics:
#'   - All risk estimates will be set to `NA_real_`
#'   - The `model` column will state "none"
#'   - The `over_years` column will be set to `NA_integer_`
#'   - The `input_problems` column will contain a character vector of length 1 
#'   delineating the problematic variable(s); if multiple problematic variables
#'   exist, they will be separated by semicolons
#'
#'   ## When invalid input parameters exist for one or more optional predictor variable(s)
#'   
#'   ### When `optional_strict = TRUE`
#'   
#'   The function will behave similarly to when invalid input parameters exist
#'   for one or more required variables, with the `input_problems` column
#'   delineating the problematic variables
#'   
#'   ### When `optional_strict = FALSE`
#'
#'   The function will issue a warning about the problematic variables, unless
#'   `quiet = FALSE`. The problematic optional variables will then be
#'   functionally discarded and the PREVENT equations still run, in accordance
#'   with the specifications detailed in the "Details" section regarding model
#'   selection. A data frame will be returned with the following
#'   characteristics:
#'
#'   - All estimates will be returned as specified in the valid input parameters
#'   section, as will the `model` and `over_years` columns
#'   - The `input_problems` column will contain a character vector of length 1
#'   delineating the problematic variables (because optional predictor variables 
#'   are allowed to be empty, any input that is functionally empty or missing
#'   (such as `NULL`, `numeric(0)`, `NA`, etc.) will not be considered
#'   problematic and thus not populate in the `input_problems` column)
#'   
#'   ## When estimating 30-year risk and age > 59
#'   
#'   The function advises 30-year risk prediction for people > 59 years is 
#'   questionable via two warnings:
#'   
#'   - in the console (that can be suppressed by setting `quiet = TRUE`)
#'   - in the column `input_problems` of the return tibble (`quiet` has no 
#'   impact here)
#'   
#'   ## The special case of the `zip` argument
#'
#'   The above rule for optional predictor variables applies to the `zip`
#'   argument as well, but with the additional reminder that there are valid zip
#'   codes that do not have an SDI score. This is importantly different from an
#'   invalid input for zip. See the "Details" section for more information about
#'   how this is handled, but users should *not* expect anything to populate in
#'   the `input_problems` column if the zip is valid, regardless of whether that
#'   zip has an SDI score. As will be clear from the "Details" section, users will
#'   be able to determine when a zip code does not have an SDI score based on
#'   the model that was used.
#'   
#'   ## Combining output into a single data frame
#'   
#'   The output when `time = "both"` is a list of data frames, one for each 
#'   time horizon, but if desired, it is easy to combine these into a single 
#'   data frame, e.g.:
#'    
#'   \preformatted{ 
#'   res_base_r <- do.call(rbind, res)        # Combine in base R
#'   res_dplyr <- dplyr::bind_rows(res)       # Combine in dplyr
#'   res_dt <- data.table::rbindlist(res)     # Combine in data.table
#'   
#'   # These all yield the same tabular output, but the attributes vary
#'   # (e.g., base R adds row names)
#'   
#'   all.equal(res_base_r, res_dplyr, check.attributes = FALSE)   # TRUE 
#'   all.equal(res_dplyr, res_dt, check.attributes = FALSE)       # TRUE
#'   }   
#'
#' @examples
#' # Example with all required predictor variables (example from Table S25
#' # in the supplemental PDF appendix of the PREVENT equations article)
#' #
#' # Optional predictor variables are all omitted (and thus take their default)
#' # `model` is also omitted (and thus takes its default, with the function selecting
#' # the model based on the algorithm specified in the "Details" section)
#' # `time` is also omitted (and thus takes its default, with the function returning
#' # estimates for both 10- and 30-year risk as specified in the "Value" section)
#' #
#' # Expect the base model to run given absence of optional predictor variables.
#' res <- estimate_risk(
#'   age = 50, 
#'   sex = "female",    # or "f"
#'   sbp = 160, 
#'   bp_tx = TRUE,      # or 1
#'   total_c = 200,     # default unit is "mg/dL"
#'   hdl_c = 45,        # default unit is "mg/dL"
#'   statin = FALSE,    # or 0
#'   dm = TRUE,         # or 1
#'   smoking = FALSE,   # or 0
#'   egfr = 90,
#'   bmi = 35
#' )
#' 
#' # Based on Table S25, expect the 10-year risk for `total_cvd` to be 0.147.
#' # Based on the supplemental Excel file, also expect:
#' # 10-year risks: `ascvd`, 0.092; `heart_failure`, 0.081; 
#' # `chd`, 0.044; `stroke`, 0.054
#' # 30-year risks: `total_cvd`, 0.53; `ascvd`, 0.354; `heart_failure`, 0.39;
#' # `chd`, 0.198; `stroke`, 0.221
#' res
#'  
#' # Example with HbA1c 
#' # (also changing required predictor variables & limiting to 10-year results)
#' estimate_risk(
#'   age = 66, 
#'   sex = "male",      # or "m"
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   hba1c = 7.5,
#'   time = "10yr"      # only 10-year results will show
#' )
#' 
#' # Example with UACR (limited to 30-year results)
#' estimate_risk(
#'   age = 66, 
#'   sex = "female",   
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   uacr = 750,
#'   time = "30yr"      # only 30-year results will show    
#' )
#'  
#' # The remaining examples will all be limited to 10-year results  
#'  
#' # Example with SDI with valid zip code with SDI data available
#' estimate_risk(
#'   age = 66, 
#'   sex = "female",     
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   zip = "59043",   # Lame Deer, MT (selected randomly)
#'   time = 10        # Note use of numeric 10 here (not "10yr")
#' )
#' 
#' # Example with SDI with valid zip code without SDI data available
#' # (base model will be used)
#' estimate_risk(
#'   age = 66, 
#'   sex = "male",     
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   zip = "00738",   # Fajardo, PR
#'   time = 10
#' )
#' 
#' # Example with full model (even though zip does not have available SDI, full 
#' # model used given availability of HbA1c and UACR; because zip is valid,
#' # column `input_problems` will be `NA`)
#' estimate_risk(
#'   age = 66, 
#'   sex = "female",     
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   hba1c = 9,
#'   uacr = 75,
#'   zip = "00738",   
#'   time = "10yr"
#' )
#' 
#' # Example with full model (zip has SDI data available, UACR is valid, but
#' # HbA1c is not; column `input_problems` will specify problem with `hba1c`,
#' # but full model will still run given availability of the other two optional
#' # predictor variables)
#' estimate_risk(
#'   age = 66, 
#'   sex = "male",     
#'   sbp = 148, 
#'   bp_tx = FALSE,     
#'   total_c = 188,     
#'   hdl_c = 52,        
#'   statin = TRUE,    
#'   dm = TRUE,         
#'   smoking = TRUE,   
#'   egfr = 67,
#'   bmi = 30,
#'   hba1c = 20,
#'   uacr = 75,
#'   zip = "59043",   
#'   time = "10yr"
#' )
#' 
#' # Expect table of `NA`s due to invalid input for `age` and `sbp`, and column
#' # `input_problems` to contain explanations about problems with `age` and `sbp`
#' res <- estimate_risk(
#'   age = 8675309, 
#'   sex = "female",    
#'   sbp = 112358, 
#'   bp_tx = TRUE,      
#'   total_c = 200,     
#'   hdl_c = 45,        
#'   statin = FALSE,    
#'   dm = TRUE,         
#'   smoking = FALSE,   
#'   egfr = 90,
#'   bmi = 35,
#'   time = "10yr"     
#' )
#' 
#' res
#' 
#' # Quiet version of the above example
#' res <- estimate_risk(
#'   age = 8675309, 
#'   sex = "female",    
#'   sbp = 112358, 
#'   bp_tx = TRUE,      
#'   total_c = 200,     
#'   hdl_c = 45,        
#'   statin = FALSE,    
#'   dm = TRUE,         
#'   smoking = FALSE,   
#'   egfr = 90,
#'   bmi = 35,
#'   time = "10yr",     
#'   quiet = TRUE       # Suppresses messages, but not column `input_problems`
#' )
#' 
#' res
#' 
#' # Note `input_problems` column is semicolon-separated, but it is easy to
#' # print as separate lines with `gsub()` and `cat()`, e.g.:
#' cat(gsub("; ", "\n", res$input_problems))
#' @examplesIf getRversion() >= "4.1.0"
#' res$input_problems |> gsub(pattern = "; ", replacement = "\n", x = _) |> cat()
#' # ... and could, of course, also do with the {magrittr} pipe `%>%` if desired
#' 
#' @rdname estimate_risk
#' @export
estimate_risk <- function(age,
                          sex,
                          sbp,
                          bp_tx,
                          total_c,
                          hdl_c,
                          statin,
                          dm,
                          smoking,
                          egfr,
                          bmi,
                          hba1c = NULL,
                          uacr = NULL,
                          zip = NULL,
                          model = NULL,
                          time = "both",
                          chol_unit = "mg/dL",
                          optional_strict = FALSE,
                          quiet = FALSE) {
  
  # Just want to know whether it is TRUE, but anything other than TRUE is FALSE
  optional_strict <- isTRUE(optional_strict)
  
  # Calculate eGFR if requested ----
  cl <- match.call()
  internal_egfr_call <- TRUE
  internal_bmi_call <- TRUE
  
  if(is.call(cl[["egfr"]])) {
    
    supported_egfr_call <- 
      identical(cl[["egfr"]][[1]], quote(calculate_egfr)) || 
      identical(cl[["egfr"]][[1]], quote(calc_egfr)) || 
      identical(cl[["egfr"]][[1]], quote(calculate_ckd_epi)) || 
      identical(cl[["egfr"]][[1]], quote(calc_ckd_epi))
    
    if(supported_egfr_call) {
      cl[["egfr"]][["age"]] <- age
      cl[["egfr"]][["sex"]] <- sex
      egfr <- eval(cl[["egfr"]])
    }
    
    if(!supported_egfr_call) {
      message_maybe("Only the following calls are honored for `egfr` argument:", quiet)
      message_maybe(
        paste0(
          c(
            "`calculate_egfr()`", 
            "`calc_egfr()`", 
            "`calculate_ckd_epi()`", 
            "`calc_ckd_epi()`"
          ),
          collapse = "\n"
        ),
        quiet
      )
      egfr <- quotify(cl[["egfr"]])
    }
  }
  
  if(is.call(cl[["bmi"]])) {
    
    supported_bmi_call <- 
      identical(cl[["bmi"]][[1]], quote(calculate_bmi)) || 
      identical(cl[["bmi"]][[1]], quote(calc_bmi))
    
    if(supported_bmi_call) {
      bmi <- eval(cl[["bmi"]])
    }
    
    if(!supported_bmi_call) {
      message_maybe("Only the following calls are honored for `bmi` argument:", quiet)
      message_maybe(
        paste0(c("`calculate_bmi()`", "`calc_bmi()`"), collapse = "\n"),
        quiet
      )
      bmi <- quotify(cl[["bmi"]])
    }
  }
  
  # Check required predictor variables ----
  vars_required_check <- list(
    age = is_valid_age(age, quiet = FALSE),
    sex = is_valid_sex_expanded(sex, quiet = FALSE),
    sbp = is_valid_sbp(sbp, quiet = FALSE),
    bp_tx = is_valid_bp_tx(bp_tx, quiet = FALSE),
    total_c = is_valid_total_c(
      total_c, chol_unit, expanded_units = TRUE, quiet = FALSE
    ),
    hdl_c = is_valid_hdl_c(
      hdl_c, chol_unit, expanded_units = TRUE, quiet = FALSE
    ),
    statin = is_valid_statin(statin, quiet = FALSE),
    dm = is_valid_dm(dm, quiet = FALSE),
    smoking = is_valid_smoking(smoking, quiet = FALSE),
    egfr = is_valid_egfr(egfr, quiet = FALSE),
    bmi = is_valid_bmi(bmi, quiet = FALSE),
    model = is_valid_model(model, quiet = FALSE),
    time = is_valid_time(time, quiet = FALSE)
  )
  
  # Check optional predictor variables ----
  vars_optional_check <- list(
    hba1c = is_valid_hba1c(hba1c, allow_empty = TRUE, quiet = FALSE),
    uacr = is_valid_uacr(uacr, allow_empty = TRUE, quiet = FALSE),
    zip = is_valid_zip(zip, allow_empty = TRUE, quiet = FALSE)
  )
  
  # Determine which vars have probs (if any) ----
  vars_required_problem <- 
    vars_required_check[
      vapply(vars_required_check, function(x) !isTRUE(x), logical(1))
    ]
  
  vars_optional_problem <- 
    vars_optional_check[
      vapply(vars_optional_check, function(x) !(isTRUE(x) || is.null(x)), logical(1))
    ]
  
  # Functions to generate empty tibble and messages if input probs ----
  input_probs_return_tibble <- function(input_probs) {
    dplyr::tibble(
      total_cvd = NA_real_,
      ascvd = NA_real_,
      heart_failure = NA_real_,
      chd = NA_real_,
      stroke = NA_real_,
      model = "none",
      over_years = NA_integer_,
      input_problems = input_probs
    )
  }
  
  message_about_required <- function(x) {
    message_maybe("Please check the following required variables: ", quiet)
    message_maybe(paste0(x, collapse = "\n"), quiet)
  }
  
  message_questionable_estimation <- 
    "Estimating 30-year risk in people > 59 years of age is questionable"
  
  warn_about_questionable_estimation <- function(age, time) {
    if(any(grepl("both|30", as.character(time))) && age > 59) {
      warn_maybe(message_questionable_estimation, quiet)
    }
  }
  
  message_about_optional <- function(x) {
    message_maybe("Please check the following optional variables: ", quiet)
    message_maybe(paste0(x, collapse = "\n"), quiet)
  }
  
  # If there are problems w/ required vars ---- 
  # ... return tibble of NAs, but tell user about problems
  if(length(vars_required_problem) != 0) {
    
    message_about_required(vars_required_problem)
    
    # If `optional_strict` is TRUE, also tell user about problems 
    # w/ optional vars
    if(optional_strict) {
      
      message_about_optional(vars_optional_problem)

      return_tibble <- input_probs_return_tibble(
        paste0(c(vars_required_problem, vars_optional_problem), collapse = "; ")
      )
    } else {
      return_tibble <- input_probs_return_tibble(
        paste0(vars_required_problem, collapse = "; ")
      )
    }
    
    # Now, also warn about questionable estimation if relevant
    warn_about_questionable_estimation(age, time)
    
    # Return two empty tibbles if `time` is "both"; otherwise, return one
    if(isTRUE(time == "both")) {
      return(
        list(
          risk_est_10yr = return_tibble, 
          risk_est_30yr = return_tibble
        )
      )
    } else {
      return(return_tibble)
    }
  }
  
  # If there are problems w/ optional vars ----
  # ... action depends on `optional_strict`
  # If `optional_strict` is TRUE, return tibble of NAs, but tell user 
  # about problems in tibble (and via messaging if not `quiet`)
  # If `optional_strict` is FALSE, set problematic optional vars to NULL
  # and proceed, but tell user about problems via tibble ultimately returned
  # later in script (via messaging if not `quiet`)
  if(length(vars_optional_problem) != 0) {
    
    if(optional_strict) {
      
      message_about_optional(vars_optional_problem)
      warn_about_questionable_estimation(age, time)
      
      return_tibble <- input_probs_return_tibble(
        paste0(vars_optional_problem, collapse = "; ")
      )
      
      if(isTRUE(time == "both")) {
        return(
          list(risk_est_10yr = return_tibble, risk_est_30yr = return_tibble)
        )
      } else {
        return(return_tibble)
      }
    }
    
    # Warn about questionable estimation (if relevant) and message about
    # problematic optional vars
    message_about_optional(paste0(vars_optional_problem, " (so set to NULL)"))
    
    # `optional_input_problems_for_reporting` is also used later on in script, 
    # for values for `input_problems` in data frame that's returned
    optional_input_problems_for_reporting <- 
      paste0(vars_optional_problem, " (so set to NULL)", collapse = "; ")
    
    # If optional vars are invalid or empty, set to NULL
    if(!isTRUE(vars_optional_check$hba1c) || is_na_or_empty(hba1c)) hba1c <- NULL
    if(!isTRUE(vars_optional_check$uacr) || is_na_or_empty(uacr)) uacr <- NULL
    if(!isTRUE(vars_optional_check$zip) || is_na_or_empty(zip)) zip <- NULL
  }
  
  # Standardize inputs accepting variants ----
  # (logical inputs accepting 0 or 1 handled elsewhere via `as_numeric_binary()`)
  if(sex %in% c("f", "m")) {
    sex <- ifelse(sex == "f", "female", "male")
  }
  
  if(time == "both") {
    time <- c("10yr", "30yr") 
  } else {
    if(as.character(time) == "10") time <- "10yr"
    if(as.character(time) == "30") time <- "30yr"
  }
  
  if(chol_unit %in% c("mg", "mmol")) {
    chol_unit <- ifelse(chol_unit == "mg", "mg/dL", "mmol/L")
  }
  
  # Determine model to run ----
  if(is_na_or_empty(model)) model <- select_model(hba1c, uacr, zip)
  stylized_model <- stylize_model_to_run(model)
  
  message_maybe(paste0("Estimates are from: ", stylized_model, "."), quiet)
  warn_about_questionable_estimation(age, time)
  
  # Do risk estimation and return result ----
  pred_vals <- 
    dplyr::tibble(
      age = age,
      total_c = total_c,
      hdl_c = hdl_c,
      statin = as.logical(statin),
      sbp = sbp,
      bp_tx = as.logical(bp_tx),
      dm = as.logical(dm),
      smoking = as.logical(smoking),
      egfr = egfr,
      bmi = bmi,
      sex = sex,
      hba1c = na_or_empty_to_na(hba1c),
      uacr = na_or_empty_to_na(uacr),
      zip = na_or_empty_to_na(as.character(zip))
    ) %>% 
    prep_terms(model, chol_unit)
  
  res <- vector(mode = "list", length = length(time))
  names(res) <- time
  
  for(given_time in time) {
    res[[given_time]] <- run_models(model, sex, given_time, pred_vals)
    
    if(length(vars_optional_problem) != 0) {
      res[[given_time]][["input_problems"]] <- 
        optional_input_problems_for_reporting
    }
    
    if(given_time == "30yr" && age > 59) {
      res[[given_time]][["input_problems"]] <- 
        if(length(vars_optional_problem) != 0) {
          paste(
            paste0("Warning: ", message_questionable_estimation),
            res[[given_time]][["input_problems"]],
            sep = "; "
          )
        } else {
          paste0("Warning: ", message_questionable_estimation)
        }
    }
  }
  
  if(length(time) == 1) {
    return(res[[time]])
  }
  
  names(res) <- paste0("risk_est_", time)
  
  res
}

#' @rdname estimate_risk
#' @export
est_risk <- estimate_risk

#' @rdname app
#' 
#' @title
#'  Navigate to browser-based Shiny implementation of PREVENT equations
#'  
#' @description
#'  This function opens a browser window (using the user's default browser) and
#'  navigates to the Shiny app located at:     
#'  
#'  [https://martingmayer.shinyapps.io/prevent-equations](https://martingmayer.shinyapps.io/prevent-equations)     
#'    
#'  Easier-to-remember URLs: 
#'  - [https://tiny.cc/prevent-equations](https://tiny.cc/prevent-equations) 
#'  - [https://tiny.cc/preventequations](https://tiny.cc/preventequations)
#'  
#'  The app includes risk visualization and several options for customizing the output.
#'  
#' @param ... Not used. Reserved for future use.
#' 
#' @return Returns `NULL` invisibly after opening app in your default browser.
#' 
#' @examples
#' app()
#'  
#' @export
app <- function(...) {
  if(interactive()) {
    utils::browseURL("https://martingmayer.shinyapps.io/prevent-equations")
  }
  invisible(NULL)
}
