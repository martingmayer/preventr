# Calling this `helpers.R` instead of the more typical
# `utils.R` to facilitate easier use of pkgload::load_all()

# Ceci n'est pas une pipe
# (use %>% instead of |> just to keep R version dependency lower)
`%>%` <- dplyr::`%>%`

# {Basic helper fxs} ----
as_numeric_binary <- function(val) {
  stopifnot(isTRUE(val) || isFALSE(val) || val %in% c(0, 1))
  as.numeric(val)
}

convert_chol_to_mmol <- function(chol) {
  chol * 0.02586 
}

convert_chol_to_mg <- function(chol) {
  chol / 0.02586 
}

is_okay_type <- function(var_val) {
  isTRUE(
    !length(var_val) > 1 && 
      (is.numeric(var_val) || is.character(var_val) || is.logical(var_val) ||
         (length(var_val) == 1 && is.na(var_val)) || is.null(var_val)) && 
      # Test `!is.matrix()` as well, because `is.numeric(matrix())` is TRUE
      !is.matrix(var_val)
  )
}

is_na_or_empty <- function(val) {
  if(length(val) > 1) {
    stop(deparse(substitute(val)), " must be of length 1", call. = FALSE)
  }
  length(val) == 0 || is.null(val) || 
    is.na(val) || (is.character(val) && val == "")
}

is_between <- function(val, lower, upper, inclusive = TRUE) {
  stopifnot(isTRUE(inclusive) || isFALSE(inclusive))
  if(is_na_or_empty(val) || !is.numeric(val)) return(FALSE)
  if(!inclusive) return(val > lower && val < upper)
  val >= lower && val <= upper
}

# Writing as !isTRUE(quiet) instead of isFALSE(quiet) so that anything
# other than TRUE gets treated as FALSE
message_maybe <- function(x, quiet) if(!isTRUE(quiet)) message(x)

na_or_empty_to_na <- function(val) {
  if(is_na_or_empty(val)) NA else val
}

# Writing as !isTRUE(quiet) instead of isFALSE(quiet) so that anything
# other than TRUE gets treated as FALSE
warn_maybe <- function(x, quiet) if(!isTRUE(quiet)) warning(x, call. = FALSE, immediate. = TRUE)

# Rounding halves up in R is perhaps best known from the StackOverflow 
# conversation about this that started in 2012 here:
# https://stackoverflow.com/questions/12688717/round-up-from-5/12688836#12688836
# Archived version here:
# https://web.archive.org/web/20231221222829/https://stackoverflow.com/questions/12688717/round-up-from-5/12688836#12688836
# This is an exact implementation of that other than changing variable names.
# These days, this function can also be found in, e.g., the {janitor} package
round_half_up <- function(val, digits) {
  pos_or_neg <- sign(val)
  res <- abs(val) * 10^digits
  res <- res + 0.5 + sqrt(.Machine$double.eps)
  res <- trunc(res)
  res <- res / 10^digits
  res * pos_or_neg
}

percentify <- function(risk) {
  res <- paste0(risk * 100, ifelse(is.na(risk), "", "%"))
  names(res) <- names(risk)
  res
}

quotify <- function(x) {
  if(length(x) == 0 || is.null(x)) {
    deparse(x)
  } else if(!is.atomic(x) || is.matrix(x) || length(x) > 1) {
    paste0(deparse(x), collapse = "")
  } else if(is.character(x)) {
    paste0("\"", x, "\"") 
  } else {
    x
  }
}

# {Calculation of BMI and eGFR} ----

internal_fx_used_generally_msg <- paste0(
  c(
    "This function is intended for internal package use.", 
    "Fitness for more general use has not been tested.",
    "Proceed with caution."
  ), 
  collapse = "\n"
)

