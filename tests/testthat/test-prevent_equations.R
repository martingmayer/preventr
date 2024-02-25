# Do some basic tests first, then test more fine-tuned/aggressively via snapshots
test_that("Base model works, female", {
  expect_equal(
    estimate_risk_partial(quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.147, 
        ascvd = 0.092, 
        heart_failure = 0.081,
        chd = 0.044, 
        stroke = 0.054, 
        model = "base", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.53, 
        ascvd = 0.354, 
        heart_failure = 0.39,
        chd = 0.198, 
        stroke = 0.221, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("HbA1c model works, female", {
  expect_equal(
    estimate_risk_partial(hba1c = 9.2, quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.165, 
        ascvd = 0.103, 
        heart_failure = 0.107,
        chd = 0.055, 
        stroke = 0.053, 
        model = "hba1c", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.541, 
        ascvd = 0.356, 
        heart_failure = 0.449,
        chd = 0.219, 
        stroke = 0.2, 
        model = "hba1c", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("UACR model works, female", {
  expect_equal(
    estimate_risk_partial(uacr = 92, quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.181, 
        ascvd = 0.111, 
        heart_failure = 0.105,
        chd = 0.055, 
        stroke = 0.065, 
        model = "uacr", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.565, 
        ascvd = 0.381, 
        heart_failure = 0.437,
        chd = 0.22, 
        stroke = 0.241, 
        model = "uacr", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("SDI model works, female", {
  expect_equal(
    estimate_risk_partial(zip = "14738", quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.127, 
        ascvd = 0.08, 
        heart_failure = 0.07,
        chd = 0.038, 
        stroke = 0.047, 
        model = "sdi", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.485, 
        ascvd = 0.322, 
        heart_failure = 0.358,
        chd = 0.179, 
        stroke = 0.202, 
        model = "sdi", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("Full model works, female", {
  expect_equal(
    estimate_risk_partial(hba1c = 9.2, uacr = 92, zip = "14738", quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.174, 
        ascvd = 0.105, 
        heart_failure = 0.114,
        chd = 0.056, 
        stroke = 0.056, 
        model = "full", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.534, 
        ascvd = 0.348, 
        heart_failure = 0.443,
        chd = 0.213, 
        stroke = 0.204, 
        model = "full", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("Base model works, male", {
  expect_equal(
    estimate_risk_partial(sex = "male", quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.163, 
        ascvd = 0.102, 
        heart_failure = 0.106,
        chd = 0.056, 
        stroke = 0.052, 
        model = "base", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.514, 
        ascvd = 0.349, 
        heart_failure = 0.424,
        chd = 0.216, 
        stroke = 0.197, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("HbA1c model works, male", {
  expect_equal(
    estimate_risk_partial(sex = "male", hba1c = 9.2, quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.187, 
        ascvd = 0.112, 
        heart_failure = 0.13,
        chd = 0.063, 
        stroke = 0.056, 
        model = "hba1c", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.524, 
        ascvd = 0.34, 
        heart_failure = 0.457,
        chd = 0.211, 
        stroke = 0.188, 
        model = "hba1c", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("UACR model works, male", {
  expect_equal(
    estimate_risk_partial(sex = "male", uacr = 92, quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.195, 
        ascvd = 0.123, 
        heart_failure = 0.13,
        chd = 0.066, 
        stroke = 0.063, 
        model = "uacr", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.535, 
        ascvd = 0.368, 
        heart_failure = 0.448,
        chd = 0.227, 
        stroke = 0.213, 
        model = "uacr", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("SDI model works, male", {
  expect_equal(
    estimate_risk_partial(sex = "male", zip = "14738", quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.143, 
        ascvd = 0.088, 
        heart_failure = 0.089,
        chd = 0.049, 
        stroke = 0.043, 
        model = "sdi", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.48, 
        ascvd = 0.317, 
        heart_failure = 0.384,
        chd = 0.199, 
        stroke = 0.171, 
        model = "sdi", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("Full model works, male", {
  expect_equal(
    estimate_risk_partial(sex = "male", hba1c = 9.2, uacr = 92, zip = "14738", quiet = TRUE),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = 0.191, 
        ascvd = 0.112, 
        heart_failure = 0.131,
        chd = 0.068, 
        stroke = 0.052, 
        model = "full", 
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.513, 
        ascvd = 0.326, 
        heart_failure = 0.438,
        chd = 0.216, 
        stroke = 0.167, 
        model = "full", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
})

test_that("Age validation works", {
  expect_snapshot(nested_lapply("age", 29, 80))
})

test_that("Age validation works, extra wrong" , {
  expect_snapshot(nested_lapply("age", test_vals = "wrong_extended"))
})

# Because helper fxs test both sexes (and don't accept `sex` as an arg),
# need to test this input a bit differently
test_that("Sex validation works", {
  check_equations_partial_sans_sex <- function(sex, quiet) {
    res <- estimate_risk(
      age = 50,
      sex = sex,
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
      quiet = quiet
    )
    
    list(
      res_10yr = res[["risk_est_10yr"]] |> dplyr::select(-input_problems),
      input_probs_10yr = res[["risk_est_10yr"]][["input_problems"]],
      res_30yr = res[["risk_est_30yr"]] |> dplyr::select(-input_problems),
      input_probs_10yr = res[["risk_est_30yr"]][["input_problems"]]
    )
  }
  
  # Chatty version
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex(x, FALSE)
    )
  )
  
  # Quiet version
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex(x, TRUE)
    )
  )
  
  # Chatty version, extra wrong
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex(x, FALSE)
    )
  )
  
  # Quiet version, extra wrong
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex(x, TRUE)
    )
  )
})

test_that("SBP validation works", {
  expect_snapshot(nested_lapply("sbp", 89, 181))
})

test_that("SBP validation works, extra wrong", {
  expect_snapshot(nested_lapply("sbp", test_vals = "wrong_extended"))
})

test_that("BP treatment validation works", {
  # Expect instance of testing 0 and FALSE (see `test_vals_basic()`)
  # to yield (identical) results given those are valid inputs in this case
  expect_snapshot(nested_lapply("bp_tx"))
})

test_that("BP treatment validation works, extra wrong", {
  expect_snapshot(nested_lapply("bp_tx", test_vals = "wrong_extended"))
})

test_that("Total cholesterol validation works", {
  expect_snapshot(nested_lapply("total_c", 129, 321, "mg/dL"))
  # For the following, expect additional problems with HDL-C given
  # default set to 45, but that's based on mg/dL, whereas the following
  # test uses mmol/L
  expect_snapshot(nested_lapply("total_c", 3.3, 8.3, "mmol/L"))
})

test_that("Total cholesterol validation works, extra wrong", {
  expect_snapshot(nested_lapply("total_c", test_vals = "wrong_extended"))
})

test_that("HDL-C validation works", {
  expect_snapshot(nested_lapply("hdl_c", 19, 101, "mg/dL"))
  # For the following, expect additional problems with total cholesterol given
  # default set to 200, but that's based on mg/dL, whereas the following
  # test uses mmol/L
  expect_snapshot(nested_lapply("hdl_c", 0.5, 2.6, "mmol/L"))
})

test_that("HDL-C validation works, extra wrong", {
  expect_snapshot(nested_lapply("hdl_c", test_vals = "wrong_extended"))
})

test_that("Statin validation works", {
  # Expect instance of testing 0 and FALSE (see `test_vals_basic()`)
  # to yield (identical) results given those are valid inputs in this case
  expect_snapshot(nested_lapply("statin"))
})

test_that("Statin validation works, extra wrong", {
  expect_snapshot(nested_lapply("statin", test_vals = "wrong_extended"))
})

test_that("Diabetes mellitus validation works", {
  # Expect instance of testing 0 and FALSE (see `test_vals_basic()`)
  # to yield (identical) results given those are valid inputs in this case
  expect_snapshot(nested_lapply("dm"))
})

test_that("Diabetes mellitus validation works, extra wrong", {
  expect_snapshot(nested_lapply("dm", test_vals = "wrong_extended"))
})

test_that("Smoking validation works", {
  # Expect instance of testing 0 and FALSE (see `test_vals_basic()`)
  # to yield (identical) results given those are valid inputs in this case
  expect_snapshot(nested_lapply("smoking"))
})

test_that("Smoking validation works, extra wrong", {
  expect_snapshot(nested_lapply("smoking", test_vals = "wrong_extended"))
})

test_that("eGFR validation works", {
  expect_snapshot(nested_lapply("egfr", 14, 141))
})

test_that("eGFR validation works, extra wrong", {
  expect_snapshot(nested_lapply("egfr", test_vals = "wrong_extended"))
})

test_that("BMI validation works", {
  expect_snapshot(nested_lapply("bmi", 18.4, 40))
})

test_that("BMI validation works, extra wrong", {
  expect_snapshot(nested_lapply("bmi", test_vals = "wrong_extended"))
})

# In contrast to when there are problems with required inputs,
# expect problems with optional predictors to still yield results
# (in this case, from the base model), with notification to the user
# about the problems with the optional inputs
# 
# Also, because optional variables are permitted to be empty, 
# any input that is functionally empty or missing -- such as `NULL`, 
# `numeric(0)`, `NA`, etc. -- will not be considered problematic and thus not 
# populate in the `input_problems` column
test_that("HbA1c validation works", {
  expect_snapshot(nested_lapply("hba1c", 4.4, 15.1))
})

test_that("HbA1c validation works, extra wrong", {
  expect_snapshot(nested_lapply("hba1c", test_vals = "wrong_extended"))
})

test_that("UACR validation works", {
  expect_snapshot(nested_lapply("uacr", 0.09, 25000.1))
})

test_that("UACR validation works, extra wrong", {
  expect_snapshot(nested_lapply("uacr", test_vals = "wrong_extended"))
})

test_that("Zip code validation works", {
  expect_snapshot(nested_lapply("zip"))
})

test_that("Zip code validation works, extra wrong", {
  expect_snapshot(nested_lapply("zip", test_vals = "wrong_extended"))
})

test_that("Model validation works", {
  expect_snapshot(nested_lapply("model"))
})

test_that("Model validation works, extra wrong", {
  expect_snapshot(nested_lapply("model", test_vals = "wrong_extended"))
})

# Because helper fxs don't expect `time` as an arg, test `time` a bit differently
test_that("Time validation works", {
  check_equations_partial_sans_sex_and_time <- function(sex, time, quiet) {
    res <- estimate_risk(
      age = 50,
      sex = sex,
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
      time = time,
      chol_unit = "mg/dL",
      quiet = quiet
    )
    
    # Because only one NA tibble will be returned, index accordingly
    # (vs. time-specific indexing, when two tibbles are returned, one
    # for each time horizon)
    list(
      res = res |> dplyr::select(-input_problems),
      input_probs = res[["input_problems"]]
    )
  }
  
  # Chatty versions, basic
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex_and_time("f", x, FALSE)
    )
  )
  
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex_and_time("m", x, FALSE)
    )
  )
  
  # Quiet versions, basic
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex_and_time("f", x, TRUE)
    )
  )
  
  expect_snapshot(
    lapply(
      test_vals_basic(), 
      function(x) check_equations_partial_sans_sex_and_time("m", x, TRUE)
    )
  )
  
  # Chatty versions, extended
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex_and_time("f", x, FALSE)
    )
  )
  
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex_and_time("m", x, FALSE)
    )
  )
  
  # Quiet versions, basic
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex_and_time("f", x, TRUE)
    )
  )
  
  expect_snapshot(
    lapply(
      test_vals_extended(), 
      function(x) check_equations_partial_sans_sex_and_time("m", x, TRUE)
    )
  )
})

test_that("Cholesterol unit validation works", {
  expect_snapshot(nested_lapply("chol_unit"))
})

test_that("Cholesterol unit validation works, extra wrong", {
  expect_snapshot(nested_lapply("chol_unit", test_vals = "wrong_extended"))
})

# This is to test the centering, etc. to prep terms
# for use in the models
dat <- data.frame(
  age = 65,
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
  zip = "10001"
)

test_that("Preparation of terms works - Basic", {
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No BP tx", {
  dat$bp_tx <- FALSE
  
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No statin", {
  dat$statin <- FALSE
  
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No DM", {
  dat$dm <- FALSE
  
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - Missing optional predictors", {
  # Test missing optional predictors
  dat$dm  <- TRUE
  dat$hba1c <- NA
  dat$uacr <- NA
  dat$zip <- NA
  
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - Other SDI categories", {
  # Test zip where SDI from 4-6
  dat$zip <- "44221"
  
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
  
  # Test zip where SDI from 1-3
  dat$zip <- "01005"
  
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Base model 10-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = TRUE,
      smoking = 0,
      bmi = 35,
      egfr = 90,
      bp_tx = 1,
      statin = FALSE,
      time = "10yr"
    )
  )
})

test_that("UACR model 10-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = 1,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = 0,
      uacr = 40,
      time = "10yr"
    )
  )
})

test_that("HbA1c model 10-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = 1,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = 0,
      hba1c = 7.5,
      time = "10yr"
    )
  )
})

test_that("Zip model 10-year risks give expected results & SDI lookup works", {
  sdi_10yr_partial <- function(zip) {
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = TRUE,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = FALSE,
      zip = zip,
      time = "10yr"
    )
  }
  
  # SDI of 3
  expect_snapshot(get_sdi("03883"))
  expect_snapshot(sdi_10yr_partial(zip = "03883")) 
  # SDI of 5
  expect_snapshot(get_sdi("49544"))
  expect_snapshot(sdi_10yr_partial(zip = "49544"))
  # SDI of 10
  expect_snapshot(get_sdi("49507")) 
  expect_snapshot(sdi_10yr_partial(zip = "49507"))
})

test_that("Full model 10-year risks give expected results", {
  expect_snapshot(
    check_equations_partial(
      age = 75,
      statin = TRUE,
      dm = 0,
      smoking = 1,
      hba1c = 7.5,
      uacr = 40,
      zip = "49507",
      time = "10yr"
    )
  )
})

test_that("Time as character vs. numeric works: Base model, 10-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = "10yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = "10",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = 10,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("base", chr_version_1$model[["female"]])
  expect_identical("base", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: HbA1c model, 10-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = "10yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = "10",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = 10,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("hba1c", chr_version_1$model[["female"]])
  expect_identical("hba1c", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: UACR model, 10-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = "10yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = "10",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = 10,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("uacr", chr_version_1$model[["female"]])
  expect_identical("uacr", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: SDI model, 10-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = "10yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = "10",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = 10,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("sdi", chr_version_1$model[["female"]])
  expect_identical("sdi", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: Full model, 10-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = "10yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = "10",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = 10,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("full", chr_version_1$model[["female"]])
  expect_identical("full", chr_version_1$model[["male"]])
})

test_that("Base model 30-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = TRUE,
      smoking = 0,
      bmi = 35,
      egfr = 90,
      bp_tx = 1,
      statin = FALSE,
      time = "30yr"
    )
  )
})

test_that("UACR model 30-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = 1,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = 0,
      uacr = 40,
      time = "30yr"
    )
  )
})

test_that("HbA1c model 30-year risks give expected results", {
  expect_snapshot(
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = 1,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = 0,
      hba1c = 7.5,
      time = "30yr"
    )
  )
})

test_that("Zip model 30-year risks give expected results & SDI lookup works", {
  sdi_30yr_partial <- function(zip) {
    check_equations(
      age = 50,
      total_c = 200,
      hdl_c = 45,
      sbp = 160,
      # Deliberately use variations of TRUE/1 and FALSE/0
      dm = TRUE,
      smoking = FALSE,
      bmi = 35,
      egfr = 90,
      bp_tx = TRUE,
      statin = FALSE,
      zip = zip,
      time = "30yr"
    )
  }
  
  # SDI of 3
  expect_snapshot(get_sdi("03883"))
  expect_snapshot(sdi_30yr_partial(zip = "03883")) 
  # SDI of 5
  expect_snapshot(get_sdi("49544"))
  expect_snapshot(sdi_30yr_partial(zip = "49544"))
  # SDI of 10
  expect_snapshot(get_sdi("49507")) 
  expect_snapshot(sdi_30yr_partial(zip = "49507"))
})

test_that("Full model 30-year risks give expected results", {
  expect_snapshot(
    check_equations_partial(
      age = 75,
      statin = TRUE,
      dm = 0,
      smoking = 1,
      hba1c = 7.5,
      uacr = 40,
      zip = "49507",
      time = "30yr"
    )
  )
})

test_that("Time as character vs. numeric works: Base model, 30-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = "30yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = "30",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 67,
    statin = TRUE,
    dm = 0,
    smoking = 1,
    time = 30,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("base", chr_version_1$model[["female"]])
  expect_identical("base", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: HbA1c model, 30-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = "30yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = "30",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 61,
    statin = TRUE,
    smoking = 1,
    hba1c = 9.9,
    time = 30,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("hba1c", chr_version_1$model[["female"]])
  expect_identical("hba1c", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: UACR model, 30-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = "30yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = "30",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    uacr = 40,
    time = 30,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("uacr", chr_version_1$model[["female"]])
  expect_identical("uacr", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: SDI model, 30-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = "30yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = "30",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    zip = "49507",
    time = 30,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("sdi", chr_version_1$model[["female"]])
  expect_identical("sdi", chr_version_1$model[["male"]])
})

test_that("Time as character vs. numeric works: Full model, 30-year", {
  
  chr_version_1 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = "30yr",
    quiet = TRUE
  )
  
  chr_version_2 <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = "30",
    quiet = TRUE
  )
  
  num_version <- check_equations_partial(
    age = 75,
    statin = TRUE,
    smoking = 1,
    hba1c = 7.5,
    uacr = 40,
    zip = "49507",
    time = 30,
    quiet = TRUE
  )
  
  expect_identical(chr_version_1, num_version)
  expect_identical(chr_version_1, chr_version_2)
  expect_identical("full", chr_version_1$model[["female"]])
  expect_identical("full", chr_version_1$model[["male"]])
})

test_that("Cholesterol unit abbreviation works", {
  
  mg_full <- check_equations_partial(chol_unit = "mg/dL", quiet = TRUE)
  mg_abbrev <- check_equations_partial(chol_unit = "mg", quiet = TRUE)
  
  mmol_abbrev <- check_equations_partial(
    chol_unit = "mmol", 
    total_c = 4,
    hdl_c = 1,
    quiet = TRUE
  )
  
  mmol_full <- check_equations_partial(
    chol_unit = "mmol/L", 
    total_c = 4,
    hdl_c = 1,
    quiet = TRUE
  )
  
  expect_identical(mg_full, mg_abbrev)
  expect_identical(mmol_abbrev, mmol_full)
})

test_that("Optional predictors are handled correctly, one optional predictor is valid", {
  
  # ... in terms of model selection and results
  
  # UACR model shold run
  uacr_okay_hba1c_not_zip_null <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 40,
      hba1c = 75,
      zip = NULL,
      quiet = TRUE
    )
  
  uacr_okay_hba1c_null_zip_not <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 40,
      hba1c = NULL,
      zip = "99999",
      quiet = TRUE
    )
  
  uacr_okay_others_not <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 40,
      hba1c = 75,
      zip = "99999",
      quiet = TRUE
    )
  
  uacr_model_by_itself <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 40,
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      uacr_okay_hba1c_not_zip_null = 
        uacr_okay_hba1c_not_zip_null$input_problems, 
      uacr_okay_hba1c_null_zip_not = 
        uacr_okay_hba1c_null_zip_not$input_problems, 
      uacr_okay_others_not = 
        uacr_okay_others_not$input_problems, 
      uacr_model_by_itself =
        uacr_model_by_itself$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  uacr_okay_hba1c_not_zip_null$input_problems <- 
    uacr_okay_hba1c_null_zip_not$input_problems <-
    uacr_okay_others_not$input_problems <-
    uacr_model_by_itself$input_problems <- 
    NULL
  
  expect_identical(uacr_okay_hba1c_not_zip_null, uacr_model_by_itself)
  expect_identical(uacr_okay_hba1c_null_zip_not, uacr_model_by_itself)
  expect_identical(uacr_okay_others_not, uacr_model_by_itself)
  expect_identical(unique(uacr_okay_hba1c_not_zip_null$model), "uacr")
  
  # HbA1c model shold run
  hba1c_okay_uacr_not_zip_null <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 4000000,
      hba1c = 7.5,
      zip = NULL,
      quiet = TRUE
    )
  
  hba1c_okay_uacr_null_zip_not <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = NULL,
      hba1c = 7.5,
      zip = "99999",
      quiet = TRUE
    )
  
  hba1c_okay_others_not <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 4000000,
      hba1c = 7.5,
      zip = "99999",
      quiet = TRUE
    )
  
  hba1c_model_by_itself <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      hba1c = 7.5,
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      hba1c_okay_uacr_not_zip_null = 
        hba1c_okay_uacr_not_zip_null$input_problems, 
      hba1c_okay_uacr_null_zip_not = 
        hba1c_okay_uacr_null_zip_not$input_problems, 
      hba1c_okay_others_not = 
        hba1c_okay_others_not$input_problems, 
      hba1c_model_by_itself =
        hba1c_model_by_itself$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  hba1c_okay_uacr_not_zip_null$input_problems <-
    hba1c_okay_uacr_null_zip_not$input_problems <-
    hba1c_okay_others_not$input_problems <-
    hba1c_model_by_itself$input_problems <- 
    NULL
  
  expect_identical(hba1c_okay_uacr_not_zip_null, hba1c_model_by_itself)
  expect_identical(hba1c_okay_uacr_null_zip_not, hba1c_model_by_itself)
  expect_identical(hba1c_okay_others_not, hba1c_model_by_itself)
  expect_identical(unique(hba1c_okay_uacr_not_zip_null$model), "hba1c")
  
  # SDI model should run
  zip_okay_uacr_not_hba1c_null <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 4000000,
      hba1c = NULL,
      zip = "49507",
      quiet = TRUE
    )
  
  zip_okay_uacr_null_hba1c_not <-
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = NULL,
      hba1c = 75,
      zip = "49507",
      quiet = TRUE
    )
  
  zip_okay_others_not <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      uacr = 4000000,
      hba1c = 75,
      zip = "49507",
      quiet = TRUE
    )
  
  zip_by_itself <- 
    check_equations_partial(
      age = 75,
      statin = TRUE,
      smoking = 1,
      zip = "49507",
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      zip_okay_uacr_not_hba1c_null = 
        zip_okay_uacr_not_hba1c_null$input_problems, 
      zip_okay_uacr_null_hba1c_not = 
        zip_okay_uacr_null_hba1c_not$input_problems, 
      zip_okay_others_not = 
        zip_okay_others_not$input_problems, 
      zip_by_itself =
        zip_by_itself$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  zip_okay_uacr_not_hba1c_null$input_problems <-
    zip_okay_uacr_null_hba1c_not$input_problems <-
    zip_okay_others_not$input_problems <-
    zip_by_itself$input_problems <- 
    NULL
  
  expect_identical(zip_okay_uacr_not_hba1c_null, zip_by_itself)
  expect_identical(zip_okay_uacr_null_hba1c_not, zip_by_itself)
  expect_identical(zip_okay_others_not, zip_by_itself)
  expect_identical(unique(zip_okay_uacr_not_hba1c_null$model), "sdi")
})

