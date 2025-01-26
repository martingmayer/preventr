test_that("CKD-EPI function works", {
  
  # Message if using outside of exported fx
  expect_message(
    res <- calc_egfr(1.5, age = 43, sex = "f"),
    message_about_internal_fx_use(
      "this function will not reject extreme values for creatinine",
      quiet = FALSE
    )
  )
  
  expect_equal(res, 44)
  
  expect_message(
    res <- calc_egfr(88, age = 43, sex = "m", units = "umol"),
    message_about_internal_fx_use(
      "this function will not reject extreme values for creatinine",
      quiet = FALSE
    )
  )
  
  expect_equal(res, 96)
  
  # Messaging about invalid input
  egfr_requested <- TRUE    # To suppress warning about external calls
  
  expect_message(
    res <- calc_egfr(FALSE, age = 44, sex = "f", units = "umol"),
    "eGFR calculation requires `cr` to be a single number > 0",
  )
  
  expect_equal(res, NA_real_)
  
  expect_message(
    res <- calc_egfr(FALSE, age = "this many years old", sex = "f", units = "umol"),
    paste0(
      "eGFR calculation requires `cr` to be a single number > 0, ",
      "`age` to be a single number where 18 <= number <= 100"
    )
  )
  
  expect_equal(res, NA_real_)
  
  expect_message(
    res <- calc_egfr(88, age = 44, sex = NA, units = "umol"),
    "eGFR calculation requires `sex` to be"
  )
  
  expect_equal(res, NA_real_)
  
  expect_message(
    res <- calc_egfr(88, age = 44, sex = "f", units = "not"),
    "eGFR calculation requires `units` to be "
  )
  
  expect_equal(res, NA_real_)
  
  egfr_requested <- FALSE    # Stop suppressing if external call
  
  # Test population of `input_problems` column
  expect_equal(
    estimate_risk(
      age = 43,
      sex = "f234",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = calc_egfr(-5, units = FALSE),
      bmi = 22,
      time = 10,
      quiet = TRUE
    )[["input_problems"]],
    paste0(
      "`sex` entered as \"f234\", but must be one of \"female\", \"f\", \"male\", \"m\"; ",
      "`egfr` entered as NA (eGFR calculation requires `cr` to be a single number > 0, ",
      "`sex` to be \"female\" (or \"f\") or \"male\" (or \"m\"), `units` to be ",
      "one of \"mg/dL\" (or \"mg\") or \"umol/L\" (or \"umol\")), but must be ",
      "between 15 and 140"
    )
  )
  
  # Ability to suppress messages
  expect_no_message(calc_egfr(1.5, age = 43, sex = "f", quiet = TRUE))
  expect_no_message(calc_egfr(88, age = 43, sex = "m", units = "umol", quiet = TRUE))
  expect_no_message(calc_egfr(FALSE, age = "this old", sex = NA, units = "no", quiet = TRUE))
  
  # No message if used within exported fx
  expect_no_message(
    estimate_risk(
      age = 43,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = calc_egfr(1.5),
      bmi = 22
    ),
    # Need to specify message here, b/c when model runs, it will say what
    # model it's using
    message = "this function will not reject extreme values for creatinine",
  )
  
  # Additional testing for accuracy of estimation and fidelity of fx
  expect_equal(
    calc_egfr(1.5, age = 55, sex = "female", quiet = TRUE),
    41
  )
  
  expect_equal(
    calc_egfr(1.5, age = 55, sex = "female", quiet = TRUE),
    calc_egfr(1.5, units = "mg", age = 55, sex = "female", quiet = TRUE)
  )
  
  expect_equal(
    calc_egfr(1.5, units = "mg/dL", age = 55, sex = "female", quiet = TRUE),
    calc_egfr(1.5, units = "mg", age = 55, sex = "female", quiet = TRUE)
  )
  
  expect_equal(
    calc_egfr(1.5, age = 55, sex = "male", quiet = TRUE),
    55
  )
  
  expect_equal(
    calc_egfr(1.5, age = 43, sex = "m", quiet = TRUE),
    59
  )
  
  expect_equal(
    calc_egfr(1.5, age = 43, sex = "f", quiet = TRUE),
    44
  )
  
  expect_equal(
    calc_egfr(102, units = "umol", age = 43, sex = "f", quiet = TRUE),
    60
  )
  
  expect_equal(
    calc_egfr(111, units = "umol", age = 77, sex = "m", quiet = TRUE),
    59
  )
  
  expect_equal(
    calc_egfr(111, units = "umol", age = 77, sex = "m", quiet = TRUE),
    calc_egfr(111, units = "umol/L", age = 77, sex = "m", quiet = TRUE)
  )
  
  expect_equal(
    estimate_risk(
      age = 43,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = calc_egfr(1.5),
      bmi = 22
    ),
    estimate_risk(
      age = 43,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 44,
      bmi = 22
    )
  )
  
  expect_equal(
    estimate_risk(
      age = 43,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = calc_egfr(155, "umol"),
      bmi = 22
    ),
    estimate_risk(
      age = 43,
      sex = "f",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 37,
      bmi = 22
    )
  )
  
})

