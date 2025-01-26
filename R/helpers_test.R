# Helper fx that uses default values if not otherwise specified
# (this helps decrease the amount of code needed to test specific
# aspects of the code, e.g., errors for inputs)
# 
# The partials herein aren't a "true" partial like seen with `purrr`, as can
# still specify args already specified by the defaults in the function,
# but this allows an easier call of the function with some defaults
# already specified for testing specific portions/functionality
estimate_risk_partial <- function(
    age = 50,
    sex = "female",
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    hba1c = NULL,
    uacr = NULL,
    zip = NULL,
    model = NULL,
    time = "both",
    chol_unit = "mg/dL",
    optional_strict = FALSE,
    quiet = FALSE,
    collapse = FALSE
) {
  estimate_risk(
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    egfr = egfr,
    bmi = bmi,
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = model,
    time = time,
    chol_unit = chol_unit,
    optional_strict = optional_strict,
    quiet = quiet,
    collapse = collapse
  )
}

est_risk_partial <- estimate_risk_partial

# `check_equations_partial()` doesn't take `sex` as an arg (in contrast
# to `estimate_risk_partial()`)
check_equations_partial <- function(
    age = 50,
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    hba1c = NULL,
    uacr = NULL,
    zip = NULL,
    model = NULL,
    time = "both",
    chol_unit = "mg/dL",
    optional_strict = FALSE,
    quiet = FALSE
) {
  check_equations(
    age = age,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    egfr = egfr,
    bmi = bmi,
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = model,
    time = time,
    chol_unit = chol_unit,
    optional_strict = optional_strict,
    quiet = quiet
  )
}

# Helper fx to test models for both sexes and print results
check_equations <- function(
    age,
    total_c,
    hdl_c,
    sbp,
    dm,
    smoking,
    bmi,
    egfr,
    bp_tx,
    statin,
    uacr = NULL,
    hba1c = NULL,
    zip = NULL,
    model = NULL,
    time = "both",
    chol_unit = "mg/dL",
    optional_strict = FALSE,
    quiet = FALSE
) {
  
  est <- lapply (
    c(female = "female", male = "male"),
    function(x) {
      estimate_risk(
        age = age,
        sex = x,
        sbp = sbp,
        bp_tx = bp_tx,
        total_c = total_c,
        hdl_c = hdl_c,
        statin = statin,
        dm = dm,
        smoking = smoking,
        egfr = egfr,
        bmi = bmi,
        hba1c = hba1c,
        uacr = uacr,
        zip = zip,
        model = model,
        time = time,
        chol_unit = chol_unit,
        optional_strict = optional_strict,
        quiet = quiet
      )
    }
  )
  
  format_pct_and_bind <- function(x) x %>% percentify() %>% dplyr::bind_rows()
  
  return_list <- function(est, time) {
    if(time == "both") {
      list(
        total_cvd = c(
          female_10yr = est$female[["risk_est_10yr"]][["total_cvd"]],
          male_10yr = est$male[["risk_est_10yr"]][["total_cvd"]],
          female_30yr = est$female[["risk_est_30yr"]][["total_cvd"]],
          male_30yr = est$male[["risk_est_30yr"]][["total_cvd"]]
        ) %>% format_pct_and_bind(),
        ascvd = c(
          female_10yr = est$female[["risk_est_10yr"]][["ascvd"]],
          male_10yr = est$male[["risk_est_10yr"]][["ascvd"]],
          female_30yr = est$female[["risk_est_30yr"]][["ascvd"]],
          male_30yr = est$male[["risk_est_30yr"]][["ascvd"]]
        ) %>% format_pct_and_bind(),
        heart_failure = c(
          female_10yr = est$female[["risk_est_10yr"]][["heart_failure"]],
          male_10yr = est$male[["risk_est_10yr"]][["heart_failure"]],
          female_30yr = est$female[["risk_est_30yr"]][["heart_failure"]],
          male_30yr = est$male[["risk_est_30yr"]][["heart_failure"]]
        ) %>% format_pct_and_bind(),
        chd = c(
          female_10yr = est$female[["risk_est_10yr"]][["chd"]],
          male_10yr = est$male[["risk_est_10yr"]][["chd"]],
          female_30yr = est$female[["risk_est_30yr"]][["chd"]],
          male_30yr = est$male[["risk_est_30yr"]][["chd"]]
        ) %>% format_pct_and_bind(),
        stroke = c(
          female_10yr = est$female[["risk_est_10yr"]][["stroke"]],
          male_10yr = est$male[["risk_est_10yr"]][["stroke"]],
          female_30yr = est$female[["risk_est_30yr"]][["stroke"]],
          male_30yr = est$male[["risk_est_30yr"]][["stroke"]]
        ) %>% format_pct_and_bind(),
        model = c(
          female_10yr = est$female[["risk_est_10yr"]][["model"]],
          male_10yr = est$male[["risk_est_10yr"]][["model"]],
          female_30yr = est$female[["risk_est_30yr"]][["model"]],
          male_30yr = est$male[["risk_est_30yr"]][["model"]]
        ),
        over_years = c(
          female_10yr = est$female[["risk_est_10yr"]][["over_years"]],
          male_10yr = est$male[["risk_est_10yr"]][["over_years"]],
          female_30yr = est$female[["risk_est_30yr"]][["over_years"]],
          male_30yr = est$male[["risk_est_30yr"]][["over_years"]]
        ),
        input_problems = list(
          female_10yr = est$female[["risk_est_10yr"]][["input_problems"]],
          male_10yr = est$male[["risk_est_10yr"]][["input_problems"]],
          female_30yr = est$female[["risk_est_30yr"]][["input_problems"]],
          male_30yr = est$male[["risk_est_30yr"]][["input_problems"]]
        )
      )
    } else {
      list(
        total_cvd = c(
          female = est$female[["total_cvd"]],
          male = est$male[["total_cvd"]]
        ) %>% format_pct_and_bind(),
        ascvd = c(
          female = est$female[["ascvd"]],
          male = est$male[["ascvd"]]
        ) %>% format_pct_and_bind(),
        heart_failure = c(
          female = est$female[["heart_failure"]],
          male = est$male[["heart_failure"]]
        ) %>% format_pct_and_bind(),
        chd = c(
          female = est$female[["chd"]],
          male = est$male[["chd"]]
        ) %>% format_pct_and_bind(),
        stroke = c(
          female = est$female[["stroke"]],
          male = est$male[["stroke"]]
        ) %>% format_pct_and_bind(),
        model = c(
          female = est$female[["model"]],
          male = est$male[["model"]]
        ),
        over_years = c(
          female = est$female[["over_years"]],
          male = est$male[["over_years"]]
        ),
        input_problems = list(
          female = est$female[["input_problems"]],
          male = est$male[["input_problems"]]
        )
      )
    }
  }
  
  return_list(est, time)
}