test_that("Optional predictors are handled correctly, two optional predictors are valid", {
  
  full_model_invalid_uacr <- 
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = 4000000,
      hba1c = 7.5,
      zip = "49507",
      quiet = TRUE
    )
  
  full_model_uacr_null <-
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = NULL,
      hba1c = 7.5,
      zip = "49507",
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      full_model_invalid_uacr = full_model_invalid_uacr$input_problems, 
      full_model_uacr_null = full_model_uacr_null$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_uacr$input_problems <-
    full_model_uacr_null$input_problems <- 
    NULL
  
  expect_identical(full_model_invalid_uacr, full_model_uacr_null)
  expect_identical(unique(full_model_invalid_uacr$model), "full")
  
  full_model_invalid_hba1c <- 
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = 40,
      hba1c = 75,
      zip = "49507",
      quiet = TRUE
    )
  
  full_model_hba1c_null <- 
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = 40,
      hba1c = NULL,
      zip = "49507",
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      full_model_invalid_hba1c = full_model_invalid_hba1c$input_problems, 
      full_model_hba1c_null = full_model_hba1c_null$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_hba1c$input_problems <-
    full_model_hba1c_null$input_problems <- 
    NULL
  
  expect_identical(full_model_invalid_hba1c, full_model_hba1c_null)
  expect_identical(unique(full_model_invalid_hba1c$model), "full")
  
  full_model_invalid_zip <- 
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = 40,
      hba1c = 7.5,
      zip = "99999",
      quiet = TRUE
    )
  
  full_model_zip_null <-
    check_equations_partial(
      age = 45,
      statin = TRUE,
      sbp = 148,
      uacr = 40,
      hba1c = 7.5,
      zip = NULL,
      quiet = TRUE
    )
  
  # Review input problems
  expect_snapshot(
    list(
      full_model_invalid_zip = full_model_invalid_zip$input_problems, 
      full_model_zip_null = full_model_zip_null$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_zip$input_problems <-
    full_model_zip_null$input_problems <- 
    NULL
  
  expect_identical(full_model_invalid_zip, full_model_zip_null)
  expect_identical(unique(full_model_invalid_zip$model), "full")
})

