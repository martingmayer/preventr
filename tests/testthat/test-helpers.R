test_that("CKD-EPI function works", {
  
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
  
  expect_warning(
    calc_egfr(1.5, age = 43, sex = "f"),
    "intended for internal package use"
  )
  
  expect_no_warning(
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
  
  expect_warning(
    calc_bmi(242, 67),
    "intended for internal package use"
  )
  
  expect_no_warning(
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