# Helper fxs to get a set of invalid vals for testing errors and warnings
test_vals_basic <- function(lower = 0, upper = 8675309) {
  
  res <- list(
    lower = lower, 
    upper = upper, 
    potato = "potato", 
    `FALSE` = FALSE, 
    `NA` = NA, 
    `NULL` = NULL
  )
  
  names(res)[grepl("lower", names(res))] <- lower
  names(res)[grepl("upper", names(res))] <- upper
  
  res
}

# Helper fx to get a set of invalid vals for testing errors and warnings
test_vals_extended <- function(lower = 0, upper = 8675309) {
  list(
    `dataframe_1` = data.frame(age = 50),
    `dataframe_gt_1` = data.frame(alpha = 1, bravo = TRUE, charlie = "cat"),
    `list_1` = list(age = 50),
    `list` = list(alpha = 1, bravo = TRUE, charlie = "cat"),
    `matrix_1` = matrix(50),
    `matrix_gt_1` = matrix(1:10, nrow = 2, ncol = 5),
    `vec_gt_1` = c(lower, upper)
  )
}

# Helper fx to reduce redundant code when checking errors and warnings
nested_lapply <- function(var_to_test, 
                          lower = 0,
                          upper = 8675309, 
                          chol_unit = NULL,
                          test_vals = c("wrong_basic", "wrong_extended")) {
  
  test_vals <- match.arg(test_vals)
  test_vals <- if(test_vals == "wrong_basic") test_vals_basic else test_vals_extended
  
  if(var_to_test == "chol_unit") {
    args_to_splice <- eval(
      substitute(
        alist(chol_unit = x, quiet = y)
      )
    )
  } else {
    args_to_splice <- eval(
      substitute(
        alist(var_to_test = x, chol_unit = chol_unit, quiet = y)
      )
    )
    
    names(args_to_splice)[[1]] <- var_to_test
    
    if(is.null(chol_unit)) args_to_splice[["chol_unit"]] <- NULL
  }
  
  # Now use `bquote()` and `eval()` to compose and eval the nested lapply
  eval(
    bquote(
      lapply(
        test_vals(.(lower), .(upper)), 
        function(x) {
          lapply(
            c(not_quiet = FALSE, quiet = TRUE), 
            function(y) check_equations_partial(..(args_to_splice), time = "10yr")
          )
        }
      ),
      splice = TRUE
    )
  )
}