calculate_bmi <- function(weight, height, units = "nonmetric", quiet = FALSE) {
  
  if(
    (exists("internal_bmi_call", envir = parent.frame()) && 
     !isTRUE(parent.frame()$internal_bmi_call)) || 
    !exists("internal_bmi_call", envir = parent.frame())
  ) {
    warn_maybe(internal_fx_used_generally_msg, quiet)
  } 
  
  # Note use of single & to allow for vectorized check,
  # b/c `isTRUE()` will still return FALSE if length > 1
  if(!isTRUE(is.numeric(weight) & weight > 0)) {
    message("`weight` must be a single number > 0")
    return(NA)
  } 
  
  if(!isTRUE(is.numeric(height) & height > 0)) {
    message("`height` must be a single number > 0")
    return(NA)
  }
  
  if(!isTRUE(units %in% c("metric", "nonmetric"))) {
    message("`units` must be a single word, either \"metric\" or \"nonmetric\"")
    return(NA)
  }
  
  if(units == "metric") {
    res <- weight / ((height / 100) ^ 2)
  } else {
    res <- (weight / (height ^ 2)) * 703
  }
  
  round_half_up(res, 1)
}

calc_bmi <- calculate_bmi

calculate_ckd_epi <- function(cr, units = "mg/dL", age, sex, quiet = FALSE) {
  
  if(
    (exists("internal_egfr_call", envir = parent.frame()) && 
     !isTRUE(parent.frame()$internal_egfr_call)) || 
    !exists("internal_egfr_call", envir = parent.frame())
  ) {
    warn_maybe(internal_fx_used_generally_msg, quiet)
  } 
  
  if(!isTRUE(is.numeric(cr) & cr > 0)) {
    message("`cr` must be a single number > 0") 
    return(NA)
  }
  
  if(!isTRUE(is.numeric(age) & age >= 18 & age <= 100)) {
    message("`age` must be a single number where 18 <= number <= 100") 
    return(NA)
  }
  
  if(!isTRUE(sex %in% c("female", "f", "male", "m"))) {
    message("sex must be \"female\", \"f\", \"male\", or \"m\"") 
    return(NA)
  } else if(sex %in% c("female", "male")) {
    sex <- ifelse(sex == "female", "f", "m")
  }
  
  if(!isTRUE(units %in% c("mg/dL", "mg", "umol/L", "umol"))) {
    message("`units` must be one of \"mg/dL\", \"mg\", \"umol/L\", \"umol\"")
    return(NA)
  }
  
  if(!grepl("mg", units)) cr <- cr / 88.4
  
  k <- ifelse(sex == "f", 0.7, 0.9)
  u <- 142
  a1 <- ifelse(sex == "f", -0.241, -0.302)
  a2 <- -1.2
  c <- 0.9938
  d <- ifelse(sex == "f", 1.012, 1)
  
  round_half_up(u * min(cr/k, 1)^a1 * max(cr/k, 1)^a2 * c^age * d, 0)
}

calculate_egfr <- calc_egfr <- calc_ckd_epi <- calculate_ckd_epi