test_that("Invalid UACR is same as no UACR, only optional is UACR", {
  
  invalid_uacr <- check_equations_partial(uacr = 4000000, quiet = TRUE)
  no_uacr <- check_equations_partial(uacr = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_uacr = invalid_uacr$input_problems, 
      no_uacr = no_uacr$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_uacr$input_problems <- no_uacr$input_problems <- NULL
  
  expect_identical(invalid_uacr, no_uacr)
  expect_identical(unique(invalid_uacr$model), "base")
})

test_that("Invalid HbA1c is same as no HbA1c, only optional is HbA1c", {
  
  invalid_hba1c <- check_equations_partial(hba1c = 75, quiet = TRUE)
  no_hba1c <- check_equations_partial(hba1c = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_hba1c = invalid_hba1c$input_problems, 
      no_hba1c = no_hba1c$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_hba1c$input_problems <- no_hba1c$input_problems <- NULL
  
  expect_identical(invalid_hba1c, no_hba1c)
  expect_identical(unique(invalid_hba1c$model), "base")
})

test_that("Invalid zip is same as no zip, only optional is zip", {
  
  invalid_zip <- check_equations_partial(zip = "99999", quiet = TRUE)
  no_zip <- check_equations_partial(zip = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_zip = invalid_zip$input_problems, 
      no_zip = no_zip$input_problems
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_zip$input_problems <- no_zip$input_problems <- NULL
  
  expect_identical(invalid_zip, no_zip)
  expect_identical(unique(invalid_zip$model), "base")
})

test_that("Enforcing strict optional input validation works", {
  
  empty_table <- dplyr::tibble(
    total_cvd = NA_real_,
    ascvd = NA_real_,
    heart_failure = NA_real_,
    chd = NA_real_,
    stroke = NA_real_,
    model = "none",
    over_years = NA_integer_
  )
  
  empty_list_of_tables <- list(
    risk_est_10yr = empty_table,
    risk_est_30yr = empty_table
  )
  
  remove_input_probs <- function(x) {
    lapply(x, function(x) dplyr::select(x, -input_problems))
  }
  
  get_input_probs <- function(x) {
    unique(vapply(x, function(x) dplyr::pull(x, input_problems), character(1)))
  }
  
  # Basic invalid input ----
  # UACR
  uacr <- estimate_risk_partial(
    uacr = 9000000, 
    optional_strict = TRUE, 
    quiet = TRUE
  )
  uacr_input_problems <- get_input_probs(uacr)
  uacr_remove_input_problems <- remove_input_probs(uacr)
  
  # HbA1c
  hb1ac <- estimate_risk_partial(
    hba1c = 75, 
    optional_strict = TRUE,
    quiet = TRUE
  )
  hb1ac_input_problems <- get_input_probs(hb1ac)
  hb1ac_remove_input_problems <- remove_input_probs(hb1ac)
  
  # ZIP
  zip <- estimate_risk_partial(
    zip = "99999", 
    optional_strict = TRUE,
    quiet = TRUE
  )
  zip_input_problems <- get_input_probs(zip)
  zip_remove_input_problems <- remove_input_probs(zip)
  
  # UACR and HbA1c
  uacr_hba1c <- estimate_risk_partial(
    uacr = 9000000, 
    hba1c = 75, 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_hba1c_input_problems <- get_input_probs(uacr_hba1c)
  uacr_hba1c_remove_input_problems <- remove_input_probs(uacr_hba1c)
  
  # UACR and ZIP
  uacr_zip <- estimate_risk_partial(
    uacr = 9000000, 
    zip = "99999", 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_zip_input_problems <- get_input_probs(uacr_zip)
  uacr_zip_remove_input_problems <- remove_input_probs(uacr_zip)
  
  # HbA1c and ZIP
  hba1c_zip <- estimate_risk_partial(
    hba1c = 75, 
    zip = "99999", 
    optional_strict = TRUE,
    quiet = TRUE
  )
  hba1c_zip_input_problems <- get_input_probs(hba1c_zip)
  hba1c_zip_remove_input_problems <- remove_input_probs(hba1c_zip)

  # UACR, HbA1c, and ZIP
  uacr_hba1c_zip <- estimate_risk_partial(
    uacr = 9000000, 
    hba1c = 75, 
    zip = "99999", 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_hba1c_zip_input_problems <- get_input_probs(uacr_hba1c_zip)
  uacr_hba1c_zip_remove_input_problems <- remove_input_probs(uacr_hba1c_zip)
  
  # More complex invalid input ----
  # UACR
  uacr_complex <- estimate_risk_partial(
    uacr = list(a = list(b = data.frame(a = "apple", b = TRUE)), b = 5), 
    optional_strict = TRUE, 
    quiet = TRUE
  )
  uacr_input_problems_complex <- get_input_probs(uacr_complex)
  uacr_remove_input_problems_complex <- remove_input_probs(uacr_complex)
  
  # HbA1c
  hb1ac_complex <- estimate_risk_partial(
    hba1c = matrix(12, 3, 4), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  hb1ac_input_problems_complex <- get_input_probs(hb1ac_complex)
  hb1ac_remove_input_problems_complex <- remove_input_probs(hb1ac_complex)
  
  # ZIP
  zip_complex <- estimate_risk_partial(
    zip = c("01011", "22222", "99999"), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  zip_input_problems_complex <- get_input_probs(zip_complex)
  zip_remove_input_problems_complex <- remove_input_probs(zip_complex)
  
  # UACR and HbA1c
  uacr_hba1c_complex <- estimate_risk_partial(
    uacr = list(a = list(b = data.frame(a = "apple", b = TRUE)), b = 5), 
    hba1c = data.frame(a = 75, b = "potato"), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_hba1c_input_problems_complex <- get_input_probs(uacr_hba1c_complex)
  uacr_hba1c_remove_input_problems_complex <- remove_input_probs(uacr_hba1c_complex)
  
  # UACR and ZIP
  uacr_zip_complex <- estimate_risk_partial(
    uacr = list(a = list(b = data.frame(a = "apple", b = TRUE)), b = 5), 
    zip = c("01011", "22222", "99999"), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_zip_input_problems_complex <- get_input_probs(uacr_zip_complex)
  uacr_zip_remove_input_problems_complex <- remove_input_probs(uacr_zip_complex)
  
  # HbA1c and ZIP
  hba1c_zip_complex <- estimate_risk_partial(
    hba1c = data.frame(a = 75, b = "potato"), 
    zip = c("01011", "22222", "99999"), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  hba1c_zip_input_problems_complex <- get_input_probs(hba1c_zip_complex)
  hba1c_zip_remove_input_problems_complex <- remove_input_probs(hba1c_zip_complex)
  
  # UACR, HbA1c, and ZIP
  uacr_hba1c_zip_complex <- estimate_risk_partial(
    uacr = list(a = list(b = data.frame(a = "apple", b = TRUE)), b = 5), 
    hba1c = data.frame(a = 75, b = "potato"), 
    zip = c("01011", "22222", "99999"), 
    optional_strict = TRUE,
    quiet = TRUE
  )
  uacr_hba1c_zip_input_problems_complex <- get_input_probs(uacr_hba1c_zip_complex)
  uacr_hba1c_zip_remove_input_problems_complex <- remove_input_probs(uacr_hba1c_zip_complex)
  
  # Review input problems
  expect_snapshot(
    list(
      uacr = uacr_input_problems,
      hb1ac = hb1ac_input_problems,
      zip = zip_input_problems,
      uacr_hba1c = uacr_hba1c_input_problems,
      uacr_zip = uacr_zip_input_problems,
      hba1c_zip = hba1c_zip_input_problems,
      uacr_hba1c_zip = uacr_hba1c_zip_input_problems,
      uacr_complex = uacr_input_problems_complex,
      hb1ac_complex = hb1ac_input_problems_complex,
      zip_complex = zip_input_problems_complex,
      uacr_hba1c_complex = uacr_hba1c_input_problems_complex,
      uacr_zip_complex = uacr_zip_input_problems_complex,
      hba1c_zip_complex = hba1c_zip_input_problems_complex,
      uacr_hba1c_zip_complex = uacr_hba1c_zip_input_problems_complex
    )
  )
  
  expect_equal(uacr_remove_input_problems, empty_list_of_tables)
  expect_equal(hb1ac_remove_input_problems, empty_list_of_tables)
  expect_equal(zip_remove_input_problems, empty_list_of_tables)
  expect_equal(uacr_hba1c_remove_input_problems, empty_list_of_tables)
  expect_equal(uacr_zip_remove_input_problems, empty_list_of_tables)
  expect_equal(hba1c_zip_remove_input_problems, empty_list_of_tables)
  expect_equal(uacr_hba1c_zip_remove_input_problems, empty_list_of_tables)
  expect_equal(uacr_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(hb1ac_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(zip_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(uacr_hba1c_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(uacr_zip_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(hba1c_zip_remove_input_problems_complex, empty_list_of_tables)
  expect_equal(uacr_hba1c_zip_remove_input_problems_complex, empty_list_of_tables)
})

test_that("Additional checks of results, for good measure", {
  # At this point, given how the package is written (e.g., to ensure
  # full concordance between coefficients and term prep), with tests
  # thus far, further testing is essentially superfluous, but more tests
  # never hurt anyone :-)
  expect_snapshot(
    check_equations_partial(
      age = 67, statin = FALSE, 
      hba1c = 9
    )
  )
  
  expect_snapshot(
    check_equations_partial(
      age = 67, statin = TRUE, 
      uacr = 1000
    )
  )
  
  expect_snapshot(
    check_equations_partial(
      age = 71, statin = TRUE, 
      hba1c = 9, uacr = 1000
    )
  )
  
  expect_snapshot(
    check_equations_partial(
      age = 71, statin = TRUE, 
      hba1c = 9, uacr = 1000, zip = "49507"
    )
  )
  
  expect_snapshot(
    check_equations_partial(
      age = 71, sbp = 145, bp_tx = 0, 
      hba1c = 6.7, uacr = 10, zip = NA
    )
  )
  
  res_v1 <- check_equations_partial(
    age = 35, sbp = 145, bp_tx = 1, 
    uacr = 10, zip = NA, quiet = TRUE
  )
  
  res_v2 <- check_equations_partial(
    age = 35, sbp = 145, bp_tx = 1, 
    uacr = 10, quiet = TRUE
  )
  
  identical_res <- identical(res_v1, res_v2)
  
  expect_snapshot(res_v1)
  expect_snapshot(res_v2)
  expect_true(identical_res)
})