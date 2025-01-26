# String for internal fx use message
model_used_externally <-
  paste0(
    c(
      "although this function checks input validity it just returns `NA`",
      "with no messaging if it finds a problem"
    ),
    collapse = "\n"
  )

# Models (alpha order) ----
mesa_without_cac_model <- function(age,
                                   sex,
                                   race_eth,
                                   dm,
                                   smoking,
                                   total_c,
                                   hdl_c,
                                   chol_tx,
                                   sbp,
                                   bp_tx,
                                   fhx,
                                   chol_unit = "mg/dL",
                                   quiet = FALSE,
                                   dp = 3) {
  
  
  # If this is an external call, do some additional input handling (this will
  # already have been done if called through `est_risk()`)
  if(!exists("comparison_requested", envir = parent.frame())) {
    message_about_internal_fx_use(model_used_externally, quiet)
    
    chol_unit <- standardize_chol_unit(chol_unit)
    sex <- standardize_sex(sex)      
    race_eth <- standardize_race_eth(race_eth)
    
    if(
      !all(
        # 10.1016/j.jacc.2015.08.035, p1644, col 2, first para (for age)
        is_valid_age(age, "mesa"),
        is_valid_sex(sex),
        is_valid_race_eth(race_eth, "mesa"),
        is_valid_dm(dm),
        is_valid_smoking(smoking),
        is_valid_total_c(total_c, chol_unit),
        is_valid_hdl_c(hdl_c, chol_unit),
        is_valid_chol_tx(chol_tx), 
        is_valid_sbp(sbp),
        is_valid_bp_tx(bp_tx),
        is_valid_fhx(fhx)
      )
    ) {
      return(NA_real_)
    }
  }
  
  if(chol_unit == "mmol/L") {
    total_c <- convert_chol_to_mg(total_c)
    hdl_c <- convert_chol_to_mg(hdl_c)
  }
  
  1 - 0.99963^exp(0.0455 * age +
                    (if(sex == "male") 0.7496 else 0) +
                    switch(
                      race_eth,
                      black = -0.2111,
                      chinese = -0.5055,
                      hispanic = -0.1900,
                      white = 0,
                      NA_real_
                    ) +
                    0.5168 * dm +
                    0.4732 * smoking +
                    0.0053 * total_c +
                    -0.0140 * hdl_c +
                    0.2473 * chol_tx +
                    0.0085 * sbp +
                    0.3381 * bp_tx +
                    0.4522 * fhx
  ) %>% 
    round_half_up(dp)
}

mesa_with_cac_model <- function(age,
                                sex,
                                race_eth,
                                dm,
                                smoking,
                                total_c,
                                hdl_c,
                                chol_tx,
                                sbp,
                                bp_tx,
                                fhx,
                                cac,
                                chol_unit = "mg/dL",
                                quiet = FALSE,
                                dp = 3) {
  
  # If this is an external call, do some additional input handling (this will
  # already have been done if called through `est_risk()`)
  if(!exists("comparison_requested", envir = parent.frame())) {
    message_about_internal_fx_use(model_used_externally, quiet)
    
    chol_unit <- standardize_chol_unit(chol_unit)
    sex <- standardize_sex(sex)      
    race_eth <- standardize_race_eth(race_eth)
    
    if(
      !all(
        # 10.1016/j.jacc.2015.08.035, p1644, col 2, first para (for age)
        is_valid_age(age, "mesa"),
        is_valid_sex(sex),
        is_valid_race_eth(race_eth, "mesa"),
        is_valid_dm(dm),
        is_valid_smoking(smoking),
        is_valid_total_c(total_c, chol_unit),
        is_valid_hdl_c(hdl_c, chol_unit),
        is_valid_chol_tx(chol_tx), 
        is_valid_sbp(sbp),
        is_valid_bp_tx(bp_tx),
        is_valid_fhx(fhx),
        is_valid_cac(cac)
      )
    ) {
      return(NA_real_)
    }
  }
  
  if(chol_unit == "mmol/L") {
    total_c <- convert_chol_to_mg(total_c)
    hdl_c <- convert_chol_to_mg(hdl_c)
  }
  
  1 - 0.99833^exp(0.0172 * age +
                    (if(sex == "male") 0.4079 else 0) +
                    switch(
                      race_eth,
                      black = 0.0353,
                      chinese = -0.3475,
                      hispanic = -0.0222,
                      white = 0,
                      NA_real_
                    ) +
                    0.3892 * dm +
                    0.3717 * smoking +
                    0.0043 * total_c +
                    -0.0114 * hdl_c +
                    0.1206 * chol_tx +
                    0.0066 * sbp +
                    0.2278 * bp_tx +
                    0.3239 * fhx +
                    0.2743 * log(cac + 1)
  ) %>% 
    round_half_up(dp)
}

