test_that("estimate_risk_partial() works", {
  
  res_from_partial <- estimate_risk_partial(quiet = TRUE)
  res_from_full <- estimate_risk(
    age = 50,
    sex = "f",
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_age <- estimate_risk_partial(age = 67, quiet = TRUE)
  res_from_full_change_age <- estimate_risk(
    age = 67,
    sex = "f",
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_bp_tx <- estimate_risk_partial(bp_tx = FALSE, quiet = TRUE)
  res_from_full_change_bp_tx <- estimate_risk(
    age = 50,
    sex = "f",
    sbp = 160,
    bp_tx = FALSE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_sex <- estimate_risk_partial(sex = "m", quiet = TRUE)
  res_from_full_change_sex <- estimate_risk(
    age = 50,
    sex = "m",
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_multiple <- estimate_risk_partial(
    sbp = 155,
    total_c = 188,
    hdl_c = 50,
    statin = TRUE,
    dm = FALSE,
    smoking = TRUE,
    egfr = 60,
    bmi = 30,
    hba1c = 9,
    uacr = 900,
    quiet = TRUE
  )
  res_from_full_change_multiple <- estimate_risk(
    age = 50,
    sex = "f",
    sbp = 155,
    bp_tx = TRUE,
    total_c = 188,
    hdl_c = 50,
    statin = TRUE,
    dm = FALSE,
    smoking = TRUE,
    egfr = 60,
    bmi = 30,
    hba1c = 9,
    uacr = 900,
    quiet = TRUE
  )
  
  expect_identical(res_from_partial, res_from_full)
  expect_identical(res_from_partial_change_age, res_from_full_change_age)
  expect_identical(res_from_partial_change_bp_tx, res_from_full_change_bp_tx)
  expect_identical(res_from_partial_change_sex, res_from_full_change_sex)
  expect_identical(res_from_partial_change_multiple, res_from_full_change_multiple)
})

test_that("check_equations_partial() works", {
  
  res_from_partial <- check_equations_partial(quiet = TRUE)
  res_from_full <- check_equations(
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
    quiet = TRUE
  )
  
  res_from_partial_change_age <- check_equations_partial(age = 67, quiet = TRUE)
  res_from_full_change_age <- check_equations(
    age = 67,
    sbp = 160,
    bp_tx = TRUE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_bp_tx <- check_equations_partial(bp_tx = FALSE, quiet = TRUE)
  res_from_full_change_bp_tx <- check_equations(
    age = 50,
    sbp = 160,
    bp_tx = FALSE,
    total_c = 200,
    hdl_c = 45,
    statin = FALSE,
    dm = TRUE,
    smoking = FALSE,
    egfr = 90,
    bmi = 35,
    quiet = TRUE
  )
  
  res_from_partial_change_multiple <- check_equations_partial(
    sbp = 155,
    total_c = 188,
    hdl_c = 50,
    statin = TRUE,
    dm = FALSE,
    smoking = TRUE,
    egfr = 60,
    bmi = 30,
    hba1c = 9,
    uacr = 900,
    quiet = TRUE
  )
  res_from_full_change_multiple <- check_equations(
    age = 50,
    sbp = 155,
    bp_tx = TRUE,
    total_c = 188,
    hdl_c = 50,
    statin = TRUE,
    dm = FALSE,
    smoking = TRUE,
    egfr = 60,
    bmi = 30,
    hba1c = 9,
    uacr = 900,
    quiet = TRUE
  )
  
  expect_identical(res_from_partial, res_from_full)
  expect_identical(res_from_partial_change_age, res_from_full_change_age)
  expect_identical(res_from_partial_change_bp_tx, res_from_full_change_bp_tx)
  expect_identical(res_from_partial_change_multiple, res_from_full_change_multiple)
})

test_that("Output of check_equations() is as expected", {
  
  expect_snapshot(
    check_equations(
      age = 50,
      sbp = 155,
      bp_tx = TRUE,
      total_c = 188,
      hdl_c = 50,
      statin = TRUE,
      dm = FALSE,
      smoking = TRUE,
      egfr = 60,
      bmi = 30,
      hba1c = 9,
      uacr = 900,
      quiet = TRUE
    )
  )
  
  expect_snapshot(
    check_equations(
      age = 50,
      sbp = 155,
      bp_tx = TRUE,
      total_c = 800,
      hdl_c = 50,
      statin = TRUE,
      dm = FALSE,
      smoking = TRUE,
      egfr = 60,
      bmi = 30,
      hba1c = 9,
      uacr = 900,
      quiet = FALSE
    )
  )
})

test_that("Output of nested_lapply() is as expected", {
  expect_snapshot(nested_lapply("sbp"))
  expect_snapshot(nested_lapply("total_c", chol_unit = "mg"))
})


