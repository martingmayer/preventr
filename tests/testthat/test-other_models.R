test_that("pce model componentry behaves correctly", {
  
  # These other models are really a port of code I've written for other use cases
  # where the fidelity of the code has been vetted as part of those use cases,
  # but still want to test as implemented here, to include both tests for
  # functionality specific to this package (e.g., how the results are offered
  # to the end user) and accuracy per se
  
  # Tests of messages and input checking ----
  # Messages if trying to call the PCE models outside of `estimate_risk()`
  expect_message(
    pce_model(50, "female", "white", 0, 1, 200, 40, 150, 1),
    message_about_internal_fx_use(
      model_used_externally,
      quiet = FALSE
    )
  )
  
  expect_message(
    pce_rev_model(50, "male", "black", 0, 1, 200, 40, 150, 1),
    message_about_internal_fx_use(
      model_used_externally,
      quiet = FALSE
    )
  )
  
  expect_no_message(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = FALSE
    ),
    # Need to specify the message here, b/c when main fx runs, it will
    # specify the model used to generate the estimates
    message = model_used_externally
  )
  
  expect_no_message(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      model = list(other_models = "pce_rev", race_eth = "W"), 
      quiet = FALSE
    ),
    # Need to specify the message here, b/c when main fx runs, it will
    # specify the model used to generate the estimates
    message = model_used_externally
  )
  
  expect_no_message(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      model = list(other_models = "pce_orig", race_eth = "W"), 
      quiet = FALSE
    ),
    # Need to specify the message here, b/c when main fx runs, it will
    # specify the model used to generate the estimates
    message = model_used_externally
  )
  
  # Ability to suppress messages
  expect_no_message(
    pce_model(50, "female", "white", 0, 1, 200, 40, 150, 1, quiet = TRUE)
  )
  
  expect_no_message(
    pce_rev_model(50, "male", "black", 0, 1, 200, 40, 150, 1, quiet = TRUE)
  )
  
  # `model` arg test
  prob_tibble <- tibble_of_nas(
    is_valid_model(list(comparison_model = "pce_both", race_eth = "B"), quiet = FALSE)
  )
  
  expect_identical(
    estimate_risk_partial(
      model = list(comparison_model = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(risk_est_10yr = prob_tibble, risk_est_30yr = prob_tibble)
  )
  
  prob_tibble <- tibble_of_nas(
    is_valid_model(list(other_models = "pce_rev", demographic_info = "B"), quiet = FALSE)
  )
  
  expect_identical(
    estimate_risk_partial(
      model = list(other_models = "pce_rev", demographic_info = "B"), 
      quiet = TRUE
    ),
    list(risk_est_10yr = prob_tibble, risk_est_30yr = prob_tibble)
  )
  
  prob_tibble <- tibble_of_nas(
    is_valid_model(list(comparison_model = "pce_orig", demographic_info = "B"), quiet = FALSE)
  )
  
  expect_identical(
    estimate_risk_partial(
      model = list(comparison_model = "pce_orig", demographic_info = "B"), 
      quiet = TRUE
    ),
    list(risk_est_10yr = prob_tibble, risk_est_30yr = prob_tibble)
  )
  
  # NA returns if called outside of `est_risk()` or `estimate_risk()` but
  # invalid input
  expect_identical(test_pce_models(age = 112358), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(sex = "not telling you"), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(race_eth = "yes"), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(dm = list("maybe")), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(smoking = 8675309), c(NA_real_, NA_real_))
  
  expect_identical(
    test_pce_models(total_c = data.frame(a = 10)),
    c(NA_real_, NA_real_)
  )
  
  expect_identical(test_pce_models(hdl_c = FALSE), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(sbp = NA), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(bp_tx = NA), c(NA_real_, NA_real_))
  
  expect_identical(test_pce_models(sex = "female"), test_pce_models(sex = "f"))
  expect_identical(test_pce_models(sex = "male"), test_pce_models(sex = "m"))
  expect_identical(
    test_pce_models(race_eth = "b"), 
    test_pce_models(race_eth = "black")
  )
  expect_identical(
    test_pce_models(race_eth = "B"), 
    test_pce_models(race_eth = "black")
  )
  expect_identical(
    test_pce_models(race_eth = "Black"), 
    test_pce_models(race_eth = "black")
  )
  expect_identical(
    test_pce_models(race_eth = "w"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(
    test_pce_models(race_eth = "W"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(
    test_pce_models(race_eth = "White"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(
    test_pce_models(race_eth = "other"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(
    test_pce_models(race_eth = "o"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(
    test_pce_models(race_eth = "Other"), 
    test_pce_models(race_eth = "white")
  )
  expect_identical(test_pce_models(dm = TRUE), test_pce_models(dm = 1))
  expect_identical(test_pce_models(dm = FALSE), test_pce_models(dm = 0))
  expect_identical(test_pce_models(smoking = TRUE), test_pce_models(smoking = 1))
  expect_identical(test_pce_models(smoking = FALSE), test_pce_models(smoking = 0))
  expect_identical(test_pce_models(bp_tx = TRUE), test_pce_models(bp_tx = 1))
  expect_identical(test_pce_models(bp_tx = FALSE), test_pce_models(bp_tx = 0))
  
  # Test ability to use mmol/L or mg/dL
  for(race_eth_opt in c(valid[["race_eth_pce"]], tolower(valid[["race_eth_pce"]]))) {
    for(sex_opt in valid[["sex"]]) {
      for(chol_unit_opt in c("mmol", "mmol/L")) {
        
          res_mg <- test_pce_models(sex = sex_opt, race_eth = race_eth_opt)
          
          res_mmol <- test_pce_models(
            sex = sex_opt,
            total_c = convert_chol_to_mmol(200),
            hdl_c = convert_chol_to_mmol(40),
            race_eth = race_eth_opt,
            chol_unit = chol_unit_opt
          )
          
          expect_identical(res_mg, res_mmol)
          expect_equal(sum(is.na(res_mg)), 0)
      }
    }
  }
  
  # Tests of accuracy ----
  # `test_results_default` is intended to be used with `estimate_risk_partial()`
  test_results_default <- list(
    risk_est_10yr = dplyr::tibble(
      total_cvd = c(0.147, NA, NA),
      ascvd = c(0.092, 0.064, 0.063),  
      heart_failure = c(0.081, NA, NA),
      chd = c(0.044, NA, NA),
      stroke = c(0.054, NA, NA), 
      model = c("base", "pce_orig", "pce_rev"),
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
  
  # Initial test w/ `race_eth` == "W"
  expect_equal(
    estimate_risk_partial(model = list(other_models = "pce_both", race_eth = "W"), quiet = TRUE),
    test_results_default
  )
  
  # As long as required vars present w/in `model` as a list, everything should 
  # run, and superfluous args should be ignored
  expect_equal(
    estimate_risk_partial(
      model = list(
        other_models = "pce_both", 
        race_eth = "W", 
        extra_stuff = TRUE, # superfluous, but will be discarded
        extray_extra_stuff = list(a = 1, b = FALSE, c = "charlie"), # same
        mo_extra_than_the_other_extra_stuff = data.frame( # same
          x = 1:10, y = letters[1:10], z = rnorm(10)
        )
      ), 
      quiet = TRUE
    ),
    test_results_default
  )
  
  # If required vars are present w/in `model` as a list, but their values are
  # invalid, still run PREVENT, return NAs for the other models
  
  # Edit `test_results_default` to reflect the expected output 
  test_results_mod <- test_results_default
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::mutate(
      ascvd = dplyr::case_when(
        model %in% c("pce_orig", "pce_rev") ~ NA_real_,
        .default = ascvd
      ),
      over_years = dplyr::case_when(
        model %in% c("pce_orig", "pce_rev") ~ NA_real_,
        .default = over_years
      ),
      # `input_problems` being based on `race_eth` being NA
      # (hence `is_valid_race_eth()` call with NA and `quiet = FALSE`)
      input_problems = dplyr::case_when(
        model %in% c("pce_orig", "pce_rev") ~ is_valid_race_eth(NA, "pce", quiet = FALSE),
        .default = input_problems
      ),
      model = dplyr::case_when(
        model %in% c("pce_orig", "pce_rev") ~ "none",
        .default = model
      )
    )
  
  expect_equal(
    estimate_risk_partial(
      model = list(
        other_models = "pce_both", 
        race_eth = NA, # invalid input, consistent w/ intent expressed above
        extra_stuff = TRUE, # superfluous, but will be discarded
        extray_extra_stuff = list(a = 1, b = FALSE, c = "charlie"), # same
        mo_extra_than_the_other_extra_stuff = data.frame( # same
          x = 1:10, y = letters[1:10], z = rnorm(10)
        )
      ), 
      quiet = TRUE
    ),
    test_results_mod
  )
  
  # To prep for next test, where there should be only one row of NAs
  # for the PCEs, just use `dplyr::distinct()`, as it will remove one of the
  # rows of NAs (given when there's a row of NAs, `model` is also set to "none")
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::distinct() 
  
  expect_equal(
    estimate_risk_partial(
      model = list(
        other_models = "pce_rev", # --> only one row for PCEs (still NAs)
        race_eth = NA
      ), 
      quiet = TRUE
    ),
    test_results_mod
  )
  
  # Now edit `test_results_mod` a bit to test for when `other_models` is invalid
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::mutate(
      input_problems = dplyr::case_when(
        model == "none" ~ is_valid_other_models("pce_foo", quiet = FALSE),
        .default = input_problems
      )
    )
  
  expect_equal(
    estimate_risk_partial(
      model = list(other_models = "pce_foo", race_eth = "B"), 
      quiet = TRUE
    ),
    test_results_mod
  )
  
  # Now edit `test_results_mod` a bit to test for when `race_eth` and
  # `other_models` are both invalid 
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::mutate(
      input_problems = dplyr::case_when(
        model == "none" ~ paste0(
          is_valid_race_eth(NA, "pce", quiet = FALSE),
          "; ",
          is_valid_other_models("pce_foo", quiet = FALSE)
        ),
        .default = input_problems
      )
    )
  
  expect_equal(
    estimate_risk_partial(
      model = list(
        other_models = "pce_foo", 
        race_eth = NA
      ), 
      quiet = TRUE
    ),
    test_results_mod
  )
  
  # Testing equivalence of "W" and "O" for var `race_eth`
  expect_equal(
    estimate_risk_partial(model = list(other_models = "pce_both", race_eth = "W"), quiet = TRUE),
    estimate_risk_partial(model = list(other_models = "pce_both", race_eth = "O"), quiet = TRUE)
  )
  
  # Initial test w/ `race_eth` == "B"
  test_results_mod <- test_results_default
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::mutate(
      ascvd = dplyr::case_when(
        model == "pce_orig" ~ 0.245,
        model == "pce_rev" ~ 0.13,
        .default = ascvd
      )
    )
  
  expect_equal(
    estimate_risk_partial(model = list(other_models = "pce_both", race_eth = "B"), quiet = TRUE),
    test_results_mod
  )
  
  # Requesting only the revised PCE model
  test_results_mod_pce_rev_only <- test_results_mod
  test_results_mod_pce_rev_only[["risk_est_10yr"]] <- 
    test_results_mod_pce_rev_only[["risk_est_10yr"]] %>%
    dplyr::filter(model %in% c("base", "pce_rev"))
  
  expect_equal(
    estimate_risk_partial(model = list(other_models = "pce_rev", race_eth = "B"), quiet = TRUE),
    test_results_mod_pce_rev_only
  )
  
  # Requesting only the original PCE model
  test_results_mod_pce_orig_only <- test_results_mod
  test_results_mod_pce_orig_only[["risk_est_10yr"]] <- 
    test_results_mod_pce_orig_only[["risk_est_10yr"]] %>%
    dplyr::filter(model %in% c("base", "pce_orig"))
  
  expect_equal(
    estimate_risk_partial(model = list(other_models = "pce_orig", race_eth = "B"), quiet = TRUE),
    test_results_mod_pce_orig_only
  )
  
  # Test other params
  
  # `age` = 67
  test_results_age_67 <- list(
    risk_est_10yr = dplyr::tibble(
      total_cvd = c(0.23, NA, NA),
      ascvd = c(0.14, 0.27, 0.214),  
      heart_failure = c(0.147, NA, NA),
      chd = c(0.073, NA, NA),
      stroke = c(0.079, NA, NA), 
      model = c("base", "pce_orig", "pce_rev"),
      over_years = 10,
      input_problems = NA_character_
    ),
    
    risk_est_30yr = dplyr::tibble(
      total_cvd = 0.514, 
      ascvd = 0.329, 
      heart_failure = 0.39,
      chd = 0.188, 
      stroke = 0.194, 
      model = "base", 
      over_years = 30,
      input_problems = "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
    )
  )
  
  expect_equal(
    estimate_risk_partial(
      age = 67, 
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    test_results_age_67
  )
  
  # Confirm ability to select time frame, even with other models
  test_results_mod <- test_results_age_67[["risk_est_10yr"]]
  
  expect_equal(
    estimate_risk_partial(
      age = 67, 
      model = list(other_models = "pce_both", race_eth = "W"),
      time = 10,
      quiet = TRUE
    ),
    test_results_mod
  )
  
  test_results_mod <- test_results_age_67
  test_results_mod[["risk_est_10yr"]] <- test_results_mod[["risk_est_10yr"]] %>%
    dplyr::filter(model != "base")
  
  expect_equal(
    estimate_risk_partial(
      age = 67, 
      model = list(other_models = "pce_both", race_eth = "W"),
      time = 30,
      quiet = TRUE
    ),
    test_results_mod
  )
  
  # ... now change `sex` to "male", and also drop `age` back to 59 to avoid 
  # repeating warning for >59 yo when predicting risk over 30 years
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.211, NA, NA),
        ascvd = c(0.134, 0.262, 0.182),  
        heart_failure = c(0.146, NA, NA),
        chd = c(0.075, NA, NA),
        stroke = c(0.07, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.518, 
        ascvd = 0.355, 
        heart_failure = 0.433,
        chd = 0.222, 
        stroke = 0.203, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `sbp` to 148
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.187, NA, NA),
        ascvd = c(0.117, 0.232, 0.169),  
        heart_failure = c(0.127, NA, NA),
        chd = c(0.066, NA, NA),
        stroke = c(0.059, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.487, 
        ascvd = 0.325, 
        heart_failure = 0.402,
        chd = 0.204, 
        stroke = 0.178, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `bp_tx` to FALSE
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.153, NA, NA),
        ascvd = c(0.1, 0.2, 0.176),  
        heart_failure = c(0.102, NA, NA),
        chd = c(0.06, NA, NA),
        stroke = c(0.047, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.437, 
        ascvd = 0.299, 
        heart_failure = 0.35,
        chd = 0.196, 
        stroke = 0.152, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `total_c` to 189
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 189,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.151, NA, NA),
        ascvd = c(0.096, 0.19, 0.169),  
        heart_failure = c(0.102, NA, NA),
        chd = c(0.056, NA, NA),
        stroke = c(0.046, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.433, 
        ascvd = 0.29, 
        heart_failure = 0.35,
        chd = 0.185, 
        stroke = 0.151, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `hdl_c` to 60 and `total_c` back to 200
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.136, NA, NA),
        ascvd = c(0.084, 0.164, 0.147),  
        heart_failure = c(0.102, NA, NA),
        chd = c(0.045, NA, NA),
        stroke = c(0.044, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.401, 
        ascvd = 0.258, 
        heart_failure = 0.35,
        chd = 0.151, 
        stroke = 0.145, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `race_eth` to "B" (note PREVENT won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      model = list(other_models = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.136, NA, NA),
        ascvd = c(0.084, 0.175, 0.146),  
        heart_failure = c(0.102, NA, NA),
        chd = c(0.045, NA, NA),
        stroke = c(0.044, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.401, 
        ascvd = 0.258, 
        heart_failure = 0.35,
        chd = 0.151, 
        stroke = 0.145, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `statin` to TRUE (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      statin = TRUE,
      model = list(other_models = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.123, NA, NA),
        ascvd = c(0.079, 0.175, 0.146),  
        heart_failure = c(0.102, NA, NA),
        chd = c(0.043, NA, NA),
        stroke = c(0.04, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.399, 
        ascvd = 0.263, 
        heart_failure = 0.35,
        chd = 0.159, 
        stroke = 0.144, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `dm` to TRUE
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      statin = TRUE,
      dm = FALSE,
      model = list(other_models = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.067, NA, NA),
        ascvd = c(0.043, 0.096, 0.074),  
        heart_failure = c(0.048, NA, NA),
        chd = c(0.023, NA, NA),
        stroke = c(0.023, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.301, 
        ascvd = 0.194, 
        heart_failure = 0.236,
        chd = 0.112, 
        stroke = 0.107, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `smoking` to TRUE
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      statin = TRUE,
      dm = FALSE,
      smoking = TRUE,
      model = list(other_models = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.096, NA, NA),
        ascvd = c(0.06, 0.16, 0.135),  
        heart_failure = c(0.074, NA, NA),
        chd = c(0.032, NA, NA),
        stroke = c(0.032, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.334, 
        ascvd = 0.213, 
        heart_failure = 0.271,
        chd = 0.122, 
        stroke = 0.119, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now change `egfr` to 67 (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      age = 59, 
      sex = "male",
      sbp = 148,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c =  60,
      statin = TRUE,
      dm = FALSE,
      smoking = TRUE,
      egfr = 67,
      model = list(other_models = "pce_both", race_eth = "B"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.099, NA, NA),
        ascvd = c(0.062, 0.16, 0.135),  
        heart_failure = c(0.076, NA, NA),
        chd = c(0.033, NA, NA),
        stroke = c(0.033, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.355, 
        ascvd = 0.228, 
        heart_failure = 0.291,
        chd = 0.132, 
        stroke = 0.128, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now "reset" most vars, but change `bmi` to 28
  expect_equal(
    estimate_risk_partial(
      bmi = 28,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.147, NA, NA),
        ascvd = c(0.092, 0.064, 0.063),  
        heart_failure = c(0.061, NA, NA),
        chd = c(0.044, NA, NA),
        stroke = c(0.054, NA, NA), 
        model = c("base", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.53, 
        ascvd = 0.354, 
        heart_failure = 0.326,
        chd = 0.198, 
        stroke = 0.221, 
        model = "base", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now specify hba1c is 9 (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      bmi = 28,
      hba1c = 9,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.161, NA, NA),
        ascvd = c(0.1, 0.064, 0.063),  
        heart_failure = c(0.079, NA, NA),
        chd = c(0.053, NA, NA),
        stroke = c(0.052, NA, NA), 
        model = c("hba1c", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.536, 
        ascvd = 0.352, 
        heart_failure = 0.375,
        chd = 0.214, 
        stroke = 0.199, 
        model = "hba1c", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now specify zip is 46350 and remove hba1c (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      bmi = 28,
      zip = 46350,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.144, NA, NA),
        ascvd = c(0.092, 0.064, 0.063),  
        heart_failure = c(0.062, NA, NA),
        chd = c(0.045, NA, NA),
        stroke = c(0.052, NA, NA), 
        model = c("sdi", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.514, 
        ascvd = 0.348, 
        heart_failure = 0.322,
        chd = 0.201, 
        stroke = 0.215, 
        model = "sdi", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now specify uacr is 460 and remove zip (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      bmi = 28,
      uacr = 460,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.228, NA, NA),
        ascvd = c(0.137, 0.064, 0.063),  
        heart_failure = c(0.11, NA, NA),
        chd = c(0.069, NA, NA),
        stroke = c(0.081, NA, NA), 
        model = c("uacr", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.61, 
        ascvd = 0.416, 
        heart_failure = 0.426,
        chd = 0.248, 
        stroke = 0.265, 
        model = "uacr", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # ... now specify hba1c, zip, and uacr (note PCEs won't change cf the above)
  expect_equal(
    estimate_risk_partial(
      bmi = 28,
      hba1c = 9,
      zip = 46350,
      uacr = 460,
      model = list(other_models = "pce_both", race_eth = "W"), 
      quiet = TRUE
    ),
    list(
      risk_est_10yr = dplyr::tibble(
        total_cvd = c(0.235, NA, NA),
        ascvd = c(0.141, 0.064, 0.063),  
        heart_failure = c(0.128, NA, NA),
        chd = c(0.078, NA, NA),
        stroke = c(0.074, NA, NA), 
        model = c("full", "pce_orig", "pce_rev"),
        over_years = 10,
        input_problems = NA_character_
      ),
      
      risk_est_30yr = dplyr::tibble(
        total_cvd = 0.596, 
        ascvd = 0.401, 
        heart_failure = 0.444,
        chd = 0.256, 
        stroke = 0.235, 
        model = "full", 
        over_years = 30,
        input_problems = NA_character_
      )
    )
  )
  
  # Test ability to use mmol/L or mg/dL
  for(other_model_opt in valid[["other_models"]]) {
    for(race_eth_opt in c(valid[["race_eth_pce"]], tolower(valid[["race_eth_pce"]]))) {
      for(chol_unit_opt in c("mmol", "mmol/L")) {
        
        res_mg <- est_risk_partial(
          model = list(other_models = other_model_opt, race_eth = race_eth_opt),
          quiet = TRUE
        )
        
        res_mmol <- est_risk_partial(
          total_c = convert_chol_to_mmol(200),
          hdl_c = convert_chol_to_mmol(45),
          chol_unit = chol_unit_opt,
          model = list(other_models = other_model_opt, race_eth = race_eth_opt),
          quiet = TRUE
        )
        
        expect_identical(res_mg, res_mmol)
        
        expected_10yr_nas <- if(other_model_opt == "pce_both") 8 else 4
        
        expect_equal(count_nas_from_res(res_mg[["risk_est_10yr"]]), expected_10yr_nas)
        expect_equal(count_nas_from_res(res_mg[["risk_est_30yr"]]), 0)
      }
    }
  }
  
  # Now run other local tests (skip on CRAN)
  skip_on_cran()
  if(
    interactive() && 
    file.exists("~/GitHub/cv_risk_multiple_equations_testing") &&
    requireNamespace("devtools", quietly = TRUE)
  ) {
    
    on.exit(
      detach("package:cv_risk_multiple_equations_testing"),
      add = TRUE,
      after = FALSE
    )
    
    devtools::load_all("~/GitHub/cv_risk_multiple_equations_testing")
    
    expect_message(
      res <- test_what("pce_and_mesa", msg_success = "success!"),
      "success!"
    )
    
    expect_equal(nrow(res$problems), 0)
  }
})