pce_model <- function(age,
                      sex,
                      race_eth,
                      dm,
                      smoking,
                      total_c,
                      hdl_c,
                      sbp,
                      bp_tx,
                      chol_unit = "mg/dL",
                      quiet = FALSE,
                      dp = 3) {
  
  
  # If this is an external call, do some additional input handling (this will
  # already have been done if called through `est_risk()`)
  if(!exists("comparison_requested", envir = parent.frame())) {
    message_about_internal_fx_use(model_used_externally, quiet)
    
    chol_unit <- standardize_chol_unit(chol_unit)
    sex <- standardize_sex(sex)      
    race_eth <- standardize_race_eth(race_eth)
    
    if(
      !all(
        is_valid_age(age, "pce"),
        is_valid_sex(sex),
        is_valid_race_eth(race_eth, "pce"),
        is_valid_dm(dm),
        is_valid_smoking(smoking),
        is_valid_total_c(total_c, chol_unit),
        is_valid_hdl_c(hdl_c, chol_unit),
        is_valid_sbp(sbp),
        is_valid_bp_tx(bp_tx)
      )
    ) {
      return(NA_real_)
    }
  }
  
  if(chol_unit == "mmol/L") {
    total_c <- convert_chol_to_mg(total_c)
    hdl_c <- convert_chol_to_mg(hdl_c)
  }
  
  switch(
    sex,
    female = 
      switch(
        race_eth,
        black = 
          1 - 0.9533^exp(
            17.114 * log(age) + 
              0.940 * log(total_c) + 
              -18.920 * log(hdl_c) + 
              4.475 * log(age) * log(hdl_c) +
              (if(bp_tx == 1) 29.291 else 27.820) * log(sbp) +
              (if(bp_tx == 1) -6.432 else -6.087) * log(age) * log(sbp) +
              0.691 * smoking + 
              0.874 * dm - 
              86.6081),
        # Use fall-through, despite debates surrounding its use
        # (it is fine here)
        chinese =,
        hispanic =,
        white =
          1 - 0.9665^exp(
            -29.799 * log(age) + 
              4.884 * log(age)^2 + 
              13.540 * log(total_c) + 
              -3.114 * log(age) * log(total_c) +
              -13.578 * log(hdl_c) + 
              3.149 * log(age) * log(hdl_c) +
              (if(bp_tx == 1) 2.019 else 1.957) * log(sbp) + 
              7.574 * smoking + 
              -1.665 * log(age) * smoking + 
              0.661 * dm - 
              -29.1817),
        NA_real_
      ),
    male = 
      switch(
        race_eth,
        black =
          1-0.8954^exp(
            2.469 * log(age) + 
              0.302 * log(total_c) + 
              -0.307 * log(hdl_c) + 
              (if(bp_tx == 1) 1.916 else 1.809) * log(sbp) + 
              0.549 * smoking + 
              0.645 * dm - 
              19.5425),
        # Use fall-through, despite debates surrounding its use
        # (it is fine here)
        chinese =,
        hispanic =,
        white =
          1 - 0.9144^exp(
            12.344 * log(age) + 
              11.853 * log(total_c) + 
              -2.664 * log(age) * log(total_c) +
              -7.990 * log(hdl_c) + 
              1.769 * log(age) * log(hdl_c) +
              (if(bp_tx == 1) 1.797 else 1.764) * log(sbp) + 
              7.837 * smoking + 
              -1.795 * log(age) * smoking + 
              0.658 * dm - 
              61.1816),
        NA_real_
      ),
    NA_real_
  ) %>% 
    round_half_up(dp)
}

