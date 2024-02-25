# Output of check_equations() is as expected

    Code
      check_equations(age = 50, sbp = 155, bp_tx = TRUE, total_c = 188, hdl_c = 50,
        statin = TRUE, dm = FALSE, smoking = TRUE, egfr = 60, bmi = 30, hba1c = 9,
        uacr = 900, quiet = TRUE)
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 21.4%       20.3%     56%         51.4%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 12.6%       12.2%     37.7%       34.3%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 13.1%       12.6%     42.7%       39.4%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 6%          5.6%      21.3%       18.1%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 7.5%        8%        24.4%       24.1%    
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
           "full"      "full"      "full"      "full" 
      
      $over_years
      female_10yr   male_10yr female_30yr   male_30yr 
               10          10          30          30 
      
      $input_problems
      $input_problems$female_10yr
      [1] NA
      
      $input_problems$male_10yr
      [1] NA
      
      $input_problems$female_30yr
      [1] NA
      
      $input_problems$male_30yr
      [1] NA
      
      

---

    Code
      check_equations(age = 50, sbp = 155, bp_tx = TRUE, total_c = 800, hdl_c = 50,
        statin = TRUE, dm = FALSE, smoking = TRUE, egfr = 60, bmi = 30, hba1c = 9,
        uacr = 900, quiet = FALSE)
    Message
      Please check the following required variables: 
      `total_c` entered as 800, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as 800, but must be between 130 and 320
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 NA          NA        NA          NA       
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 NA          NA        NA          NA       
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 NA          NA        NA          NA       
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 NA          NA        NA          NA       
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 NA          NA        NA          NA       
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
           "none"      "none"      "none"      "none" 
      
      $over_years
      female_10yr   male_10yr female_30yr   male_30yr 
               NA          NA          NA          NA 
      
      $input_problems
      $input_problems$female_10yr
      [1] "`total_c` entered as 800, but must be between 130 and 320"
      
      $input_problems$male_10yr
      [1] "`total_c` entered as 800, but must be between 130 and 320"
      
      $input_problems$female_30yr
      [1] "`total_c` entered as 800, but must be between 130 and 320"
      
      $input_problems$male_30yr
      [1] "`total_c` entered as 800, but must be between 130 and 320"
      
      

# Output of nested_lapply() is as expected

    Code
      nested_lapply("sbp")
    Message
      Please check the following required variables: 
      `sbp` entered as 0, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as 0, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as 8675309, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as 8675309, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as "potato", but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as "potato", but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as FALSE, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as FALSE, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as NA, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as NA, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as NULL, but must be between 90 and 180
      Please check the following required variables: 
      `sbp` entered as NULL, but must be between 90 and 180
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`0`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] "`sbp` entered as 0, but must be between 90 and 180"
      
      $`0`$not_quiet$input_problems$male
      [1] "`sbp` entered as 0, but must be between 90 and 180"
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$model
      female   male 
      "none" "none" 
      
      $`0`$quiet$over_years
      female   male 
          NA     NA 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] "`sbp` entered as 0, but must be between 90 and 180"
      
      $`0`$quiet$input_problems$male
      [1] "`sbp` entered as 0, but must be between 90 and 180"
      
      
      
      
      $`8675309`
      $`8675309`$not_quiet
      $`8675309`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`8675309`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`8675309`$not_quiet$input_problems
      $`8675309`$not_quiet$input_problems$female
      [1] "`sbp` entered as 8675309, but must be between 90 and 180"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`sbp` entered as 8675309, but must be between 90 and 180"
      
      
      
      $`8675309`$quiet
      $`8675309`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$model
      female   male 
      "none" "none" 
      
      $`8675309`$quiet$over_years
      female   male 
          NA     NA 
      
      $`8675309`$quiet$input_problems
      $`8675309`$quiet$input_problems$female
      [1] "`sbp` entered as 8675309, but must be between 90 and 180"
      
      $`8675309`$quiet$input_problems$male
      [1] "`sbp` entered as 8675309, but must be between 90 and 180"
      
      
      
      
      $potato
      $potato$not_quiet
      $potato$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$model
      female   male 
      "none" "none" 
      
      $potato$not_quiet$over_years
      female   male 
          NA     NA 
      
      $potato$not_quiet$input_problems
      $potato$not_quiet$input_problems$female
      [1] "`sbp` entered as \"potato\", but must be between 90 and 180"
      
      $potato$not_quiet$input_problems$male
      [1] "`sbp` entered as \"potato\", but must be between 90 and 180"
      
      
      
      $potato$quiet
      $potato$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$model
      female   male 
      "none" "none" 
      
      $potato$quiet$over_years
      female   male 
          NA     NA 
      
      $potato$quiet$input_problems
      $potato$quiet$input_problems$female
      [1] "`sbp` entered as \"potato\", but must be between 90 and 180"
      
      $potato$quiet$input_problems$male
      [1] "`sbp` entered as \"potato\", but must be between 90 and 180"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] "`sbp` entered as FALSE, but must be between 90 and 180"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`sbp` entered as FALSE, but must be between 90 and 180"
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$model
      female   male 
      "none" "none" 
      
      $`FALSE`$quiet$over_years
      female   male 
          NA     NA 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] "`sbp` entered as FALSE, but must be between 90 and 180"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`sbp` entered as FALSE, but must be between 90 and 180"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`NA`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] "`sbp` entered as NA, but must be between 90 and 180"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`sbp` entered as NA, but must be between 90 and 180"
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$model
      female   male 
      "none" "none" 
      
      $`NA`$quiet$over_years
      female   male 
          NA     NA 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] "`sbp` entered as NA, but must be between 90 and 180"
      
      $`NA`$quiet$input_problems$male
      [1] "`sbp` entered as NA, but must be between 90 and 180"
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] "`sbp` entered as NULL, but must be between 90 and 180"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`sbp` entered as NULL, but must be between 90 and 180"
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$model
      female   male 
      "none" "none" 
      
      $`NULL`$quiet$over_years
      female   male 
          NA     NA 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] "`sbp` entered as NULL, but must be between 90 and 180"
      
      $`NULL`$quiet$input_problems$male
      [1] "`sbp` entered as NULL, but must be between 90 and 180"
      
      
      
      