# {Checker fxs} ----
{
  # > Numeric vars ----
  
  # Valid ranges for each numeric var, alpha order
  valid <- list(
    age = c(lower = 30, upper = 79),
    # Table 1, footnote re: excluding people based on BMI
    bmi = c(lower = 18.5, upper = 39.9),
    # For creatinine, really just want to check it is a number > 0, as
    # imposition of further restriction would be somewhat arbitrary given
    # valid input is ultimately determined by eGFR, not creatinine
    cr = c(lower = 0.1, upper = Inf),
    egfr = c(lower = 15, upper = 140),
    ft = c(lower = 0.1, upper = Inf),
    hba1c = c(lower = 4.5, upper = 15),
    hdl_c = list(
      `mg/dL` = c(lower = 20, upper = 100),
      `mmol/L` = c(lower = 0.52, upper = 2.59)
    ),
    # See rationale for creatinine re: why range is 0 to infinity here
    ht = c(lower = 0.1, upper = Inf),
    inches = c(lower = 0, upper = Inf),
    kg = c(lower = 0.1, upper = Inf),
    lb = c(lower = 0.1, upper = Inf),
    m = c(lower = 0.1, upper = Inf),
    sbp = c(lower = 90, upper = 180),
    total_c = list(
      `mg/dL` = c(lower = 130, upper = 320),
      `mmol/L` = c(lower = 3.36, upper = 8.28)
    ),
    uacr = c(lower = 0.1, upper = 25000),
    # See rationale for creatinine re: why range is 0 to infinity here
    wt = c(lower = 0.1, upper = Inf)
  )
  
  check_range <- function(var_name_as_chr, var_val, quiet = TRUE, units = NULL) {
    
    if(is.null(units) || is.na(units)) {
      lower <- valid[[var_name_as_chr]][["lower"]]
      upper <- valid[[var_name_as_chr]][["upper"]]
    } else {
      lower <- round_half_up(valid[[var_name_as_chr]][[units]][["lower"]], 2)
      upper <- round_half_up(valid[[var_name_as_chr]][[units]][["upper"]], 2)
    }
    
    pass <- is_okay_type(var_val) && is_between(var_val, lower, upper)
    if(quiet) return(pass)
    if(pass) TRUE else make_error_text_range(var_name_as_chr, var_val, units = units)
  }
  
  make_error_text_range <- function(var_name_as_chr, var_val, units = NULL, ref = valid) {
    
    if(is_na_or_empty(units)) {
      lower <- ref[[var_name_as_chr]][["lower"]]
      upper <- ref[[var_name_as_chr]][["upper"]]
    } else {
      lower <- ref[[var_name_as_chr]][[units]][["lower"]]
      upper <- ref[[var_name_as_chr]][[units]][["upper"]]
    }
    
    paste0(
      "`", var_name_as_chr, "`",
      " entered as ", quotify(var_val),
      ", but must be between ",
      lower,
      " and ",
      upper
    )
  }
  
  # Rest of numeric vars, alpha order
  is_valid_age <- function(age, quiet = TRUE) {
    check_range("age", age, quiet)
  }
  
  is_valid_bmi <- function(bmi, quiet = TRUE) {
    check_range("bmi", bmi, quiet)
  }
  
  is_valid_chol <- function(chol, 
                            units = c("mg/dL", "mmol/L"),
                            type = c("total_c", "hdl_c"),
                            expanded_units = FALSE,
                            quiet = TRUE) {
    
    stopifnot(!is_na_or_empty(type) && type %in% c("total_c", "hdl_c"))
    
    # Check if units are valid based on whether to use "strict"
    # or "expanded" units specification
    if(expanded_units) {
      valid_chol_unit <- is_valid_chol_unit_expanded(units, quiet)
    } else {
      valid_chol_unit <- is_valid_chol_unit(units, quiet)
    }
    
    if(!isTRUE(valid_chol_unit)) {
      if(quiet) {
        return(valid_chol_unit)
      } else {
        return(paste0(valid_chol_unit, " for `", type, "` to be valid"))
      }
    }
    
    # Convert "mg" to "mg/dL" and "mmol" to "mmol/L" if needed
    if(expanded_units && units %in% c("mg", "mmol")) {
      units <- ifelse(units == "mg", "mg/dL", "mmol/L")
    }
    
    check_range(type, chol, quiet, units)
  }
  
  is_valid_cr <- function(cr, quiet = TRUE) {
    check_range("cr", cr, quiet)
  }
  
  is_valid_egfr <- function(egfr, quiet = TRUE) {
    check_range("egfr", egfr, quiet)
  }
  
  is_valid_ft <- function(ft, quiet = TRUE) {
    check_range("ft", ft, quiet)
  }
  
  # For HbA1c, add arg `allow_empty`, as it isn't required, but default
  # to FALSE so the fx call has to "opt in" to permit it to be empty
  is_valid_hba1c <- function(hba1c, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(hba1c) && is_na_or_empty(hba1c)) return(TRUE)
    check_range("hba1c", hba1c, quiet)
  }
  
  is_valid_hdl_c <- function(chol, units, expanded_units = FALSE, quiet = TRUE) {
    is_valid_chol(chol, units, "hdl_c", expanded_units, quiet)
  }
  
  is_valid_ht <- function(ht, quiet = TRUE) {
    check_range("ht", ht, quiet)
  }
  
  is_valid_inches <- function(inches, quiet = TRUE) {
    check_range("inches", inches, quiet)
  }
  
  is_valid_kg <- function(kg, quiet = TRUE) {
    check_range("kg", kg, quiet)
  }
  
  is_valid_lb <- function(lb, quiet = TRUE) {
    check_range("lb", lb, quiet)
  }
  
  is_valid_m <- function(m, quiet = TRUE) {
    check_range("m", m, quiet)
  }
  
  is_valid_sbp <- function(sbp, quiet = TRUE) {
    check_range("sbp", sbp, quiet)
  }
  
  is_valid_total_c <- function(chol, units, expanded_units = FALSE, quiet = TRUE) {
    is_valid_chol(chol, units, "total_c", expanded_units, quiet)
  }
  
  # See `is_valid_hba1c()` for details re: arg `allow_empty`
  is_valid_uacr <- function(uacr, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(uacr) && is_na_or_empty(uacr)) return(TRUE)
    check_range("uacr", uacr, quiet)
  }
  
  is_valid_wt <- function(wt, quiet = TRUE) {
    check_range("wt", wt, quiet)
  }
  
  # > Character vars ----
  check_chr <- function(var_name_as_chr, var_val, opts, quiet = TRUE) {
    pass <- is_okay_type(var_val) && !is_na_or_empty(var_val) && var_val %in% opts
    if(quiet) return(pass)
    if(pass) TRUE else make_error_text_opts(var_name_as_chr, var_val, opts)
  }
  
  # Note suffix of "opts", b/c this can be used for both chr and lgl vars
  # given they have a restricted set of options
  make_error_text_opts <- function(var_name_as_chr, var_val, opts) {
    
    lgl_opts <- length(opts) == 1 && opts %in% c("lgl", "logical")
    surrounding_marker <- if(lgl_opts) "" else "\""
    opts <- if(lgl_opts) list(TRUE, 1, FALSE, 0) else opts
    
    paste0(
      "`", var_name_as_chr, "`",
      " entered as ", quotify(var_val),
      ", but must be one of ",
      paste0(surrounding_marker, opts, surrounding_marker, collapse = ", ")
    )
  }
  
  is_valid_chol_unit <- function(units, quiet = TRUE) {
    check_chr("chol_unit", units, c("mg/dL", "mmol/L"), quiet)
  }
  
  is_valid_chol_unit_expanded <- function(units, quiet = TRUE) {
    check_chr("chol_unit", units, c("mg/dL", "mg", "mmol/L", "mmol"), quiet)
  }
  
  is_valid_cr_unit <- function(units, quiet = TRUE) {
    check_chr("cr_unit", units, c("mg/dL", "umol/L"), quiet)
  }
  
  is_valid_cr_unit_expanded <- function(units, quiet = TRUE) {
    check_chr("cr_unit", units, c("mg/dL", "mg", "umol/L", "umol"), quiet)
  }
  
  is_valid_ht_wt_unit <- function(units, quiet = TRUE) {
    check_chr("ht_wt_unit", units, c("metric", "nonmetric"), quiet)
  }
  
  is_valid_sex <- function(sex, quiet = TRUE) {
    check_chr("sex", sex, c("female", "male"), quiet)
  }
  
  is_valid_sex_expanded <- function(sex, quiet = TRUE) {
    check_chr("sex", sex, c("female", "f", "male", "m"), quiet)
  }
  
  is_valid_model <- function(model, allow_empty = TRUE, quiet = TRUE) {
    if(allow_empty && is_okay_type(model) && is_na_or_empty(model)) return(TRUE)
    check_chr(
      "model", 
      model, 
      c("base", "hba1c", "uacr", "sdi", "full"), 
      quiet
    )
  }
  
  is_valid_time <- function(time, quiet = TRUE) {
    check_chr("time", time, c("both", "10", "10yr", "30", "30yr"), quiet)
  }
  
  # > Logical vars ----
  # For `dm`, `statin`, `bp_tx`, `smoking`
  # Base `is.logical` returns TRUE for NA, which is not desirable here, and setup
  # here permits TRUE/FALSE or 0/1
  check_lgl <- function(var_name_as_chr, var_val, quiet = TRUE) {
    pass <- 
      isTRUE(var_val) || isFALSE(var_val) || 
      (is_okay_type(var_val) && !is_na_or_empty(var_val) && var_val %in% c(0, 1))
    if(quiet) return(pass)
    if(pass) TRUE else make_error_text_opts(var_name_as_chr, var_val, "lgl")
  }
  
  is_valid_bp_tx <- function(bp_tx, quiet = TRUE) {
    check_lgl("bp_tx", bp_tx, quiet)
  }
  
  is_valid_dm <- function(dm, quiet = TRUE) {
    check_lgl("dm", dm, quiet)
  }
  
  is_valid_smoking <- function(smoking, quiet = TRUE) {
    check_lgl("smoking", smoking, quiet)
  }
  
  is_valid_statin <- function(statin, quiet = TRUE) {
    check_lgl("statin", statin, quiet)
  }
  
  # > Zip ----
  get_sdi <- function(desired_zip, dat = sdi_decile_dat) {
    
    res <- dat %>% 
      dplyr::filter(zip == as.character(desired_zip)) %>% 
      dplyr::pull(sdi_decile)
    
    if(length(res) == 0) NA else res
  }
  
  # See `is_valid_hba1c()` for details re: arg `allow_empty`
  is_valid_zip <- function(zip, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(zip) && is_na_or_empty(zip)) return(TRUE)
    zip_was_num <- is.numeric(zip)
    zip_as_chr <- as.character(zip)
    pass <- 
      is_okay_type(zip_as_chr) && 
      !is_na_or_empty(zip_as_chr) && 
      length(unlist(strsplit(zip_as_chr, "*"))) == 5 && 
      zip_as_chr %in% valid_zips$valid_zips
    if(quiet) return(pass)
    msg <- paste0("`zip` ", quotify(zip), " not found among valid zip codes")
    if(zip_was_num) {
      msg <- paste0(
        "`zip` was entered as a number, which can cause problems ",
        "(e.g., zips that start with a 0), and ",
        msg
      )
    }
    if(pass) TRUE else msg
  }
  
  # Defining it this way so it can be used across package
  sdi_not_available_message <- "SDI is not available for this zip code."
  
  is_zip_with_sdi_data <- function(zip, quiet = TRUE) {
    zip <- as.character(zip)
    pass <- is_valid_zip(zip) && !is.na(get_sdi(zip))
    if(quiet) return(pass)
    if(pass) TRUE else sdi_not_available_message
  }
}

