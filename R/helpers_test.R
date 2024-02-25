# Helper fx that uses default values if not otherwise specified
# (this helps decrease the amount of code needed to test specific
# aspects of the code, e.g., errors for inputs)
# 
# The partials herein aren't a "true" partial like seen with {purrr}, as can
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
    quiet = FALSE
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
    quiet = quiet
  )
}

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
