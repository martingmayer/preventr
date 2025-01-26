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
      res_10yr = res[["risk_est_10yr"]] %>% dplyr::select(-input_problems),
      input_probs_10yr = res[["risk_est_10yr"]][["input_problems"]],
      res_30yr = res[["risk_est_30yr"]] %>% dplyr::select(-input_problems),
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
      res = res %>% dplyr::select(-input_problems),
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

test_that("Preparation of terms works - Basic", {
  dat <- make_prep_dat()
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No BP tx", {
  dat <- make_prep_dat(bp_tx = FALSE)
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No statin", {
  dat <- make_prep_dat(statin = FALSE)
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - No DM", {
  dat <- make_prep_dat(dm = FALSE)
  expect_snapshot(prep_terms(dat, "base"))
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - Missing optional predictors", {
  # Test missing optional predictors
  dat <- make_prep_dat(dm = TRUE, hba1c = NA, uacr = NA, zip = NA)
  expect_snapshot(prep_terms(dat, "hba1c"))
  expect_snapshot(prep_terms(dat, "uacr"))
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
})

test_that("Preparation of terms works - Other SDI categories", {
  # Test zip where SDI from 4-6
  dat <- make_prep_dat(zip = "44221")
  
  expect_snapshot(prep_terms(dat, "sdi"))
  expect_snapshot(prep_terms(dat, "full"))
  
  # Test zip where SDI from 1-3
  dat[["zip"]] <- "01005"
  
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
  expect_identical("base", chr_version_1[["model"]][["female"]])
  expect_identical("base", chr_version_1[["model"]][["male"]])
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
  expect_identical("hba1c", chr_version_1[["model"]][["female"]])
  expect_identical("hba1c", chr_version_1[["model"]][["male"]])
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
  expect_identical("uacr", chr_version_1[["model"]][["female"]])
  expect_identical("uacr", chr_version_1[["model"]][["male"]])
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
  expect_identical("sdi", chr_version_1[["model"]][["female"]])
  expect_identical("sdi", chr_version_1[["model"]][["male"]])
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
  expect_identical("full", chr_version_1[["model"]][["female"]])
  expect_identical("full", chr_version_1[["model"]][["male"]])
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
  expect_identical("base", chr_version_1[["model"]][["female"]])
  expect_identical("base", chr_version_1[["model"]][["male"]])
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
  expect_identical("hba1c", chr_version_1[["model"]][["female"]])
  expect_identical("hba1c", chr_version_1[["model"]][["male"]])
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
  expect_identical("uacr", chr_version_1[["model"]][["female"]])
  expect_identical("uacr", chr_version_1[["model"]][["male"]])
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
  expect_identical("sdi", chr_version_1[["model"]][["female"]])
  expect_identical("sdi", chr_version_1[["model"]][["male"]])
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
  expect_identical("full", chr_version_1[["model"]][["female"]])
  expect_identical("full", chr_version_1[["model"]][["male"]])
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
        uacr_okay_hba1c_not_zip_null[["input_problems"]], 
      uacr_okay_hba1c_null_zip_not = 
        uacr_okay_hba1c_null_zip_not[["input_problems"]], 
      uacr_okay_others_not = 
        uacr_okay_others_not[["input_problems"]], 
      uacr_model_by_itself =
        uacr_model_by_itself[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  uacr_okay_hba1c_not_zip_null[["input_problems"]] <- 
    uacr_okay_hba1c_null_zip_not[["input_problems"]] <-
    uacr_okay_others_not[["input_problems"]] <-
    uacr_model_by_itself[["input_problems"]] <- 
    NULL
  
  expect_identical(uacr_okay_hba1c_not_zip_null, uacr_model_by_itself)
  expect_identical(uacr_okay_hba1c_null_zip_not, uacr_model_by_itself)
  expect_identical(uacr_okay_others_not, uacr_model_by_itself)
  expect_identical(unique(uacr_okay_hba1c_not_zip_null[["model"]]), "uacr")
  
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
        hba1c_okay_uacr_not_zip_null[["input_problems"]], 
      hba1c_okay_uacr_null_zip_not = 
        hba1c_okay_uacr_null_zip_not[["input_problems"]], 
      hba1c_okay_others_not = 
        hba1c_okay_others_not[["input_problems"]], 
      hba1c_model_by_itself =
        hba1c_model_by_itself[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  hba1c_okay_uacr_not_zip_null[["input_problems"]] <-
    hba1c_okay_uacr_null_zip_not[["input_problems"]] <-
    hba1c_okay_others_not[["input_problems"]] <-
    hba1c_model_by_itself[["input_problems"]] <- 
    NULL
  
  expect_identical(hba1c_okay_uacr_not_zip_null, hba1c_model_by_itself)
  expect_identical(hba1c_okay_uacr_null_zip_not, hba1c_model_by_itself)
  expect_identical(hba1c_okay_others_not, hba1c_model_by_itself)
  expect_identical(unique(hba1c_okay_uacr_not_zip_null[["model"]]), "hba1c")
  
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
        zip_okay_uacr_not_hba1c_null[["input_problems"]], 
      zip_okay_uacr_null_hba1c_not = 
        zip_okay_uacr_null_hba1c_not[["input_problems"]], 
      zip_okay_others_not = 
        zip_okay_others_not[["input_problems"]], 
      zip_by_itself =
        zip_by_itself[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  zip_okay_uacr_not_hba1c_null[["input_problems"]] <-
    zip_okay_uacr_null_hba1c_not[["input_problems"]] <-
    zip_okay_others_not[["input_problems"]] <-
    zip_by_itself[["input_problems"]] <- 
    NULL
  
  expect_identical(zip_okay_uacr_not_hba1c_null, zip_by_itself)
  expect_identical(zip_okay_uacr_null_hba1c_not, zip_by_itself)
  expect_identical(zip_okay_others_not, zip_by_itself)
  expect_identical(unique(zip_okay_uacr_not_hba1c_null[["model"]]), "sdi")
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
      full_model_invalid_uacr = full_model_invalid_uacr[["input_problems"]], 
      full_model_uacr_null = full_model_uacr_null[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_uacr[["input_problems"]] <-
    full_model_uacr_null[["input_problems"]] <- 
    NULL
  
  expect_identical(full_model_invalid_uacr, full_model_uacr_null)
  expect_identical(unique(full_model_invalid_uacr[["model"]]), "full")
  
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
      full_model_invalid_hba1c = full_model_invalid_hba1c[["input_problems"]], 
      full_model_hba1c_null = full_model_hba1c_null[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_hba1c[["input_problems"]] <-
    full_model_hba1c_null[["input_problems"]] <- 
    NULL
  
  expect_identical(full_model_invalid_hba1c, full_model_hba1c_null)
  expect_identical(unique(full_model_invalid_hba1c[["model"]]), "full")
  
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
      full_model_invalid_zip = full_model_invalid_zip[["input_problems"]], 
      full_model_zip_null = full_model_zip_null[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  full_model_invalid_zip[["input_problems"]] <-
    full_model_zip_null[["input_problems"]] <- 
    NULL
  
  expect_identical(full_model_invalid_zip, full_model_zip_null)
  expect_identical(unique(full_model_invalid_zip[["model"]]), "full")
})

test_that("Invalid UACR is same as no UACR, only optional is UACR", {
  
  invalid_uacr <- check_equations_partial(uacr = 4000000, quiet = TRUE)
  no_uacr <- check_equations_partial(uacr = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_uacr = invalid_uacr[["input_problems"]], 
      no_uacr = no_uacr[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_uacr[["input_problems"]] <- no_uacr[["input_problems"]] <- NULL
  
  expect_identical(invalid_uacr, no_uacr)
  expect_identical(unique(invalid_uacr[["model"]]), "base")
})

test_that("Invalid HbA1c is same as no HbA1c, only optional is HbA1c", {
  
  invalid_hba1c <- check_equations_partial(hba1c = 75, quiet = TRUE)
  no_hba1c <- check_equations_partial(hba1c = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_hba1c = invalid_hba1c[["input_problems"]], 
      no_hba1c = no_hba1c[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_hba1c[["input_problems"]] <- no_hba1c[["input_problems"]] <- NULL
  
  expect_identical(invalid_hba1c, no_hba1c)
  expect_identical(unique(invalid_hba1c[["model"]]), "base")
})

test_that("Invalid zip is same as no zip, only optional is zip", {
  
  invalid_zip <- check_equations_partial(zip = "99999", quiet = TRUE)
  no_zip <- check_equations_partial(zip = NULL, quiet = TRUE)
  
  # Review input problems
  expect_snapshot(
    list(
      invalid_zip = invalid_zip[["input_problems"]], 
      no_zip = no_zip[["input_problems"]]
    )
  )
  
  # Set `input_problems` to NULL to avoid comparing it now
  invalid_zip[["input_problems"]] <- no_zip[["input_problems"]] <- NULL
  
  expect_identical(invalid_zip, no_zip)
  expect_identical(unique(invalid_zip[["model"]]), "base")
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

test_that("warning for 30-year risk with age > 59 works", {
  expect_warning(
    estimate_risk(
      age = 63,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 68,
      bmi = 22
    ),
    "Estimating 30-year risk in people > 59 years of age is questionable"
  )
  
  # Note setting `quiet = TRUE` to suppress the warning in these tests
  # to permit testing the output without {testthat} reporting a warning
  # during the tests
  expect_equal(
    estimate_risk(
      age = 63,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 68,
      bmi = 22,
      time = 30,
      quiet = TRUE
    )[["input_problems"]],
    "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
  )
  
  # Note setting `quiet = TRUE` (see above)
  expect_equal(
    estimate_risk(
      age = 63,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 68,
      bmi = 22,
      hba1c = 200,
      time = 30,
      quiet = TRUE
    )[["input_problems"]],
    paste0(
      "Warning: Estimating 30-year risk in people > 59 years of age is questionable; ",
      "`hba1c` entered as 200, but must be between 4.5 and 15 (so set to NULL)"
    )
  )
})

test_that("arg `collapse` behaves as intended, return of NA tibbles behaves as intended", {
  
  res_collapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE,
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE
  )
  
  res_arg_collapse_strict_about_true <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE,
    collapse = 1
  )
  
  expect_identical(res_uncollapsed, res_arg_collapse_strict_about_true)
  
  res_arg_collapse_strict_about_true <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE,
    collapse = "yes, please"
  )
  
  expect_identical(res_uncollapsed, res_arg_collapse_strict_about_true)
  
  # For `res_uncollapsed`, expect a list given `time = "30yr"` and the call
  # to `estimate_risk()` requests other models
  expect_type(res_uncollapsed, "list")
  
  # For `res_collapsed`, expect a data frame given `collapse = TRUE`,
  # and further expect that the number of rows is 3 (one for the 30-year
  # estimates from PREVENT, 2 for the 10-year estimates from the PCEs given
  # `other_models = "pce_both"`)
  expect_s3_class(res_collapsed, c("tbl_df", "tbl", "data.frame"))
  expect_equal(nrow(res_collapsed), 3)
  
  # Test for equality aside from structure
  expect_true(
    all.equal(
      do.call(rbind, res_uncollapsed), 
      res_collapsed, 
      check.attributes = FALSE
    )
  )
  
  # Test for `collapse` having no effect if `time` is "10yr"
  res_collapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "10yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE,
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "10yr",
    model = list(other_models = "pce_both", race_eth = "Black"),
    quiet = TRUE,
    collapse = FALSE
  )
  
  expect_identical(res_collapsed, res_uncollapsed)
  
  # ... or if `time` is "30yr" and they don't request other models
  res_collapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    quiet = TRUE,
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk(
    age = 50, 
    sex = "female",    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    time = "30yr",
    quiet = TRUE,
    collapse = FALSE
  )
  
  expect_identical(res_collapsed, res_uncollapsed)
  
  # ... or if they use `use_dat`
  dat <- make_dat(10)
  
  res_collapsed <- estimate_risk(use_dat = dat, progress = FALSE, collapse = TRUE)
  res_uncollapsed <- estimate_risk(use_dat = dat, progress = FALSE, collapse = FALSE)
  expect_identical(res_collapsed, res_uncollapsed)
  
  # Even if results are errors, expect collapse to work
  
  # Both time frames, no PCEs, collapsed
  names_when_tbl <-  c("total_cvd", "ascvd", "heart_failure", "chd", "stroke", 
                       "model", "over_years", "input_problems")
  names_when_list <- c("risk_est_10yr", "risk_est_30yr")
  
  # Both time frames, no PCEs, collapsed
  res_collapsed <- estimate_risk(
    age = -50, 
    sex = list(TRUE, FALSE),    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    quiet = TRUE,
    collapse = TRUE
  )
  
  expect_true(is.data.frame(res_collapsed))
  expect_equal(nrow(res_collapsed), 2) # 10yr and 30yr
  expect_equal(count_nas_from_res(res_collapsed), 10) # 5 NAs per time frame
  expect_equal(names(res_collapsed), names_when_tbl)
  
  # Both time frames, no PCEs, uncollapsed
  res_uncollapsed <- estimate_risk(
    age = -50, 
    sex = list(TRUE, FALSE),    
    sbp = 130, 
    bp_tx = TRUE,      
    total_c = 200,     
    hdl_c = 45,        
    statin = FALSE,    
    dm = TRUE,         
    smoking = FALSE,   
    egfr = 90,
    bmi = 35,
    quiet = TRUE,
    collapse = FALSE
  )
  
  expect_false(is.data.frame(res_uncollapsed))
  expect_true(is.list(res_uncollapsed))
  expect_equal(length(res_uncollapsed), 2) # 10yr and 30yr
  expect_equal(names(res_uncollapsed), names_when_list)
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_10yr"]]), 5)
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_30yr"]]), 5)
  
  # Because only one time horizon, `collapse` has no impact
  
  # 10 years, no PCEs
  res_collapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 10,
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 10,
    collapse = FALSE
  )
  
  expect_identical(res_uncollapsed, res_collapsed)
  expect_equal(nrow(res_uncollapsed), 1)
  expect_equal(count_nas_from_res(res_uncollapsed), 5)
  expect_equal(names(res_uncollapsed), names_when_tbl)
  
  # 30 years, no PCEs
  res_collapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 30,
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 30,
    collapse = FALSE
  )
  
  expect_identical(res_uncollapsed, res_collapsed)
  expect_equal(nrow(res_uncollapsed), 1)
  expect_equal(count_nas_from_res(res_uncollapsed), 5) 
  expect_equal(names(res_uncollapsed), names_when_tbl)
  
  # Still no difference here despite requesting PCEs, b/c one time horizon
  res_collapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 10,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 10,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = FALSE
  )
  
  expect_identical(res_uncollapsed, res_collapsed)
  expect_equal(nrow(res_uncollapsed), 3) # 3 b/c 3 models
  expect_equal(count_nas_from_res(res_uncollapsed), 15) # 15 b/c 3 models
  expect_equal(names(res_uncollapsed), names_when_tbl)
  
  # Difference here, b/c despite requesting 30-year time horizon, also
  # requests PCEs, thus automatically adding a 10-year time horizon
  res_collapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 30,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    time = 30,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = FALSE
  )
  
  expect_false(identical(res_uncollapsed, res_collapsed))
  expect_false(is.data.frame(res_uncollapsed))
  expect_true(is.list(res_uncollapsed))
  expect_equal(length(res_uncollapsed), 2) # 10yr (PCEs) and 30yr (PREVENT)
  expect_equal(nrow(res_uncollapsed[["risk_est_10yr"]]), 2) # both PCE models
  expect_equal(nrow(res_uncollapsed[["risk_est_30yr"]]), 1) # 30-year PREVENT model
  expect_equal(names(res_uncollapsed), names_when_list)
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_10yr"]]), 10)
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_30yr"]]), 5)
  expect_true(is.data.frame(res_collapsed))
  expect_equal(nrow(res_collapsed), 3) # 3 b/c 3 models
  expect_identical(res_uncollapsed %>% dplyr::bind_rows(), res_collapsed)
  expect_equal(count_nas_from_res(res_collapsed), 15)
  
  # Difference here, b/c requesting both time horizons and PCEs
  res_collapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = TRUE
  )
  
  res_uncollapsed <- estimate_risk_partial(
    age = -50, 
    sex = list(TRUE, FALSE),    
    quiet = TRUE,
    model = list(other_models = "pce_both", race_eth = "Black"),
    collapse = FALSE
  )
  
  expect_false(identical(res_uncollapsed, res_collapsed))
  expect_false(is.data.frame(res_uncollapsed))
  expect_true(is.list(res_uncollapsed))
  expect_equal(length(res_uncollapsed), 2) # 10yr and 30yr
  expect_equal(names(res_uncollapsed), names_when_list)
  expect_equal(nrow(res_uncollapsed[["risk_est_10yr"]]), 3) # 10-year PREVENT and both PCE models
  expect_equal(nrow(res_uncollapsed[["risk_est_30yr"]]), 1) # 30-year PREVENT model
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_10yr"]]), 15)
  expect_equal(count_nas_from_res(res_uncollapsed[["risk_est_30yr"]]), 5)
  expect_true(is.data.frame(res_collapsed))
  expect_equal(nrow(res_collapsed), 4) # 4 b/c 4 models
  expect_identical(res_uncollapsed %>% dplyr::bind_rows(), res_collapsed)
  expect_equal(count_nas_from_res(res_collapsed), 20)
})

test_that("args `use_dat` and `add_to_dat` behave as intended, no arg sub", {
  
  dat <- make_dat(100)
  
  res_manual_not_added_to_dat <- 
    do_lapply_for_use_dat_add_to_dat(dat, add_to_dat = FALSE, quiet = TRUE)
  
  res_manual_added_to_dat <- add_to_dat(dat, res_manual_not_added_to_dat)
  
  res_auto_not_added_to_dat <- 
    est_risk(use_dat = dat, add_to_dat = FALSE, progress = FALSE) 
  
  res_auto_added_to_dat <- est_risk(use_dat = dat, add_to_dat = TRUE, progress = FALSE)
  
  expect_identical(res_manual_not_added_to_dat, res_auto_not_added_to_dat)
  expect_identical(res_manual_added_to_dat, res_auto_added_to_dat)
})

# When `use_dat` is a data.frame, for args corresponding to a predictor var,  
# the arg can either be omitted (in which case, the fx assumes the arg name
# corresponds to the col name in the data.frame, or the user can specify a
# different col name). The following tests ensure the fx behaves as inteded in
# these cases.
test_that("args `use_dat` and `add_to_dat` behave as intended, `age` sub", {
  test_diff_col_name(quote(age), quote(trips_around_the_sun), "valid_sub")
  test_diff_col_name(quote(age), quote(trips_around_the_sun), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `sex` sub", {
  test_diff_col_name(quote(sex), quote(foo), "valid_sub")
  test_diff_col_name(quote(sex), quote(foo), "invalid_sub")
  
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `sbp` sub", {
  test_diff_col_name(quote(sbp), quote(blood_pressure), "valid_sub")
  test_diff_col_name(quote(sbp), quote(blood_pressure), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `bp_tx` sub", {
  test_diff_col_name(quote(bp_tx), quote(blood_pressure_treatment), "valid_sub")
  test_diff_col_name(quote(bp_tx), quote(blood_pressure_treatment), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `total_c` sub", {
  test_diff_col_name(quote(total_c), quote(total_cholesterol), "valid_sub")
  test_diff_col_name(quote(total_c), quote(total_cholesterol), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `hdl_c` sub", {
  test_diff_col_name(quote(hdl_c), quote(hdl_cholesterol), "valid_sub")
  test_diff_col_name(quote(hdl_c), quote(hdl_cholesterol), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `statin` sub", {
  test_diff_col_name(quote(statin), quote(statin_use), "valid_sub")
  test_diff_col_name(quote(statin), quote(statin_use), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `dm` sub", {
  test_diff_col_name(quote(dm), quote(diabetes), "valid_sub")
  test_diff_col_name(quote(dm), quote(diabetes), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `smoking` sub", {
  test_diff_col_name(quote(smoking), quote(smoking_status), "valid_sub")
  test_diff_col_name(quote(smoking), quote(smoking_status), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `egfr` sub", {
  test_diff_col_name(
    quote(egfr), 
    quote(estimated_glomerular_filtration_rate), 
    "valid_sub"
  )
  test_diff_col_name(
    quote(egfr), 
    quote(estimated_glomerular_filtration_rate), 
    "invalid_sub"
  )
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `bmi` sub", {
  test_diff_col_name(quote(bmi), quote(body_mass_index), "valid_sub")
  test_diff_col_name(quote(bmi), quote(body_mass_index), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `hba1c` sub", {
  test_diff_col_name(quote(hba1c), quote(sugar), "valid_sub")
  test_diff_col_name(quote(hba1c), quote(sugar), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `uacr` sub", {
  test_diff_col_name(quote(uacr), quote(protein), "valid_sub")
  test_diff_col_name(quote(uacr), quote(protein), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `zip` sub", {
  test_diff_col_name(quote(zip), quote(where_are_you), "valid_sub")
  test_diff_col_name(quote(zip), quote(where_are_you), "invalid_sub")
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `time` var", {
  
  # Test `time` arg being dominant if both `time` col and `time` arg exist
  dat <- make_mini_dat("time")
  res <- est_risk(use_dat = dat, time = "10yr", progress = FALSE)
  expect_equal(unique(res[["over_years"]]), 10)
  
  # Test `time` col functionality
  res <- est_risk(use_dat = dat, progress = FALSE)
  
  for(i in seq_len(nrow(dat))) {
    expected_over_years <- 
      with(
        dat[i, ],
        if(time == "both") c(10, 30) else gsub("yr", "", time)
      )
    expect_equal(
      res %>% dplyr::filter(preventr_id == i) %>% dplyr::pull(over_years),
      as.integer(expected_over_years)
    )
  }
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `model` var", {
  
  # Test `model` arg being dominant if both `model` col and `model` arg exist
  dat <- make_mini_dat("model")
  res <- est_risk(use_dat = dat, model = "base", progress = FALSE)
  expect_equal(unique(res[["model"]]), "base")
  
  # Test `model` col functionality
  res <- est_risk(use_dat = dat, progress = FALSE)
  
  for(i in seq_len(nrow(dat))) {
    # With generated data, the main model is not specified, thus selected
    # automatically based on availability of optional PREVENT predictor vars,
    # but the PCE models are randomly specified, so interrogate which PCE
    # model(s) are going to be requested
    expected <- 
      with(
        dat[i, ],
        {
          model_input <- unlist(model)
          prevent_model <- select_model(hba1c, uacr, zip)
          # `isTRUE()` here in case `model_input` is >1 in length
          pce_model <- 
            if(isTRUE(is.na(model_input))) {
              NULL
            } else {
              if(model_input[["other_models"]] == "pce_both") {
                c("pce_orig", "pce_rev") 
              } else {
                model_input[["other_models"]]
              }
            }
          list(prevent_model = prevent_model, pce_model = pce_model)
        }
      )
    
    expect_equal(
      res %>% dplyr::filter(preventr_id == i) %>% dplyr::pull(model),
      # Because default of `time` is "both", can anticipate the model ordering
      # will be PREVENT models (for 10-year), PCE models (for 10-year), and
      # PREVENT models (for 30-year)
      c(
        expected[["prevent_model"]], 
        expected[["pce_model"]], 
        expected[["prevent_model"]]
      )
    )
  }
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `chol_unit` var", {
  
  dat <- make_mini_dat("chol_unit")
  res <- est_risk(use_dat = dat, chol_unit = "mg/dL", progress = FALSE)
  # If the above worked, there should be no NA values in the risk estimations
  # returned, because even though some of the input data will have total_c and
  # hdl_c values intended for mg/dL despite having col value "mmol/L" for 
  # `chol_unit`, passing `chol_unit = "mg/dL"` should functionally override the
  # col values for `chol_unit`
  expect_equal(count_nas_from_res(res), 0)
  expect_equal(unique(res[["input_problems"]]), NA_character_)
  
  # Now, don't pass `chol_unit` as an arg, and there should be
  # 10 * sum(dat[["chol_unit"]] == "mmol/L") NA values in the risk estimations,
  # b/c for each instance of "mmol/L" in the `chol_unit` col, there will be
  # 2 rows with NAs in the return, given the default for `time` is "both",
  # and each row will have 5 outcomes, so 2 * 5 = 10
  res <- est_risk(use_dat = dat, quiet = TRUE)
  expect_equal(count_nas_from_res(res), 10 * sum(dat[["chol_unit"]] == "mmol/L"))
  for(i in seq_len(nrow(res))) {
    with(
      res[i, ],
      if(chol_unit == "mmol/L") {
        expect_true(grepl("`total_c` entered as", input_problems))
        expect_true(grepl("`hdl_c` entered as", input_problems))
      } else {
        expect_equal(input_problems, NA_character_)
      }
    )
  }
})

test_that("args `use_dat` and `add_to_dat` behave as intended, `optional_strict` and `quiet` vars", {
  # `optional_strict` ----
  dat <- make_mini_dat("optional_strict")
  # Edit some HbA1cs to be invalid
  row_subset <- c(1, 3, 5, 7, 9)
  dat[["hba1c"]][row_subset] <- 8675309
  
  res <- est_risk(use_dat = dat, time = "both", optional_strict = TRUE, progress = FALSE)
  for(i in seq_len(nrow(res))) {
    with(
      res[i, ],
      {
        outcomes_in_res <- list(
          total_cvd = total_cvd,
          ascvd = ascvd,
          heart_failure = heart_failure,
          chd = chd,
          stroke = stroke
        )
        
        if(isTRUE(hba1c == 8675309)) {
          expect_equal(count_nas_from_res(outcomes_in_res), 5)
          expect_equal(input_problems, "`hba1c` entered as 8675309, but must be between 4.5 and 15")
        } else {
          expect_equal(count_nas_from_res(outcomes_in_res), 0)
          expect_equal(input_problems, NA_character_)
        }
      }
    )
  }
  
  # Now change `optional_strict` to `FALSE`, and there should be no NA values
  # for risk estimation, but `input_problems` column should still alert re:
  # invalid HbA1c values, this time also noting the HbA1c values were set to NULL
  res <- est_risk(use_dat = dat, time = "both", optional_strict = FALSE, progress = FALSE)
  for(i in seq_len(nrow(res))) {
    with(
      res[i, ],
      {
        
        expect_equal(
          count_nas_from_res(
            list(
              total_cvd = total_cvd,
              ascvd = ascvd,
              heart_failure = heart_failure,
              chd = chd,
              stroke = stroke
            )
          ), 
          0
        )
        
        if(isTRUE(hba1c == 8675309)) {
          # Note slight change in text here (addition of " (so set to NULL)"),
          # which is expected when an optional predictor var has probs but
          # `optional_strict = FALSE`
          expect_equal(input_problems, "`hba1c` entered as 8675309, but must be between 4.5 and 15 (so set to NULL)")
        } else {
          expect_equal(input_problems, NA_character_)
        }
      }
    )
  }
  
  # `quiet` ----
  # Re-use `dat` from testing of `optional_strict`
  # Note the below assignment of `quiet` vals will mean `quiet = TRUE`
  # for the invalid HbA1c values assigned when testing `optional_strict`
  # (i.e., `quiet = TRUE` for rows 1, 3, 5, 7, 9)
  expect_no_message(est_risk(use_dat = dat, progress = FALSE))
  expect_message(
    est_risk(use_dat = make_dat(4), quiet = FALSE, progress = FALSE),
    "PREVENT estimates are from"
  )
  
  dat <- dat %>% dplyr::mutate(quiet = rep(c(TRUE, FALSE), 5))
  
  for(i in seq_len(nrow(dat))) {
    if(isTRUE(dat[i, "hba1c"] == 8675309)) {
      # Test subset of `dat` where col `quiet` is TRUE
      # setting `quiet = FALSE` should result in messages about `hba1c` values
      # and the PREVENT estimates despite `quiet = TRUE` in the `dat` subset
      expect_message(
        est_risk(use_dat = dat[i, ], quiet = FALSE, progress = FALSE),
        "`hba1c` entered as 8675309"
      )
      # And if `optional_strict = FALSE`, there should be a message about the
      # PREVENT estimates (b/c if `optional_strict = TRUE`, the invalid HbA1c
      # will prevent estimates from being calculated)
      if(!dat[i, "optional_strict"]) {
        expect_message(
          est_risk(use_dat = dat[i, ], quiet = FALSE, progress = FALSE),
          "PREVENT estimates are from"
        )
      }
      # And if not overriding with `quiet = FALSE`, there should be no messages,
      # b/c the col value is TRUE
      expect_no_message(est_risk(use_dat = dat[i, ], progress = FALSE))
    } else {
      # Test subset of `dat` where col `quiet` is FALSE
      # omitting the `quiet` arg should result in messages about the PREVENT
      # estimates (but not about the `hba1c` values, because these rows in `dat`
      # were not altered in testing of `optional_strict` to have invalid HbA1c vals
      expect_message(
        est_risk(use_dat = dat[i, ], progress = FALSE),
        "PREVENT estimates are from"
      )
      expect_no_message(
        est_risk(use_dat = dat[i, ], quiet = TRUE, progress = FALSE)
      )
    }
  }
})

test_that("further testing of use of data frame", {
  # This set of tests is based on the vignette "using-data-frame", and is in
  # many ways identical to the content therein, but there are differences. For
  # example, it takes a different approach to make and edit the data being used
  # (though relevant data are identical), changes demonstrations into explicit
  # tests, and sometimes slightly tweaks the code, such as to make things quiet
  # and to use `%>%` and `.` instead of `|>` and `_`. As such, commentary herein
  # may be relatively sparse, aside from where commentary from the vignette was
  # left in situ and/or possibly adding comments if something changed from the
  # vignette, perhaps especially if the change might be subtle. Otherwise, see
  # the vignette if needed.
  
  dat <- make_dat(10) %>%
    # Specifying `age`, `sex`, `egfr`, and `bmi` manually while letting
    # other parameters vary to facilitate later aspects of this
    # testing (to show identical results from approaches below)
    dplyr::mutate(  
      age = c(40, 55, 45, 51, 52, 58, 57, 36, 49, 47),
      sex = rep(c("female", "male"), 5),
      egfr = c(73, 71, 80, 73, 77, 70, 86, 89, 78, 68),
      bmi = c(37.4, 32.9, 37.5, 28.6, 37.5, 36.0, 36.7, 28.6, 18.7, 38.6)
    )
  
  # Showing you can pass a different name for the column containing the
  # predictor
  res <- est_risk(use_dat = dat, progress = FALSE)
  
  dat_age_rename <- dat %>% dplyr::rename(years_old = age)
  
  res_age_rename_sym <- est_risk(
    use_dat = dat_age_rename, 
    age = years_old, 
    progress = FALSE
  )
  
  res_age_rename_chr <- est_risk(
    use_dat = dat_age_rename, 
    age = "years_old", 
    progress = FALSE
  )
  
  # Will be `FALSE` because names of `age` columns differ
  expect_false(identical(res, res_age_rename_sym))
  expect_false(identical(res, res_age_rename_chr))
  
  # But this will be `TRUE`
  expect_identical(res_age_rename_sym, res_age_rename_chr)
  
  # And if we change the names
  res_age_rename_sym <- res_age_rename_sym %>% dplyr::rename(age = years_old)
  res_age_rename_chr <- res_age_rename_chr %>% dplyr::rename(age = years_old)
  
  # Everything is identical
  expect_identical(res, res_age_rename_sym)
  expect_identical(res, res_age_rename_chr)
  
  # Now adding time and model data
  dat_time_model <- dat %>% 
    dplyr::mutate(
      time = sample(c("10yr", "30yr", rep("both", 2)), 10, replace = TRUE),
      model = sample(c("base", "hba1c", "uacr", "sdi", "full"), 10, replace = TRUE)
    )
  
  # Confirming variation in the columns
  expect_gt(length(dat_time_model[["time"]]), 1)
  expect_gt(length(dat_time_model[["model"]]), 1)
  
  # Added `quiet = TRUE` (vignette does not specify)
  res_time_model_in_dat <- est_risk(use_dat = dat_time_model, progress = FALSE)
  
  # Added `quiet = TRUE` (vignette does not specify)
  # Note specification of arguments `model` and `time` in the function call,
  # which will override anything in the columns of the data frame passed to
  # `use_dat`
  res_time_and_model_in_call <- est_risk(
    use_dat = dat_time_model, 
    time = 10, 
    model = "base",
    progress = FALSE
  ) 
  
  expect_equal(unique(res_time_and_model_in_call[["over_years"]]), 10)
  expect_equal(unique(res_time_and_model_in_call[["model"]]), "base") 
  
  res_time_and_model_in_call <- est_risk(
    use_dat = dat_time_model |> dplyr::mutate(model = "base"), 
    model = NULL,
    progress = FALSE
  ) 
  
  expect_equal(unique(res_time_and_model_in_call[["model_input"]]), "base") 
  expect_gt(length(unique(res_time_and_model_in_call[["model"]])), 1)
  
  # Showing identicality of `add_to_dat = TRUE` and `add_to_dat = FALSE` followed
  # by a join
  res_without_dat <- est_risk(
    use_dat = dat_time_model, 
    add_to_dat = FALSE, 
    progress = FALSE
  )
  
  res_with_dat <- est_risk(use_dat = dat_time_model, progress = FALSE)
  
  # Now, let's check identicality of `res_with_dat` with a version we
  # recreate using `dat` and `res_without_dat`
  dat_for_join <- dat_time_model %>% 
    # Add `preventer_id` column ...
    dplyr::mutate(preventr_id = seq_len(nrow(dat_time_model))) %>% 
    # ... and move it to be the first column in the data frame.
    dplyr::relocate(preventr_id) 
  
  # Do left join
  res_with_dat_manual_join <- dat_for_join %>% 
    dplyr::left_join(
      res_without_dat, 
      by = "preventr_id",
      # Because both data frames will have a column named `model`, I'll provide
      # suffixes to distinguish them. The suffixes below will result in the
      # column `model` in `dat_for_join` being renamed to `model_input` and
      # column `model` in the data frame `res_without_dat` retaining the same
      # name.
      suffix = c("_input", "")
    )
  
  expect_identical(res_with_dat, res_with_dat_manual_join) 
  
  # Type stability
  dat_tbl <- dat %>% dplyr::mutate(quiet = TRUE)  
  dat_df <- as.data.frame(dat_tbl)
  
  res_tbl <- est_risk(use_dat = dat_tbl, progress = FALSE) # Return: tibble
  res_df <- est_risk(use_dat = dat_df, progress = FALSE)   # Return: data frame
  
  expect_identical(class(dat_tbl), class(res_tbl))
  expect_identical(class(dat_df), class(res_df))
  
  # Other than the attributes, these are all equal (of course)
  expect_true(all.equal(res_tbl, res_df, check.attributes = FALSE))
  
  if(requireNamespace("data.table", quietly = TRUE)) {
    dat_dt <- data.table::as.data.table(dat_tbl)
    res_dt <- est_risk(use_dat = dat_dt, progress = FALSE) # Return: data.table
    expect_identical(class(dat_dt), class(res_dt))
    expect_true(all.equal(res_tbl, res_dt, check.attributes = FALSE))
  }
  
  dat_with_pce_requests <- dat_time_model %>% 
    dplyr::mutate(
      model = lapply(
        seq_len(nrow(dat)),
        function(x) {
          if(x %% 2 == 0) {
            NA
          } else { 
            list(
              main_model = sample(c("base", "hba1c", "uacr", "sdi", "full"), 1),
              other_models = sample(c("pce_both", "pce_rev", "pce_orig"), 1),
              race_eth = sample(c("Black", "White", "Other"), 1)
            )
          }
        }
      )
    )
  
  res_with_pce_requests <- est_risk(
    use_dat = dat_with_pce_requests, 
    progress = FALSE
  )
  
  identical_cols <- vapply(
    seq_len(nrow(dat_with_pce_requests)),
    
    function(x) {
      n_row <- res_with_pce_requests |> dplyr::filter(preventr_id == x) |> nrow()
      
      identical(
        rep(dat_with_pce_requests[["model"]][x], n_row),
        
        res_with_pce_requests |> 
          dplyr::filter(preventr_id == x) |>
          dplyr::pull(model_input)
      )
    },
    
    logical(1)
  )
  
  expect_true(all(identical_cols))
  
  # Omitted the remaining `res_with_pce_requests` and `dat_with_calls_basic` 
  # portions (nothing of much value to test there)
  
  dat_with_cr_cm_kg <- dat_with_pce_requests %>% 
    dplyr::mutate(
      # Let's use values for `cr` (in mg/dL), `cm`, and `kg` that would yield
      # the values originally entered directly for `egfr` and `bmi` to demonstrate
      # identical results when using the direct values for eGFR and BMI vs. using
      # calls to the convenience functions. This is why the `dat` starts by
      # specifying values for `age`, `sex`, `egfr`, and `bmi`.
      cr = c(1, 1.2, 0.9, 1.2, 0.9, 1.2, 0.8, 1.1, 0.9, 1.3),
      cm = c(199, 182, 184, 197, 189, 187, 191, 163, 199, 171),
      kg = c(148, 109, 127, 111, 134, 126, 134, 76, 74, 113),
      # Now, we'll create new columns for calls for eGFR and BMI (and remember,
      # `dat_with_pce_requests` will already have columns for `egfr` and `bmi`).
      egfr_call = lapply(
        seq_len(nrow(dat_with_pce_requests)),
        function(x) {
          call("calc_egfr", cr = cr[[x]])
        }
      ),
      bmi_call = lapply(
        seq_len(nrow(dat_with_pce_requests)),
        function(x) {
          call("calc_bmi", height = cm[[x]], weight = kg[[x]], units = "metric")
        }
      )
    )
  
  res_with_calls <- est_risk(
    use_dat = dat_with_cr_cm_kg, 
    # Instruct `est_risk()` to use the call columns, else it will default to
    # grabbing values from `egfr` and `bmi`, which have direct values in them
    egfr = "egfr_call", # Again, can pass column names as a character string ...
    bmi = bmi_call,     # ... or as a symbol
    progress = FALSE
  )
  
  res_without_calls <- est_risk(
    use_dat = dat_with_cr_cm_kg,
    # If you don't specify the call columns, `est_risk()` will default to using
    # the columns `egfr` and `bmi`, which have the original, direct values for
    # eGFR and BMI
    progress = FALSE
  )
  
  expect_identical(res_with_calls, res_without_calls)  
  
  # Show identicality of results using non-`est_risk()` approaches
  dat_with_cr_cm_kg <- dat_with_cr_cm_kg %>% 
    dplyr::mutate(preventr_id = seq_len(nrow(dat))) %>% 
    dplyr::relocate(preventr_id)
  
  # Test w/ `lapply()` first
  res_basic_lapply <- lapply(
    # For each row of `dat_with_cr_cm_kg`...
    seq_len(nrow(dat_with_cr_cm_kg)),
    function(x) {
      # ... run `est_risk()` on the values therein
      est_risk(
        age = dat_with_cr_cm_kg[["age"]][[x]],
        sex = dat_with_cr_cm_kg[["sex"]][[x]],
        sbp = dat_with_cr_cm_kg[["sbp"]][[x]],
        bp_tx = dat_with_cr_cm_kg[["bp_tx"]][[x]],
        total_c = dat_with_cr_cm_kg[["total_c"]][[x]],
        hdl_c = dat_with_cr_cm_kg[["hdl_c"]][[x]],
        statin = dat_with_cr_cm_kg[["statin"]][[x]],
        dm = dat_with_cr_cm_kg[["dm"]][[x]],
        smoking = dat_with_cr_cm_kg[["smoking"]][[x]],
        egfr = dat_with_cr_cm_kg[["egfr"]][[x]],
        bmi = dat_with_cr_cm_kg[["bmi"]][[x]],
        hba1c = dat_with_cr_cm_kg[["hba1c"]][[x]],
        uacr = dat_with_cr_cm_kg[["uacr"]][[x]],
        zip = dat_with_cr_cm_kg[["zip"]][[x]],
        model = dat_with_cr_cm_kg[["model"]][[x]],
        time = dat_with_cr_cm_kg[["time"]][[x]],
        quiet = TRUE
      )  %>%
        dplyr::bind_rows() %>%
        # Add column `preventr_id` to facilitate reassociation with the input
        # data frame
        dplyr::mutate(preventr_id = x)
    }
  ) %>%
    # Bind all the results from the `lapply()` call together to make a
    # single data frame
    dplyr::bind_rows() %>% 
    # Finally, do a quick left join to match the results in `res` with their
    # # corresponding input row in `dat`
    dplyr::left_join(
      x = dat_with_cr_cm_kg, 
      y = ., 
      by = "preventr_id",
      # Because both data frames will have a column named `model`, we'll provide
      # suffixes to distinguish them. The suffixes below will cause the column 
      # `model` in `dat_with_cr_cm_kg` to be renamed to `model_input` and column
      # `model` in the data frame from the pipe sequence (represented via `_`) 
      # retaining the same name.
      suffix = c("_input", "")  
    )
  
  # If all has proceeded as it should've, `res_basic_lapply` should be identical
  # to `res_without_calls` (and thus also to `res_with_calls`) from the above 
  # example (spoiler, it will be)
  expect_identical(res_basic_lapply, res_without_calls)
  
  # In what follows, I define a function that allows me to (1) alter the
  # behavior of both the `lapply()` call (by specifying what the first variable
  # in the call to `with()`) and (2) alter the arguments passed to the
  # `est_risk()` call inside the `lapply()` call.
  do_lapply_and_join <- function(dat, with_arg, ..., eval = TRUE) {
    
    dat <- substitute(dat)
    with_arg <- substitute(with_arg)
    dots <- eval(substitute(alist(...)))
    
    mini_cl <- bquote(
      {
        lapply(
          # For each row of `dat`...
          seq_len(nrow(.(dat))),
          function(x) {
            with(
              # With the data mask contained in `with_arg` ...
              .(with_arg),
              # ... run `est_risk()` with the arguments contained within `dots`
              est_risk(..(dots)) 
            ) %>%
              # The vast majority of the following is nearly verbatim as the basic 
              # `lapply()` example; it does not make any further use of 
              # metaprogramming unless otherwise noted
              dplyr::bind_rows() %>%
              dplyr::mutate(preventr_id = x)
          }
        ) %>%
          dplyr::bind_rows() %>% 
          dplyr::left_join(
            x = .(dat),       # Note the use of `.(dat)` 
            y = ., 
            by = "preventr_id",
            suffix = c("_input", "")  
          )
      },
      splice = TRUE           # This tells `bquote()` to splice anything in `..()`
    )
    
    if(eval) eval(mini_cl, parent.frame()) else mini_cl
  }
  
  # Let's start by showing results identical to `res_basic_lapply`
  res_aug_lapply <- do_lapply_and_join(
    dat = dat_with_cr_cm_kg,
    with_arg = dat_with_cr_cm_kg[x, ],
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
    # Because of the data mask passed via argument `with_arg`, the evaluation
    # environment will be row x of the data frame (where x is defined within the
    # `lapply()` call). Thus, `model` will still be a list column, so I need to
    # get that list item out of the list column before passing it to
    # `est_risk()`.
    #
    # For `model`, I could instead do `unlist()`, but given this vignette also
    # demonstrates list columns containing calls (where `unlist()` will not do),
    # I will use `[[1]]` here for consistency. Note I can be confident the list
    # item I need from the list column `model` is indeed the first (and only)
    # list item, and the list item I extract via `[[1]]` will then either be
    # `NA` or a list with list items `main_model`, `other_models`, and
    # `race_eth` given how I created `dat_with_cr_cm_kg`.
    model = model[[1]],
    time = time,
    quiet = TRUE
  )
  
  expect_identical(res_aug_lapply, res_basic_lapply)
  
  res_aug_lapply_variant <- do_lapply_and_join(
    dat = dat_with_cr_cm_kg,
    with_arg = dat_with_cr_cm_kg,
    age = age[[x]],
    sex = sex[[x]],
    sbp = sbp[[x]],
    bp_tx = bp_tx[[x]],
    total_c = total_c[[x]],
    hdl_c = hdl_c[[x]],
    statin = statin[[x]],
    dm = dm[[x]],
    smoking = smoking[[x]],
    egfr = egfr[[x]],
    bmi = bmi[[x]],
    hba1c = hba1c[[x]],
    uacr = uacr[[x]],
    zip = zip[[x]],
    model = model[[x]],
    time = time[[x]],
    quiet = TRUE
  )
  
  expect_identical(res_aug_lapply_variant, res_basic_lapply)
  
  res_aug_lapply_with_calls <- do_lapply_and_join(
    dat = dat_with_cr_cm_kg,
    with_arg = dat_with_cr_cm_kg[x, ],
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    # If needed, review comment associated with generation of 
    # `res_not_so_basic_lapply` to understand why arguments `egfr`, `bmi`,
    # and `model` are specified like this.
    egfr = egfr_call[[1]],
    bmi = bmi_call[[1]],
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = model[[1]],
    time = time,
    quiet = TRUE
  )
  
  expect_identical(res_aug_lapply_with_calls, res_basic_lapply)
  
  res_aug_lapply_with_calls_in_flight <- do_lapply_and_join(
    dat = dat_with_cr_cm_kg,
    with_arg = dat_with_cr_cm_kg[x, ],
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    egfr = call("calc_egfr", cr = cr),
    bmi = call("calc_bmi", height = cm, weight = kg, units = "metric"),
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = model[[1]],
    time = time,
    quiet = TRUE
  )
  
  expect_identical(res_aug_lapply_with_calls_in_flight, res_basic_lapply)
  
  res_auto_opts_in_call <- est_risk(
    use_dat = dat_with_cr_cm_kg,
    model = "base",
    time = "10yr",
    progress = FALSE
  )
  
  res_aug_lapply_opts_in_call <- do_lapply_and_join(
    dat = dat_with_cr_cm_kg,
    with_arg = dat_with_cr_cm_kg[x, ],
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
    model = "base",
    time = "10yr",
    quiet = TRUE
  )
  
  expect_identical(res_auto_opts_in_call, res_aug_lapply_opts_in_call)
  
  # Now let's test with `Map()`
  do_map_and_join <- function(dat, ...) {
    
    dat <- dat %>% dplyr::mutate(preventr_id = seq_len(nrow(dat)))
    dots <- eval(substitute(alist(...)))
    
    res <- eval(
      bquote(
        # With the data mask introduced by `dat`, evaluate `Map()` with the
        # function `est_risk()` and the arguments contained in `dots`.
        # (In other words, call `est_risk()` with the arguments in dots for
        # each row of `dat`.) 
        with(dat, Map(est_risk, ..(dots))),
        splice = TRUE
      )
    )
    
    # `res` from the above call to `Map()` will be a list, and the items in
    # the list may also be a list (e.g., a list of data frames), as such, we'll
    # need to iterate through `res` and bind the data frames together. We'll also
    # need to add the `preventr_id` column.
    for(i in seq_along(res)) {
      res[[i]] <- res[[i]] %>% 
        dplyr::bind_rows() %>%
        dplyr::mutate(preventr_id = i) %>% 
        dplyr::relocate(preventr_id)
    }
    
    # Now just do the left join, detailed previously in this vignette.
    dplyr::left_join(
      x = dat, 
      y = dplyr::bind_rows(res), 
      by = "preventr_id",
      suffix = c("_input", "")  
    )
  }
  
  res_map <- do_map_and_join(
    dat_with_cr_cm_kg,
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
    model = "base",
    time = "10yr",
    quiet = TRUE
  )
  
  expect_identical(res_auto_opts_in_call, res_map)
  
  res_map_all_cols <- do_map_and_join(
    dat_with_cr_cm_kg,
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    # Note I'm passing the call columns here, showing you can still use the
    # convenience functions (stored as calls in list columns) with `Map()`
    egfr = egfr_call,
    bmi = bmi_call,
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = model,
    time = time,
    quiet = TRUE
  )
  
  expect_identical(res_map_all_cols, res_basic_lapply)
  
  res_map_only_10yr_hba1c_not_quiet <- do_map_and_join(
    dat_with_cr_cm_kg,
    age = age,
    sex = sex,
    sbp = sbp,
    bp_tx = bp_tx,
    total_c = total_c,
    hdl_c = hdl_c,
    statin = statin,
    dm = dm,
    smoking = smoking,
    egfr = egfr_call,
    bmi = bmi_call,
    hba1c = hba1c,
    uacr = uacr,
    zip = zip,
    model = "hba1c",
    time = "10yr",
    quiet = FALSE
  )
  
  # Despite `dat_with_cr_cm_kg` having column `model` in the data frame,
  # the `model` argument in the call to `est_risk()` (via `Map()`) gets priority.
  expect_gt(length(dat_with_cr_cm_kg[["model"]]), 1)
  expect_gt(length(dat_with_cr_cm_kg[["time"]]), 1)
  
  expect_equal(unique(res_map_only_10yr_hba1c_not_quiet[["over_years"]]), 10)
  expect_equal(unique(res_map_only_10yr_hba1c_not_quiet[["model"]]), "hba1c")
  
  # `purrr::pmap()`
  if(requireNamespace("purrr", quietly = TRUE)) {
    pmap_data_frame_approach <- 
      dat_with_cr_cm_kg %>%
      # Remove columns not corresponding to an argument in `est_risk()`
      dplyr::select(-c(preventr_id, cr, cm, kg, egfr_call, bmi_call)) %>% 
      purrr::pmap(est_risk)
    
    # Very similar to the `Map()` examples above, we'll need to bind the results
    # from `purrr::pmap()` together and do some other minor actions, so I've 
    # converted that into a mini-function to avoid repetition in these examples.
    combine_pmap_res_and_join <- function(pmap_res, dat) {
      for(i in seq_along(pmap_res)) {
        pmap_res[[i]] <- pmap_res[[i]] %>% 
          dplyr::bind_rows() %>%
          dplyr::mutate(preventr_id = i) %>% 
          dplyr::relocate(preventr_id)
      }
      
      dplyr::left_join(
        x = dat, 
        y = dplyr::bind_rows(pmap_res), 
        by = "preventr_id",
        suffix = c("_input", "")  
      )
    }
    
    pmap_data_frame_approach <- 
      combine_pmap_res_and_join(pmap_data_frame_approach, dat_with_cr_cm_kg)
    
    expect_identical(pmap_data_frame_approach, res_basic_lapply)
    
    pmap_list_approach <- purrr::pmap(
      with(
        dat_with_cr_cm_kg,
        list(
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
          # Note passing an explicitly-delineated list for argument `.l` allows us
          # to easily specify the `quiet` argument here
          quiet = TRUE
        )
      ),
      est_risk
    )
    
    pmap_list_approach <- 
      combine_pmap_res_and_join(pmap_list_approach, dat_with_cr_cm_kg)
    
    expect_identical(pmap_list_approach, res_basic_lapply)
    
    pmap_list_approach_with_call <- purrr::pmap(
      with(
        dat_with_cr_cm_kg,
        list(
          age = age,
          sex = sex,
          sbp = sbp,
          bp_tx = bp_tx,
          total_c = total_c,
          hdl_c = hdl_c,
          statin = statin,
          dm = dm,
          smoking = smoking,
          egfr = egfr_call,
          bmi = bmi_call,
          hba1c = hba1c,
          uacr = uacr,
          zip = zip,
          model = model,
          time = time,
          quiet = TRUE
        )
      ),
      est_risk
    )
    
    pmap_list_approach_with_call <- 
      combine_pmap_res_and_join(pmap_list_approach_with_call, dat_with_cr_cm_kg)
    
    expect_identical(pmap_list_approach_with_call, res_basic_lapply)
  }
})

test_that("app() function works", {
  skip_on_cran()
  expect_null(app())
})