test_that("BMI calculation works", {
  
  # Message if using outside of exported fx
  expect_message(
    res <- calc_bmi(242, 67),
    message_about_internal_fx_use(
      "this function will not reject extreme values for height and weight",
      quiet = FALSE
    )
  )
  
  expect_equal(res, 37.9)
  
  expect_message(
    res <- calc_bmi(120, 168, units = "metric"),
    message_about_internal_fx_use(
      "this function will not reject extreme values for height and weight",
      quiet = FALSE
    )
  )
  
  expect_equal(res, 42.5)
  
  # Messaging about invalid input
  bmi_requested <- TRUE    # To suppress warning about external calls
  
  expect_message(
    res <- calc_bmi(FALSE, 68),
    "BMI calculation requires `weight` to be a single number > 0",
  )
  
  expect_equal(res, NA_real_)
  
  expect_message(
    res <- calc_bmi(150, FALSE),
    "BMI calculation requires `height` to be a single number > 0",
  )
  
  expect_equal(res, NA_real_)
  
  expect_message(
    res <- calc_bmi(FALSE, 68, units = "not"),
    paste0(
      "BMI calculation requires `weight` to be a single number > 0, `units` to ",
      "be one of "
    )
  )
  
  expect_equal(res, NA_real_)
  
  bmi_requested <- FALSE    # Stop suppressing if external call
  
  # Test population of `input_problems` column
  expect_equal(
    estimate_risk(
      age = 43,
      sex = "female",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 68,
      bmi = calc_bmi("a", "b", FALSE),
      time = 10,
      quiet = TRUE
    )[["input_problems"]],
    paste0(
      "`bmi` entered as NA (BMI calculation requires `weight` to be a single ",
      "number > 0, `height` to be a single number > 0, `units` to be one of ",
      "\"metric\" or \"nonmetric\"), but must be between 18.5 and 39.9"
    )
  )
  
  # Ability to suppress messages
  expect_no_message(calc_bmi(242, 67, quiet = TRUE))
  expect_no_message(calc_bmi(120, 168, units = "metric", quiet = TRUE))
  
  # No message if used within exported fx
  expect_no_message(
    estimate_risk(
      age = 50,
      sex = "m",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 88,
      bmi = calc_bmi(154, 70)
    ),
    # Need to specify message here, b/c when model runs, it will say what
    # model it's using
    message = "this function will not reject extreme values for height and weight"
  )
  
  # Additional testing for accuracy of estimation and fidelity of fx
  
  # Metric
  expect_equal(
    calc_bmi(70, 175, "metric", quiet = TRUE),
    22.9
  )
  
  expect_equal(
    calc_bmi(111, 188, "metric", quiet = TRUE),
    31.4
  )
  
  # Nonmetric
  expect_equal(
    calc_bmi(154, 70, quiet = TRUE),
    22.1
  )
  
  expect_equal(
    calc_bmi(242, 67, quiet = TRUE),
    37.9
  )
  
  expect_equal(
    estimate_risk(
      age = 50,
      sex = "m",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 88,
      bmi = calc_bmi(154, 70)
    ),
    estimate_risk(
      age = 50,
      sex = "m",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 88,
      bmi = 22.1
    )
  )
  
  expect_equal(
    estimate_risk(
      age = 50,
      sex = "m",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 88,
      bmi = calc_bmi(111, 180, "metric")
    ),
    estimate_risk(
      age = 50,
      sex = "m",
      sbp = 120,
      bp_tx = FALSE,
      total_c = 200,
      hdl_c = 50,
      statin = FALSE,
      dm = FALSE,
      smoking = FALSE,
      egfr = 88,
      bmi = 34.3
    )
  )
})