tibble_of_nas <- function(input_probs = NULL) {
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

# Helper fx to make data (for testing use of a data.frame with the package)
make_dat <- function(n = 100, add_time_and_model = TRUE, add_other_behavior_vars = FALSE) {
  dat <- dplyr::tibble(
    # Note `preventr_id` column here; will use to re-associate the results with
    # the data.frame later for testing
    preventr_id = seq_len(n),
    age = sample(30:79, n, replace = TRUE),
    sex = sample(c("f", "m"), n, replace = TRUE),
    sbp = sample(90:180, n, replace = TRUE),
    bp_tx = sample(c(TRUE, FALSE), n, replace = TRUE),
    total_c = sample(130:320, n, replace = TRUE),
    hdl_c = sample(20:100, n, replace = TRUE),
    statin = sample(c(TRUE, FALSE), n, replace = TRUE),
    dm = sample(c(TRUE, FALSE), n, replace = TRUE),
    smoking = sample(c(TRUE, FALSE), n, replace = TRUE),
    egfr = sample(15:140, n, replace = TRUE),
    bmi = sample(seq(18.5, 39.9, 0.1), n, replace = TRUE),
    hba1c = sample(
      # Sampling this way to give HbA1c and NA_real_ an
      # equal chance of being recorded for the sampled data
      c(
        seq(4.5, 15, 0.1), 
        rep(NA_real_, length(seq(4.5, 15, 0.1)))
      ), 
      n, 
      replace = TRUE
    ),
    uacr = sample(
      # See note for HbA1c re: why sampling this way
      c(
        seq(0.1, 25000, 0.1), 
        rep(NA_real_, length(seq(0.1, 25000, 0.1)))
      ), 
      n, 
      replace = TRUE
    ),
    zip = sample(
      # See note for HbA1c re: why sampling this way
      c(
        valid_zips$valid_zips, 
        rep(NA_character_, length(valid_zips$valid_zips))
      ), 
      n, 
      replace = TRUE
    )
  )
  
  if(add_time_and_model) {
    dat <- dat %>% 
      dplyr::mutate(
        model = lapply(
          seq_len(n),
          function(x) {
            if(x %% 2 == 0) {
              NA
            } else { 
              list(
                main_model = NULL, 
                other_models = sample(c("pce_both", "pce_rev", "pce_orig"), 1),
                race_eth = sample(c("b", "w", "o"), 1)
              )
            }
          }
        ),
        time = sample(c("10yr", "30yr", "both"), n, replace = TRUE)
      )
  }
  
  if(add_other_behavior_vars) {
    dat <- dat %>% 
      dplyr::mutate(
        chol_unit = sample(c("mg/dL", "mmol/L"), n, replace = TRUE),
        optional_strict = sample(c(TRUE, FALSE), n, replace = TRUE),
        quiet = sample(c(TRUE, FALSE), n, replace = TRUE)
      )
  }
  
  dat
}

make_mini_dat <- function(var, n = 10) {
  dat <- make_dat(n, add_other_behavior_vars = TRUE)
  optional_vars_to_remove <- 
    setdiff(c("time", "model", "chol_unit", "quiet", "optional_strict"), var)
  dat <- dat[, !names(dat) %in% optional_vars_to_remove]
  # Make sure var of interest is not the same for all rows
  while(length(unique(dat[[var]])) == 1) {
    dat <- make_dat(n, add_other_behavior_vars = TRUE)
  }
  # Make sure age is not a problem for the PCEs or 30-year estimation 
  # (not testing that here)
  dat %>% 
    dplyr::mutate(
      age = dplyr::case_when(
        age < 40 ~ 40, 
        age > 59 ~ 59,
        .default = age
      )
    )
}

# Helper fx to test the package's functionality with a data.frame
do_lapply_for_use_dat_add_to_dat <- function(
    dat,
    add_to_dat,
    age = quote(age),
    sex = quote(sex),
    sbp = quote(sbp),
    bp_tx = quote(bp_tx),
    total_c = quote(total_c),
    hdl_c = quote(hdl_c),
    statin = quote(statin),
    dm = quote(dm),
    smoking = quote(smoking),
    egfr = quote(egfr),
    bmi = quote(bmi),
    hba1c = quote(hba1c),
    uacr = quote(uacr),
    zip = quote(zip),
    model = quote(model),
    time = quote(time),
    chol_unit = quote(chol_unit),
    optional_strict = quote(optional_strict),
    quiet = quote(quiet)
) { 
  
  mini_cl <- bquote(
    est_risk(
      age = .(age), 
      sex = .(sex),
      sbp = .(sbp),
      bp_tx = .(bp_tx),
      total_c = .(total_c),
      hdl_c = .(hdl_c),
      statin = .(statin),
      dm = .(dm),
      smoking = .(smoking),
      egfr = .(egfr),
      bmi = .(bmi),
      hba1c = .(hba1c),
      uacr = .(uacr),
      zip = .(zip),
      model = unlist(.(model), recursive = FALSE),
      time = .(time),
      quiet = .(quiet),
      collapse = TRUE
    ) 
  )
  
  res <- lapply(
    dat[["preventr_id"]], 
    function(x) {
      with(
        dplyr::filter(dat, preventr_id == x),
        eval(mini_cl)
      ) %>%
        dplyr::mutate(preventr_id = x)
    }
  ) %>%
    dplyr::bind_rows() %>%
    dplyr::relocate(preventr_id)
  
  return(if(add_to_dat) add_to_dat(dat, res) else res)
}

# Helper fx to test substitution of col names when using a data.frame
test_diff_col_name <- function(old_name_quoted, 
                               new_name_quoted,
                               test_what = c("valid_sub", "invalid_sub"),
                               eval = TRUE) {
  
  stopifnot(test_what %in% c("valid_sub", "invalid_sub"))
  
  exprs_lapply <- 
    expression(
      dat,
      add_to_dat = TRUE,
      old_name_arg = quote(new_name_arg), 
      quiet = TRUE
    )
  
  # Note use of `substitute()` for the lapply expression, as need `quote()` part
  # of `quote(col_name)` to be passed into arg
  exprs_lapply[["old_name_arg"]] <- substitute(new_name_quoted)
  names(exprs_lapply)[which(names(exprs_lapply) == "old_name_arg")] <- 
    as.character(old_name_quoted)
  
  exprs_est_risk <- 
    expression(
      use_dat = dat,
      old_name_arg = new_name_arg, 
      add_to_dat = TRUE, 
      quiet = TRUE,
      progress = FALSE
    )
  
  # Note *no* use of `substitute()` for the est_risk expression, as just want
  # the name of the col
  exprs_est_risk[["old_name_arg"]] <- new_name_quoted
  names(exprs_est_risk)[which(names(exprs_est_risk) == "old_name_arg")] <- 
    as.character(old_name_quoted)
  
  if(test_what == "invalid_sub") {
    exprs_lapply[["quiet"]] <- exprs_est_risk[["quiet"]] <- FALSE
  }
  
  if(test_what == "valid_sub") {
    mini_cl <- bquote(
      {
        dat <- make_dat(5) %>% 
          dplyr::mutate(age = dplyr::case_when(age > 59 ~ 59, .default = age))
        
        names(dat)[which(names(dat) == .(as.character(old_name_quoted)))] <- 
          .(as.character(new_name_quoted))
        
        expect_identical(
          do_lapply_for_use_dat_add_to_dat(..(exprs_lapply)),
          est_risk(..(exprs_est_risk))
        )
      },
      splice = TRUE
    )
  } 
  
  if(test_what == "invalid_sub") {
    mini_cl <- bquote(
      {
        dat <- make_dat(5, add_time_and_model = FALSE) %>% 
          dplyr::mutate(age = dplyr::case_when(age > 59 ~ 59, .default = age))
        
        expected_msg <- paste0(
          "`",
          .(as.character(old_name_quoted)), 
          "` ",
          "entered as the invalid column name ",
          "`",
          .(as.character(new_name_quoted)),
          "`"
        )
        
        expect_message(
          res <- est_risk(..(exprs_est_risk), optional_strict = TRUE), 
          expected_msg
        )
        expect_equal(count_nas_from_res(res), 50)
        
      },
      splice = TRUE
    )
  }
  
  if(eval) eval(mini_cl, envir = parent.frame()) else mini_cl
}

test_pce_models <- function(age = 50,
                            sex = "female",
                            race_eth = "black",
                            dm = 0,
                            smoking = 1,
                            total_c = 200,
                            hdl_c = 40,
                            sbp = 150,
                            bp_tx = 1,
                            chol_unit = "mg/dL") {
  pce_model_cl <- quote(
    pce_model(
      age, sex, race_eth, dm, smoking, 
      total_c, hdl_c, sbp, bp_tx, chol_unit, quiet = TRUE
    )
  )
  pce_rev_model_cl <- pce_model_cl
  pce_rev_model_cl[[1]] <- quote(pce_rev_model)
  c(eval(pce_model_cl), eval(pce_rev_model_cl))
}

count_nas_from_res <- function(res) {
  sum(
    is.na(
      c(
        res[["total_cvd"]], res[["ascvd"]], res[["heart_failure"]], 
        res[["chd"]], res[["stroke"]]
      )
    )
  )
}

# This is to test centering, etc. for preparation of terms for use in the models 
make_prep_dat <- function(age = 65,
                          sex = "female",
                          sbp = 160,
                          bp_tx = 1,
                          total_c = 200,
                          hdl_c = 50,
                          statin = 0,
                          dm = 1,
                          smoking = 0,
                          egfr = 90,
                          bmi = 35,
                          hba1c = 8.5,
                          uacr = 40,
                          zip = "10001") {
  data.frame(
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    egfr = egfr,
    bmi = bmi,
    hba1c = hba1c,
    uacr = uacr,
    zip = zip
  )
}