---

    Code
      nested_lapply("total_c", chol_unit = "mg")
    Message
      Please check the following required variables: 
      `total_c` entered as 0, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as 0, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as 8675309, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as 8675309, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as "potato", but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as "potato", but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as FALSE, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as FALSE, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as NA, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as NA, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as NULL, but must be between 130 and 320
      Please check the following required variables: 
      `total_c` entered as NULL, but must be between 130 and 320
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`0`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] "`total_c` entered as 0, but must be between 130 and 320"
      
      $`0`$not_quiet$input_problems$male
      [1] "`total_c` entered as 0, but must be between 130 and 320"
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0`$quiet$model
      female   male 
      "none" "none" 
      
      $`0`$quiet$over_years
      female   male 
          NA     NA 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] "`total_c` entered as 0, but must be between 130 and 320"
      
      $`0`$quiet$input_problems$male
      [1] "`total_c` entered as 0, but must be between 130 and 320"
      
      
      
      
      $`8675309`
      $`8675309`$not_quiet
      $`8675309`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`8675309`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`8675309`$not_quiet$input_problems
      $`8675309`$not_quiet$input_problems$female
      [1] "`total_c` entered as 8675309, but must be between 130 and 320"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`total_c` entered as 8675309, but must be between 130 and 320"
      
      
      
      $`8675309`$quiet
      $`8675309`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8675309`$quiet$model
      female   male 
      "none" "none" 
      
      $`8675309`$quiet$over_years
      female   male 
          NA     NA 
      
      $`8675309`$quiet$input_problems
      $`8675309`$quiet$input_problems$female
      [1] "`total_c` entered as 8675309, but must be between 130 and 320"
      
      $`8675309`$quiet$input_problems$male
      [1] "`total_c` entered as 8675309, but must be between 130 and 320"
      
      
      
      
      $potato
      $potato$not_quiet
      $potato$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$not_quiet$model
      female   male 
      "none" "none" 
      
      $potato$not_quiet$over_years
      female   male 
          NA     NA 
      
      $potato$not_quiet$input_problems
      $potato$not_quiet$input_problems$female
      [1] "`total_c` entered as \"potato\", but must be between 130 and 320"
      
      $potato$not_quiet$input_problems$male
      [1] "`total_c` entered as \"potato\", but must be between 130 and 320"
      
      
      
      $potato$quiet
      $potato$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $potato$quiet$model
      female   male 
      "none" "none" 
      
      $potato$quiet$over_years
      female   male 
          NA     NA 
      
      $potato$quiet$input_problems
      $potato$quiet$input_problems$female
      [1] "`total_c` entered as \"potato\", but must be between 130 and 320"
      
      $potato$quiet$input_problems$male
      [1] "`total_c` entered as \"potato\", but must be between 130 and 320"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] "`total_c` entered as FALSE, but must be between 130 and 320"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`total_c` entered as FALSE, but must be between 130 and 320"
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`FALSE`$quiet$model
      female   male 
      "none" "none" 
      
      $`FALSE`$quiet$over_years
      female   male 
          NA     NA 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] "`total_c` entered as FALSE, but must be between 130 and 320"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`total_c` entered as FALSE, but must be between 130 and 320"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`NA`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] "`total_c` entered as NA, but must be between 130 and 320"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`total_c` entered as NA, but must be between 130 and 320"
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NA`$quiet$model
      female   male 
      "none" "none" 
      
      $`NA`$quiet$over_years
      female   male 
          NA     NA 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] "`total_c` entered as NA, but must be between 130 and 320"
      
      $`NA`$quiet$input_problems$male
      [1] "`total_c` entered as NA, but must be between 130 and 320"
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] "`total_c` entered as NULL, but must be between 130 and 320"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`total_c` entered as NULL, but must be between 130 and 320"
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`NULL`$quiet$model
      female   male 
      "none" "none" 
      
      $`NULL`$quiet$over_years
      female   male 
          NA     NA 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] "`total_c` entered as NULL, but must be between 130 and 320"
      
      $`NULL`$quiet$input_problems$male
      [1] "`total_c` entered as NULL, but must be between 130 and 320"
      
      
      
      