test_that("You can pass calls in the data frame when using `use_dat`", {
  # Initial test, using dat that's a mixture of calls and reported values
  n <- 10
  
  dat <- make_dat(n = n) %>%
    dplyr::mutate(
      egfr = lapply(
        seq_len(n),
        function(x) {
          if(x %% 2 == 0) {
            call("calc_egfr", cr = sample(seq(0.5, 1.5, 0.1), 1))
          } else {
            sample(45:90, 1)
          }
        }
      ),
      bmi = lapply(
        seq_len(n),
        function(x) {
          if(x %% 2 == 0) {
            call(
              "calc_bmi", 
              height = sample(60:78, 1),
              weight = sample(110:200, 1)
            )
          } else {
            sample(20:38, 1)
          }
        }
      )
    )
  
  make_lapply_dat <- function(dat) {
    dat %>%
      dplyr::rename(model_input = model) %>%
      dplyr::mutate(preventr_id = seq_len(n)) %>%
      dplyr::relocate(preventr_id)
  }
  
  dat_lapply <- make_lapply_dat(dat)
  
  do_lapply_for_testing <- function(dat_lapply) {
    lapply(
      seq_len(nrow(dat_lapply)),
      function(x) {
        with(
          dat_lapply,
          {
            
            if(is.call(egfr[[x]])) {
              egfr[[x]][["age"]] <- age[[x]]
              egfr[[x]][["sex"]] <- sex[[x]]
              egfr[[x]][["quiet"]] <- TRUE
            }
            
            if(is.call(bmi[[x]])) {
              bmi[[x]][["quiet"]] <- TRUE
            }
            
            est_risk(
              age = age[[x]],
              sex = sex[[x]],
              sbp = sbp[[x]],
              bp_tx = bp_tx[[x]],
              total_c = total_c[[x]],
              hdl_c = hdl_c[[x]],
              statin = statin[[x]],
              dm = dm[[x]],
              smoking = smoking[[x]],
              egfr = eval(egfr[[x]]),
              bmi = eval(bmi[[x]]),
              hba1c = hba1c[[x]],
              uacr = uacr[[x]],
              zip = zip[[x]],
              time = time[[x]],
              model = model_input[[x]],
              quiet = TRUE
            ) %>%
              dplyr::bind_rows() %>%
              dplyr::mutate(preventr_id = x)
          }
        )
      }
    ) %>%
      dplyr::bind_rows()
  }
  
  res_auto <- est_risk(use_dat = dat, progress = FALSE)
  
  res_lapply <- dplyr::left_join(
    dat_lapply, 
    do_lapply_for_testing(dat_lapply), 
    by = "preventr_id"
  )
  
  expect_identical(res_auto, res_lapply)
  
  # Now change data and testing scenario a bit so all the calls are being pulled
  # from cols in the data frame
  dat_all_calls_from_df <- dat %>% dplyr::mutate(
    cr = sample(seq(0.5, 1.5, 0.1), nrow(dat), replace = TRUE),
    height = sample(60:78, nrow(dat), replace = TRUE),
    weight = sample(110:200, nrow(dat), replace = TRUE),
    egfr = lapply(seq_len(n), function(x) call("calc_egfr", cr = cr[[x]])),
    bmi = lapply(seq_len(n), function(x) call("calc_bmi", height = height[[x]], weight = weight[[x]]))
  )
  
  dat_lapply_all_calls_from_df <- make_lapply_dat(dat_all_calls_from_df)
  
  res_auto_all_calls_from_df <- est_risk(
    use_dat = dat_all_calls_from_df, 
    progress = FALSE
  )
  
  res_lapply_all_calls_from_df <- dplyr::left_join(
    dat_lapply_all_calls_from_df, 
    do_lapply_for_testing(dat_lapply_all_calls_from_df), 
    by = "preventr_id"
  )
  
  expect_identical(res_auto_all_calls_from_df, res_lapply_all_calls_from_df)
})

test_that("Calls vs. calculated values yield same results when using `use_dat`", {
  
  n <- 10
  
  dat <- make_dat(n) %>%
    dplyr::mutate(
      cr = c(91, 110, 81, 107, 78, 106, 70, 71, 80, 74),
      height = c(199, 182, 184, 197, 189, 187, 191, 163, 199, 171),
      weight = c(148, 109, 127, 111, 134, 126, 134, 76, 74, 113),
      egfr = lapply(
        seq_len(n),
        function(x) call("calc_egfr", cr[[x]], units = "umol/L")
      ),
      bmi = lapply(
        seq_len(n),
        function(x) call("calc_bmi", height[[x]], weight[[x]], units = "metric")
      )
    )
  
  res_call <- est_risk(use_dat = dat, progress = FALSE)
  
  egfr_calculated <- vapply(
    seq_len(n), 
    function(x) {
      with(
        dat[x, ], 
        {
          egfr[[1]][["age"]] <- age
          egfr[[1]][["sex"]] <- sex
          egfr[[1]][["quiet"]] <- TRUE
          eval(egfr[[1]])
        }
      )
    },
    numeric(1)
  )
  
  bmi_calculated <- vapply(
    seq_len(n), 
    function(x) {
      with(
        dat[x, ],
        {
          bmi[[1]][["quiet"]] <- TRUE
          eval(bmi[[1]])  
        }
      )
    },
    numeric(1)
  )
  
  dat_with_egfr_bmi_calculated <- dat %>% 
    dplyr::mutate(egfr = egfr_calculated, bmi = bmi_calculated)
  
  res_calculated <- 
    est_risk(use_dat = dat_with_egfr_bmi_calculated, progress = FALSE)
  
  expect_identical(
    res_call %>% dplyr::select(-c(egfr, bmi)),
    res_calculated %>% dplyr::select(-c(egfr, bmi))
  )
})