# {Model-related helper fxs} ----
select_model <- function(hba1c, uacr, zip) {
  ifelse(
    !is_valid_hba1c(hba1c) &&
      !is_valid_uacr(uacr) &&
      !is_zip_with_sdi_data(zip), 
    "base",
    ifelse(
      !is_valid_hba1c(hba1c) && 
        is_valid_uacr(uacr) &&
        !is_zip_with_sdi_data(zip), 
      "uacr",
      ifelse(
        is_valid_hba1c(hba1c) && 
          !is_valid_uacr(uacr) && 
          !is_zip_with_sdi_data(zip), 
        "hba1c",
        ifelse(
          !is_valid_hba1c(hba1c) && 
            !is_valid_uacr(uacr) && 
            is_zip_with_sdi_data(zip), 
          "sdi",
          "full"
        )
      )
    )
  )
}

stylize_model_to_run <- function(model, capital_base = TRUE) {
  
  stopifnot(model %in% c("base", "hba1c", "uacr", "sdi", "full"))
  stopifnot(isTRUE(capital_base) || isFALSE(capital_base))
  
  res <- ifelse(
    model == "base", 
    "Base model",
    paste0(
      "Base model adding ",
      ifelse(
        model == "hba1c", 
        "HbA1c",
        ifelse(
          model == "full",
          "HbA1c, SDI, and UACR (also referred to as the full model)",
          toupper(model)
        )
      )
    )
  )
  
  if(!capital_base) res <- gsub("Base", "base", res, fixed = TRUE)
  
  res
}