pce_rev_model <- function(age,
                          sex,
                          race_eth,
                          dm,
                          smoking,
                          total_c,
                          hdl_c,
                          sbp,
                          bp_tx,
                          chol_unit = "mg/dL",
                          quiet = FALSE,
                          dp = 3) {
  
  # If this is an external call, do some additional input handling (this will
  # already have been done if called through `est_risk()`)
  if(!exists("comparison_requested", envir = parent.frame())) {
    message_about_internal_fx_use(model_used_externally, quiet)  
    
    chol_unit <- standardize_chol_unit(chol_unit)
    sex <- standardize_sex(sex)      
    race_eth <- standardize_race_eth(race_eth)
    
    if(
      !all(
        is_valid_age(age, "pce"),
        is_valid_sex(sex),
        is_valid_race_eth(race_eth, "pce"),
        is_valid_dm(dm),
        is_valid_smoking(smoking),
        is_valid_total_c(total_c, chol_unit),
        is_valid_hdl_c(hdl_c, chol_unit),
        is_valid_sbp(sbp),
        is_valid_bp_tx(bp_tx)
      )
    ) {
      return(NA_real_)
    }
  }
  
  if(chol_unit == "mmol/L") {
    total_c <- convert_chol_to_mg(total_c)
    hdl_c <- convert_chol_to_mg(hdl_c)
  }
  
  switch(
    sex,
    female = 
      1.0 / (1.0 + exp(-(
        -12.823110 +
          0.106501 * age +
          0.432440 * (if(race_eth == "black") 1 else 0) +
          0.000056 * sbp^2 +
          0.017666 * sbp +
          0.731678 * bp_tx +
          0.943970 * dm +
          1.009790 * smoking +
          0.151318 * (total_c / hdl_c) +
          -0.008580 * age * (if(race_eth == "black") 1 else 0) +
          -0.003647 * sbp * bp_tx +
          0.006208 * sbp * (if(race_eth == "black") 1 else 0) +
          0.152968 * (if(race_eth == "black") 1 else 0) * bp_tx +
          -0.000153 * age * sbp +
          0.115232 * (if(race_eth == "black") 1 else 0) * dm +
          -0.092231 * (if(race_eth == "black") 1 else 0) * smoking +
          0.070498 * (total_c / hdl_c) * (if(race_eth == "black") 1 else 0) +
          -0.000173 * sbp * (if(race_eth == "black") 1 else 0) * bp_tx +
          -0.000094 * age * sbp * (if(race_eth == "black") 1 else 0)
      ))),
    male =
      1.0 / (1.0 + exp(-(
        -11.679980 +
          0.064200 * age +
          0.482835 * (if(race_eth == "black") 1 else 0) +
          -0.000061 * sbp^2 +
          0.038950 * sbp +
          2.055533 * bp_tx +
          0.842209 * dm +
          0.895589 * smoking +
          0.193307 * (total_c / hdl_c) +
          -0.014207 * sbp * bp_tx +
          0.011609 * sbp * (if(race_eth == "black") 1 else 0) +
          -0.119460 * (if(race_eth == "black") 1 else 0) * bp_tx +
          0.000025 * age * sbp +
          -0.077214 * (if(race_eth == "black") 1 else 0) * dm +
          -0.226771 * (if(race_eth == "black") 1 else 0) * smoking +
          -0.117749 * (total_c / hdl_c) * (if(race_eth == "black") 1 else 0) +
          0.004190 * sbp * (if(race_eth == "black") 1 else 0) * bp_tx +
          -0.000199 * age * sbp * (if(race_eth == "black") 1 else 0)
      ))),
    NA_real_
  ) %>% 
    round_half_up(dp)
}
