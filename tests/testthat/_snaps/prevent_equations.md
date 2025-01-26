# Age validation works

    Code
      nested_lapply("age", 29, 80)
    Message
      Please check the following required variables: 
      * `age` entered as 29, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as 29, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as 80, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as 80, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as "potato", but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as "potato", but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as FALSE, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as FALSE, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as NA, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as NA, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as NULL, but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as NULL, but must be between 30 and 79 for the PREVENT models
    Output
      $`29`
      $`29`$not_quiet
      $`29`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`29`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`29`$not_quiet$input_problems
      $`29`$not_quiet$input_problems$female
      [1] "`age` entered as 29, but must be between 30 and 79 for the PREVENT models"
      
      $`29`$not_quiet$input_problems$male
      [1] "`age` entered as 29, but must be between 30 and 79 for the PREVENT models"
      
      
      
      $`29`$quiet
      $`29`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`29`$quiet$model
      female   male 
      "none" "none" 
      
      $`29`$quiet$over_years
      female   male 
          NA     NA 
      
      $`29`$quiet$input_problems
      $`29`$quiet$input_problems$female
      [1] "`age` entered as 29, but must be between 30 and 79 for the PREVENT models"
      
      $`29`$quiet$input_problems$male
      [1] "`age` entered as 29, but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $`80`
      $`80`$not_quiet
      $`80`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`80`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`80`$not_quiet$input_problems
      $`80`$not_quiet$input_problems$female
      [1] "`age` entered as 80, but must be between 30 and 79 for the PREVENT models"
      
      $`80`$not_quiet$input_problems$male
      [1] "`age` entered as 80, but must be between 30 and 79 for the PREVENT models"
      
      
      
      $`80`$quiet
      $`80`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`80`$quiet$model
      female   male 
      "none" "none" 
      
      $`80`$quiet$over_years
      female   male 
          NA     NA 
      
      $`80`$quiet$input_problems
      $`80`$quiet$input_problems$female
      [1] "`age` entered as 80, but must be between 30 and 79 for the PREVENT models"
      
      $`80`$quiet$input_problems$male
      [1] "`age` entered as 80, but must be between 30 and 79 for the PREVENT models"
      
      
      
      
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
      [1] "`age` entered as \"potato\", but must be between 30 and 79 for the PREVENT models"
      
      $potato$not_quiet$input_problems$male
      [1] "`age` entered as \"potato\", but must be between 30 and 79 for the PREVENT models"
      
      
      
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
      [1] "`age` entered as \"potato\", but must be between 30 and 79 for the PREVENT models"
      
      $potato$quiet$input_problems$male
      [1] "`age` entered as \"potato\", but must be between 30 and 79 for the PREVENT models"
      
      
      
      
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
      [1] "`age` entered as FALSE, but must be between 30 and 79 for the PREVENT models"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`age` entered as FALSE, but must be between 30 and 79 for the PREVENT models"
      
      
      
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
      [1] "`age` entered as FALSE, but must be between 30 and 79 for the PREVENT models"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`age` entered as FALSE, but must be between 30 and 79 for the PREVENT models"
      
      
      
      
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
      [1] "`age` entered as NA, but must be between 30 and 79 for the PREVENT models"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`age` entered as NA, but must be between 30 and 79 for the PREVENT models"
      
      
      
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
      [1] "`age` entered as NA, but must be between 30 and 79 for the PREVENT models"
      
      $`NA`$quiet$input_problems$male
      [1] "`age` entered as NA, but must be between 30 and 79 for the PREVENT models"
      
      
      
      
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
      [1] "`age` entered as NULL, but must be between 30 and 79 for the PREVENT models"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`age` entered as NULL, but must be between 30 and 79 for the PREVENT models"
      
      
      
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
      [1] "`age` entered as NULL, but must be between 30 and 79 for the PREVENT models"
      
      $`NULL`$quiet$input_problems$male
      [1] "`age` entered as NULL, but must be between 30 and 79 for the PREVENT models"
      
      
      
      

# Age validation works, extra wrong

    Code
      nested_lapply("age", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `age` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models
      Please check the following required variables: 
      * `age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`age` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`age` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`age` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`age` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`age` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models"
      
      $list_1$not_quiet$input_problems$male
      [1] "`age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models"
      
      $list_1$quiet$input_problems$male
      [1] "`age` entered as list(age = 50), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`age` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 30 and 79 for the PREVENT models"
      
      $list$not_quiet$input_problems$male
      [1] "`age` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`age` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 30 and 79 for the PREVENT models"
      
      $list$quiet$input_problems$male
      [1] "`age` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models"
      
      $matrix_1$quiet$input_problems$male
      [1] "`age` entered as structure(50, dim = c(1L, 1L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`age` entered as structure(1:10, dim = c(2L, 5L)), but must be between 30 and 79 for the PREVENT models"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`age` entered as c(0, 8675309), but must be between 30 and 79 for the PREVENT models"
      
      
      
      

# Sex validation works

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex(x, FALSE))
    Message
      Please check the following required variables: 
      * `sex` entered as 0, but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as 8675309, but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as "potato", but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as FALSE, but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as NA, but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as NULL, but must be one of "female", "f", "male", "m"
    Output
      $`0`
      $`0`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs_10yr
      [1] "`sex` entered as 0, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`0`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs_10yr
      [1] "`sex` entered as 0, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`8675309`
      $`8675309`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs_10yr
      [1] "`sex` entered as 8675309, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`8675309`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs_10yr
      [1] "`sex` entered as 8675309, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $potato
      $potato$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs_10yr
      [1] "`sex` entered as \"potato\", but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $potato$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs_10yr
      [1] "`sex` entered as \"potato\", but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`FALSE`
      $`FALSE`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs_10yr
      [1] "`sex` entered as FALSE, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`FALSE`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs_10yr
      [1] "`sex` entered as FALSE, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`NA`
      $`NA`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs_10yr
      [1] "`sex` entered as NA, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`NA`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs_10yr
      [1] "`sex` entered as NA, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`NULL`
      $`NULL`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs_10yr
      [1] "`sex` entered as NULL, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`NULL`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs_10yr
      [1] "`sex` entered as NULL, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      

---

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex(x, TRUE))
    Output
      $`0`
      $`0`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs_10yr
      [1] "`sex` entered as 0, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`0`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs_10yr
      [1] "`sex` entered as 0, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`8675309`
      $`8675309`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs_10yr
      [1] "`sex` entered as 8675309, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`8675309`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs_10yr
      [1] "`sex` entered as 8675309, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $potato
      $potato$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs_10yr
      [1] "`sex` entered as \"potato\", but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $potato$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs_10yr
      [1] "`sex` entered as \"potato\", but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`FALSE`
      $`FALSE`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs_10yr
      [1] "`sex` entered as FALSE, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`FALSE`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs_10yr
      [1] "`sex` entered as FALSE, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`NA`
      $`NA`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs_10yr
      [1] "`sex` entered as NA, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`NA`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs_10yr
      [1] "`sex` entered as NA, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $`NULL`
      $`NULL`$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs_10yr
      [1] "`sex` entered as NULL, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $`NULL`$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs_10yr
      [1] "`sex` entered as NULL, but must be one of \"female\", \"f\", \"male\", \"m\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x) check_equations_partial_sans_sex(x,
        FALSE))
    Message
      Please check the following required variables: 
      * `sex` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as list(age = 50), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as structure(50, dim = c(1L, 1L)), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "female", "f", "male", "m"
      Please check the following required variables: 
      * `sex` entered as c(0, 8675309), but must be one of "female", "f", "male", "m"
    Output
      $dataframe_1
      $dataframe_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs_10yr
      [1] "`sex` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $dataframe_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs_10yr
      [1] "`sex` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $dataframe_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $list_1
      $list_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs_10yr
      [1] "`sex` entered as list(age = 50), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $list_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs_10yr
      [1] "`sex` entered as list(age = 50), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $list
      $list$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs_10yr
      [1] "`sex` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $list$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs_10yr
      [1] "`sex` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $matrix_1
      $matrix_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs_10yr
      [1] "`sex` entered as structure(50, dim = c(1L, 1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $matrix_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs_10yr
      [1] "`sex` entered as structure(50, dim = c(1L, 1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $matrix_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $vec_gt_1
      $vec_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs_10yr
      [1] "`sex` entered as c(0, 8675309), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $vec_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs_10yr
      [1] "`sex` entered as c(0, 8675309), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x) check_equations_partial_sans_sex(x,
        TRUE))
    Output
      $dataframe_1
      $dataframe_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs_10yr
      [1] "`sex` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $dataframe_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs_10yr
      [1] "`sex` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $dataframe_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $list_1
      $list_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs_10yr
      [1] "`sex` entered as list(age = 50), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $list_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs_10yr
      [1] "`sex` entered as list(age = 50), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $list
      $list$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs_10yr
      [1] "`sex` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $list$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs_10yr
      [1] "`sex` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $matrix_1
      $matrix_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs_10yr
      [1] "`sex` entered as structure(50, dim = c(1L, 1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $matrix_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs_10yr
      [1] "`sex` entered as structure(50, dim = c(1L, 1L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $matrix_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs_10yr
      [1] "`sex` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      
      $vec_gt_1
      $vec_gt_1$res_10yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs_10yr
      [1] "`sex` entered as c(0, 8675309), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      $vec_gt_1$res_30yr
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs_10yr
      [1] "`sex` entered as c(0, 8675309), but must be one of \"female\", \"f\", \"male\", \"m\""
      
      

# SBP validation works

    Code
      nested_lapply("sbp", 89, 181)
    Message
      Please check the following required variables: 
      * `sbp` entered as 89, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as 89, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as 181, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as 181, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as "potato", but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as "potato", but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as FALSE, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as FALSE, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as NA, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as NA, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as NULL, but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as NULL, but must be between 90 and 180
    Output
      $`89`
      $`89`$not_quiet
      $`89`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`89`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`89`$not_quiet$input_problems
      $`89`$not_quiet$input_problems$female
      [1] "`sbp` entered as 89, but must be between 90 and 180"
      
      $`89`$not_quiet$input_problems$male
      [1] "`sbp` entered as 89, but must be between 90 and 180"
      
      
      
      $`89`$quiet
      $`89`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`89`$quiet$model
      female   male 
      "none" "none" 
      
      $`89`$quiet$over_years
      female   male 
          NA     NA 
      
      $`89`$quiet$input_problems
      $`89`$quiet$input_problems$female
      [1] "`sbp` entered as 89, but must be between 90 and 180"
      
      $`89`$quiet$input_problems$male
      [1] "`sbp` entered as 89, but must be between 90 and 180"
      
      
      
      
      $`181`
      $`181`$not_quiet
      $`181`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`181`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`181`$not_quiet$input_problems
      $`181`$not_quiet$input_problems$female
      [1] "`sbp` entered as 181, but must be between 90 and 180"
      
      $`181`$not_quiet$input_problems$male
      [1] "`sbp` entered as 181, but must be between 90 and 180"
      
      
      
      $`181`$quiet
      $`181`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`181`$quiet$model
      female   male 
      "none" "none" 
      
      $`181`$quiet$over_years
      female   male 
          NA     NA 
      
      $`181`$quiet$input_problems
      $`181`$quiet$input_problems$female
      [1] "`sbp` entered as 181, but must be between 90 and 180"
      
      $`181`$quiet$input_problems$male
      [1] "`sbp` entered as 181, but must be between 90 and 180"
      
      
      
      
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
      
      
      
      

# SBP validation works, extra wrong

    Code
      nested_lapply("sbp", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `sbp` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as list(age = 50), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as list(age = 50), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as c(0, 8675309), but must be between 90 and 180
      Please check the following required variables: 
      * `sbp` entered as c(0, 8675309), but must be between 90 and 180
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`sbp` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`sbp` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`sbp` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`sbp` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`sbp` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 90 and 180"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`sbp` entered as list(age = 50), but must be between 90 and 180"
      
      $list_1$not_quiet$input_problems$male
      [1] "`sbp` entered as list(age = 50), but must be between 90 and 180"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`sbp` entered as list(age = 50), but must be between 90 and 180"
      
      $list_1$quiet$input_problems$male
      [1] "`sbp` entered as list(age = 50), but must be between 90 and 180"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`sbp` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 90 and 180"
      
      $list$not_quiet$input_problems$male
      [1] "`sbp` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 90 and 180"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`sbp` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 90 and 180"
      
      $list$quiet$input_problems$male
      [1] "`sbp` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 90 and 180"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180"
      
      $matrix_1$quiet$input_problems$male
      [1] "`sbp` entered as structure(50, dim = c(1L, 1L)), but must be between 90 and 180"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`sbp` entered as structure(1:10, dim = c(2L, 5L)), but must be between 90 and 180"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`sbp` entered as c(0, 8675309), but must be between 90 and 180"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`sbp` entered as c(0, 8675309), but must be between 90 and 180"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`sbp` entered as c(0, 8675309), but must be between 90 and 180"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`sbp` entered as c(0, 8675309), but must be between 90 and 180"
      
      
      
      

# BP treatment validation works

    Code
      nested_lapply("bp_tx")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.2%  13.6%
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 7.9%   8.9% 
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 6.7%   8.7% 
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.1%   5.2% 
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.3%   4.1% 
      
      $`0`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] NA
      
      $`0`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.2%  13.6%
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 7.9%   8.9% 
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 6.7%   8.7% 
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.1%   5.2% 
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.3%   4.1% 
      
      $`0`$quiet$model
      female   male 
      "base" "base" 
      
      $`0`$quiet$over_years
      female   male 
          10     10 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] NA
      
      $`0`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$quiet$input_problems$male
      [1] "`bp_tx` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`bp_tx` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$not_quiet$input_problems$male
      [1] "`bp_tx` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`bp_tx` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$quiet$input_problems$male
      [1] "`bp_tx` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.2%  13.6%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 7.9%   8.9% 
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 6.7%   8.7% 
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.1%   5.2% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.3%   4.1% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] NA
      
      $`FALSE`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.2%  13.6%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 7.9%   8.9% 
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 6.7%   8.7% 
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.1%   5.2% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.3%   4.1% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] NA
      
      $`FALSE`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$quiet$input_problems$male
      [1] "`bp_tx` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$quiet$input_problems$male
      [1] "`bp_tx` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# BP treatment validation works, extra wrong

    Code
      nested_lapply("bp_tx", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `bp_tx` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`bp_tx` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`bp_tx` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`bp_tx` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$quiet$input_problems$male
      [1] "`bp_tx` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$not_quiet$input_problems$male
      [1] "`bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$quiet$input_problems$male
      [1] "`bp_tx` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$quiet$input_problems$male
      [1] "`bp_tx` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`bp_tx` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`bp_tx` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Total cholesterol validation works

    Code
      nested_lapply("total_c", 129, 321, "mg/dL")
    Message
      Please check the following required variables: 
      * `total_c` entered as 129, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as 129, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as 321, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as 321, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as "potato", but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as "potato", but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as FALSE, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as FALSE, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as NA, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as NA, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as NULL, but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as NULL, but must be between 130 and 320
    Output
      $`129`
      $`129`$not_quiet
      $`129`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`129`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`129`$not_quiet$input_problems
      $`129`$not_quiet$input_problems$female
      [1] "`total_c` entered as 129, but must be between 130 and 320"
      
      $`129`$not_quiet$input_problems$male
      [1] "`total_c` entered as 129, but must be between 130 and 320"
      
      
      
      $`129`$quiet
      $`129`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`129`$quiet$model
      female   male 
      "none" "none" 
      
      $`129`$quiet$over_years
      female   male 
          NA     NA 
      
      $`129`$quiet$input_problems
      $`129`$quiet$input_problems$female
      [1] "`total_c` entered as 129, but must be between 130 and 320"
      
      $`129`$quiet$input_problems$male
      [1] "`total_c` entered as 129, but must be between 130 and 320"
      
      
      
      
      $`321`
      $`321`$not_quiet
      $`321`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`321`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`321`$not_quiet$input_problems
      $`321`$not_quiet$input_problems$female
      [1] "`total_c` entered as 321, but must be between 130 and 320"
      
      $`321`$not_quiet$input_problems$male
      [1] "`total_c` entered as 321, but must be between 130 and 320"
      
      
      
      $`321`$quiet
      $`321`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`321`$quiet$model
      female   male 
      "none" "none" 
      
      $`321`$quiet$over_years
      female   male 
          NA     NA 
      
      $`321`$quiet$input_problems
      $`321`$quiet$input_problems$female
      [1] "`total_c` entered as 321, but must be between 130 and 320"
      
      $`321`$quiet$input_problems$male
      [1] "`total_c` entered as 321, but must be between 130 and 320"
      
      
      
      
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
      
      
      
      

---

    Code
      nested_lapply("total_c", 3.3, 8.3, "mmol/L")
    Message
      Please check the following required variables: 
      * `total_c` entered as 3.3, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 3.3, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 8.3, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 8.3, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as "potato", but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as "potato", but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as FALSE, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as FALSE, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as NA, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as NA, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as NULL, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as NULL, but must be between 3.36 and 8.28
      * `hdl_c` entered as 45, but must be between 0.52 and 2.59
    Output
      $`3.3`
      $`3.3`$not_quiet
      $`3.3`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`3.3`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`3.3`$not_quiet$input_problems
      $`3.3`$not_quiet$input_problems$female
      [1] "`total_c` entered as 3.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`3.3`$not_quiet$input_problems$male
      [1] "`total_c` entered as 3.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      $`3.3`$quiet
      $`3.3`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`3.3`$quiet$model
      female   male 
      "none" "none" 
      
      $`3.3`$quiet$over_years
      female   male 
          NA     NA 
      
      $`3.3`$quiet$input_problems
      $`3.3`$quiet$input_problems$female
      [1] "`total_c` entered as 3.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`3.3`$quiet$input_problems$male
      [1] "`total_c` entered as 3.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      
      $`8.3`
      $`8.3`$not_quiet
      $`8.3`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`8.3`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`8.3`$not_quiet$input_problems
      $`8.3`$not_quiet$input_problems$female
      [1] "`total_c` entered as 8.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`8.3`$not_quiet$input_problems$male
      [1] "`total_c` entered as 8.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      $`8.3`$quiet
      $`8.3`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`8.3`$quiet$model
      female   male 
      "none" "none" 
      
      $`8.3`$quiet$over_years
      female   male 
          NA     NA 
      
      $`8.3`$quiet$input_problems
      $`8.3`$quiet$input_problems$female
      [1] "`total_c` entered as 8.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`8.3`$quiet$input_problems$male
      [1] "`total_c` entered as 8.3, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as \"potato\", but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $potato$not_quiet$input_problems$male
      [1] "`total_c` entered as \"potato\", but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as \"potato\", but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $potato$quiet$input_problems$male
      [1] "`total_c` entered as \"potato\", but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as FALSE, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`total_c` entered as FALSE, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as FALSE, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`total_c` entered as FALSE, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as NA, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`total_c` entered as NA, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as NA, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`NA`$quiet$input_problems$male
      [1] "`total_c` entered as NA, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as NULL, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`total_c` entered as NULL, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as NULL, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      $`NULL`$quiet$input_problems$male
      [1] "`total_c` entered as NULL, but must be between 3.36 and 8.28; `hdl_c` entered as 45, but must be between 0.52 and 2.59"
      
      
      
      

# Total cholesterol validation works, extra wrong

    Code
      nested_lapply("total_c", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `total_c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as list(age = 50), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as list(age = 50), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as c(0, 8675309), but must be between 130 and 320
      Please check the following required variables: 
      * `total_c` entered as c(0, 8675309), but must be between 130 and 320
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`total_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`total_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`total_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`total_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`total_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 130 and 320"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`total_c` entered as list(age = 50), but must be between 130 and 320"
      
      $list_1$not_quiet$input_problems$male
      [1] "`total_c` entered as list(age = 50), but must be between 130 and 320"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`total_c` entered as list(age = 50), but must be between 130 and 320"
      
      $list_1$quiet$input_problems$male
      [1] "`total_c` entered as list(age = 50), but must be between 130 and 320"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`total_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 130 and 320"
      
      $list$not_quiet$input_problems$male
      [1] "`total_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 130 and 320"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`total_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 130 and 320"
      
      $list$quiet$input_problems$male
      [1] "`total_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 130 and 320"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320"
      
      $matrix_1$quiet$input_problems$male
      [1] "`total_c` entered as structure(50, dim = c(1L, 1L)), but must be between 130 and 320"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`total_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 130 and 320"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`total_c` entered as c(0, 8675309), but must be between 130 and 320"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`total_c` entered as c(0, 8675309), but must be between 130 and 320"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`total_c` entered as c(0, 8675309), but must be between 130 and 320"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`total_c` entered as c(0, 8675309), but must be between 130 and 320"
      
      
      
      

# HDL-C validation works

    Code
      nested_lapply("hdl_c", 19, 101, "mg/dL")
    Message
      Please check the following required variables: 
      * `hdl_c` entered as 19, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as 19, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as 101, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as 101, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as "potato", but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as "potato", but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as FALSE, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as FALSE, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as NA, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as NA, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as NULL, but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as NULL, but must be between 20 and 100
    Output
      $`19`
      $`19`$not_quiet
      $`19`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`19`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`19`$not_quiet$input_problems
      $`19`$not_quiet$input_problems$female
      [1] "`hdl_c` entered as 19, but must be between 20 and 100"
      
      $`19`$not_quiet$input_problems$male
      [1] "`hdl_c` entered as 19, but must be between 20 and 100"
      
      
      
      $`19`$quiet
      $`19`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`19`$quiet$model
      female   male 
      "none" "none" 
      
      $`19`$quiet$over_years
      female   male 
          NA     NA 
      
      $`19`$quiet$input_problems
      $`19`$quiet$input_problems$female
      [1] "`hdl_c` entered as 19, but must be between 20 and 100"
      
      $`19`$quiet$input_problems$male
      [1] "`hdl_c` entered as 19, but must be between 20 and 100"
      
      
      
      
      $`101`
      $`101`$not_quiet
      $`101`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`101`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`101`$not_quiet$input_problems
      $`101`$not_quiet$input_problems$female
      [1] "`hdl_c` entered as 101, but must be between 20 and 100"
      
      $`101`$not_quiet$input_problems$male
      [1] "`hdl_c` entered as 101, but must be between 20 and 100"
      
      
      
      $`101`$quiet
      $`101`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`101`$quiet$model
      female   male 
      "none" "none" 
      
      $`101`$quiet$over_years
      female   male 
          NA     NA 
      
      $`101`$quiet$input_problems
      $`101`$quiet$input_problems$female
      [1] "`hdl_c` entered as 101, but must be between 20 and 100"
      
      $`101`$quiet$input_problems$male
      [1] "`hdl_c` entered as 101, but must be between 20 and 100"
      
      
      
      
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
      [1] "`hdl_c` entered as \"potato\", but must be between 20 and 100"
      
      $potato$not_quiet$input_problems$male
      [1] "`hdl_c` entered as \"potato\", but must be between 20 and 100"
      
      
      
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
      [1] "`hdl_c` entered as \"potato\", but must be between 20 and 100"
      
      $potato$quiet$input_problems$male
      [1] "`hdl_c` entered as \"potato\", but must be between 20 and 100"
      
      
      
      
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
      [1] "`hdl_c` entered as FALSE, but must be between 20 and 100"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`hdl_c` entered as FALSE, but must be between 20 and 100"
      
      
      
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
      [1] "`hdl_c` entered as FALSE, but must be between 20 and 100"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`hdl_c` entered as FALSE, but must be between 20 and 100"
      
      
      
      
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
      [1] "`hdl_c` entered as NA, but must be between 20 and 100"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`hdl_c` entered as NA, but must be between 20 and 100"
      
      
      
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
      [1] "`hdl_c` entered as NA, but must be between 20 and 100"
      
      $`NA`$quiet$input_problems$male
      [1] "`hdl_c` entered as NA, but must be between 20 and 100"
      
      
      
      
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
      [1] "`hdl_c` entered as NULL, but must be between 20 and 100"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`hdl_c` entered as NULL, but must be between 20 and 100"
      
      
      
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
      [1] "`hdl_c` entered as NULL, but must be between 20 and 100"
      
      $`NULL`$quiet$input_problems$male
      [1] "`hdl_c` entered as NULL, but must be between 20 and 100"
      
      
      
      

---

    Code
      nested_lapply("hdl_c", 0.5, 2.6, "mmol/L")
    Message
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as 0.5, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as 0.5, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as 2.6, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as 2.6, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as "potato", but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as "potato", but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as FALSE, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as FALSE, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as NA, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as NA, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as NULL, but must be between 0.52 and 2.59
      Please check the following required variables: 
      * `total_c` entered as 200, but must be between 3.36 and 8.28
      * `hdl_c` entered as NULL, but must be between 0.52 and 2.59
    Output
      $`0.5`
      $`0.5`$not_quiet
      $`0.5`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`0.5`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`0.5`$not_quiet$input_problems
      $`0.5`$not_quiet$input_problems$female
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 0.5, but must be between 0.52 and 2.59"
      
      $`0.5`$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 0.5, but must be between 0.52 and 2.59"
      
      
      
      $`0.5`$quiet
      $`0.5`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`0.5`$quiet$model
      female   male 
      "none" "none" 
      
      $`0.5`$quiet$over_years
      female   male 
          NA     NA 
      
      $`0.5`$quiet$input_problems
      $`0.5`$quiet$input_problems$female
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 0.5, but must be between 0.52 and 2.59"
      
      $`0.5`$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 0.5, but must be between 0.52 and 2.59"
      
      
      
      
      $`2.6`
      $`2.6`$not_quiet
      $`2.6`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`2.6`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`2.6`$not_quiet$input_problems
      $`2.6`$not_quiet$input_problems$female
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 2.6, but must be between 0.52 and 2.59"
      
      $`2.6`$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 2.6, but must be between 0.52 and 2.59"
      
      
      
      $`2.6`$quiet
      $`2.6`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`2.6`$quiet$model
      female   male 
      "none" "none" 
      
      $`2.6`$quiet$over_years
      female   male 
          NA     NA 
      
      $`2.6`$quiet$input_problems
      $`2.6`$quiet$input_problems$female
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 2.6, but must be between 0.52 and 2.59"
      
      $`2.6`$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as 2.6, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as \"potato\", but must be between 0.52 and 2.59"
      
      $potato$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as \"potato\", but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as \"potato\", but must be between 0.52 and 2.59"
      
      $potato$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as \"potato\", but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as FALSE, but must be between 0.52 and 2.59"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as FALSE, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as FALSE, but must be between 0.52 and 2.59"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as FALSE, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NA, but must be between 0.52 and 2.59"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NA, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NA, but must be between 0.52 and 2.59"
      
      $`NA`$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NA, but must be between 0.52 and 2.59"
      
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NULL, but must be between 0.52 and 2.59"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NULL, but must be between 0.52 and 2.59"
      
      
      
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
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NULL, but must be between 0.52 and 2.59"
      
      $`NULL`$quiet$input_problems$male
      [1] "`total_c` entered as 200, but must be between 3.36 and 8.28; `hdl_c` entered as NULL, but must be between 0.52 and 2.59"
      
      
      
      

# HDL-C validation works, extra wrong

    Code
      nested_lapply("hdl_c", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `hdl_c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as list(age = 50), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as list(age = 50), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as c(0, 8675309), but must be between 20 and 100
      Please check the following required variables: 
      * `hdl_c` entered as c(0, 8675309), but must be between 20 and 100
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`hdl_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`hdl_c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`hdl_c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 20 and 100"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as list(age = 50), but must be between 20 and 100"
      
      $list_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as list(age = 50), but must be between 20 and 100"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`hdl_c` entered as list(age = 50), but must be between 20 and 100"
      
      $list_1$quiet$input_problems$male
      [1] "`hdl_c` entered as list(age = 50), but must be between 20 and 100"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 20 and 100"
      
      $list$not_quiet$input_problems$male
      [1] "`hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 20 and 100"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 20 and 100"
      
      $list$quiet$input_problems$male
      [1] "`hdl_c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 20 and 100"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100"
      
      $matrix_1$quiet$input_problems$male
      [1] "`hdl_c` entered as structure(50, dim = c(1L, 1L)), but must be between 20 and 100"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`hdl_c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 20 and 100"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`hdl_c` entered as c(0, 8675309), but must be between 20 and 100"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`hdl_c` entered as c(0, 8675309), but must be between 20 and 100"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`hdl_c` entered as c(0, 8675309), but must be between 20 and 100"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`hdl_c` entered as c(0, 8675309), but must be between 20 and 100"
      
      
      
      

# Statin validation works

    Code
      nested_lapply("statin")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `statin` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] NA
      
      $`0`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$quiet$model
      female   male 
      "base" "base" 
      
      $`0`$quiet$over_years
      female   male 
          10     10 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] NA
      
      $`0`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$quiet$input_problems$male
      [1] "`statin` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`statin` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$not_quiet$input_problems$male
      [1] "`statin` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`statin` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$quiet$input_problems$male
      [1] "`statin` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] NA
      
      $`FALSE`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] NA
      
      $`FALSE`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`statin` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`statin` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`statin` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$quiet$input_problems$male
      [1] "`statin` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$quiet$input_problems$male
      [1] "`statin` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Statin validation works, extra wrong

    Code
      nested_lapply("statin", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `statin` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`statin` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`statin` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`statin` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`statin` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`statin` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$not_quiet$input_problems$male
      [1] "`statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$quiet$input_problems$male
      [1] "`statin` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`statin` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$not_quiet$input_problems$male
      [1] "`statin` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`statin` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$quiet$input_problems$male
      [1] "`statin` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$quiet$input_problems$male
      [1] "`statin` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`statin` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`statin` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Diabetes mellitus validation works

    Code
      nested_lapply("dm")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `dm` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.9%   7.5% 
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 3.7%   4.8% 
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.5%   3.9% 
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 1.6%   2.4% 
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.2%   2.4% 
      
      $`0`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] NA
      
      $`0`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.9%   7.5% 
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 3.7%   4.8% 
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.5%   3.9% 
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 1.6%   2.4% 
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.2%   2.4% 
      
      $`0`$quiet$model
      female   male 
      "base" "base" 
      
      $`0`$quiet$over_years
      female   male 
          10     10 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] NA
      
      $`0`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$quiet$input_problems$male
      [1] "`dm` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`dm` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$not_quiet$input_problems$male
      [1] "`dm` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`dm` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$quiet$input_problems$male
      [1] "`dm` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.9%   7.5% 
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 3.7%   4.8% 
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.5%   3.9% 
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 1.6%   2.4% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.2%   2.4% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] NA
      
      $`FALSE`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.9%   7.5% 
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 3.7%   4.8% 
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.5%   3.9% 
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 1.6%   2.4% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 2.2%   2.4% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] NA
      
      $`FALSE`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`dm` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`dm` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`dm` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$quiet$input_problems$male
      [1] "`dm` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$quiet$input_problems$male
      [1] "`dm` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Diabetes mellitus validation works, extra wrong

    Code
      nested_lapply("dm", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `dm` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`dm` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`dm` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`dm` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`dm` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`dm` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$not_quiet$input_problems$male
      [1] "`dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$quiet$input_problems$male
      [1] "`dm` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`dm` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$not_quiet$input_problems$male
      [1] "`dm` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`dm` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$quiet$input_problems$male
      [1] "`dm` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$quiet$input_problems$male
      [1] "`dm` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`dm` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`dm` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Smoking validation works

    Code
      nested_lapply("smoking")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as "potato", but must be one of TRUE, 1, FALSE, 0
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      Please check the following required variables: 
      * `smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] NA
      
      $`0`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$quiet$model
      female   male 
      "base" "base" 
      
      $`0`$quiet$over_years
      female   male 
          10     10 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] NA
      
      $`0`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      $`8675309`$quiet$input_problems$male
      [1] "`smoking` entered as 8675309, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`smoking` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$not_quiet$input_problems$male
      [1] "`smoking` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`smoking` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      $potato$quiet$input_problems$male
      [1] "`smoking` entered as \"potato\", but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] NA
      
      $`FALSE`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] NA
      
      $`FALSE`$quiet$input_problems$male
      [1] NA
      
      
      
      
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
      [1] "`smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      $`NA`$quiet$input_problems$male
      [1] "`smoking` entered as NA, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
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
      [1] "`smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
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
      [1] "`smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      $`NULL`$quiet$input_problems$male
      [1] "`smoking` entered as NULL, but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# Smoking validation works, extra wrong

    Code
      nested_lapply("smoking", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `smoking` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
      Please check the following required variables: 
      * `smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`smoking` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`smoking` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`smoking` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`smoking` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`smoking` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$not_quiet$input_problems$male
      [1] "`smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      $list_1$quiet$input_problems$male
      [1] "`smoking` entered as list(age = 50), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`smoking` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$not_quiet$input_problems$male
      [1] "`smoking` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`smoking` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      $list$quiet$input_problems$male
      [1] "`smoking` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_1$quiet$input_problems$male
      [1] "`smoking` entered as structure(50, dim = c(1L, 1L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`smoking` entered as structure(1:10, dim = c(2L, 5L)), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`smoking` entered as c(0, 8675309), but must be one of TRUE, 1, FALSE, 0"
      
      
      
      

# eGFR validation works

    Code
      nested_lapply("egfr", 14, 141)
    Message
      Please check the following required variables: 
      * `egfr` entered as 14, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as 14, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as 141, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as 141, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as "potato", but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as "potato", but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as FALSE, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as FALSE, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as NA, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as NA, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as NULL, but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as NULL, but must be between 15 and 140
    Output
      $`14`
      $`14`$not_quiet
      $`14`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`14`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`14`$not_quiet$input_problems
      $`14`$not_quiet$input_problems$female
      [1] "`egfr` entered as 14, but must be between 15 and 140"
      
      $`14`$not_quiet$input_problems$male
      [1] "`egfr` entered as 14, but must be between 15 and 140"
      
      
      
      $`14`$quiet
      $`14`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`14`$quiet$model
      female   male 
      "none" "none" 
      
      $`14`$quiet$over_years
      female   male 
          NA     NA 
      
      $`14`$quiet$input_problems
      $`14`$quiet$input_problems$female
      [1] "`egfr` entered as 14, but must be between 15 and 140"
      
      $`14`$quiet$input_problems$male
      [1] "`egfr` entered as 14, but must be between 15 and 140"
      
      
      
      
      $`141`
      $`141`$not_quiet
      $`141`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`141`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`141`$not_quiet$input_problems
      $`141`$not_quiet$input_problems$female
      [1] "`egfr` entered as 141, but must be between 15 and 140"
      
      $`141`$not_quiet$input_problems$male
      [1] "`egfr` entered as 141, but must be between 15 and 140"
      
      
      
      $`141`$quiet
      $`141`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`141`$quiet$model
      female   male 
      "none" "none" 
      
      $`141`$quiet$over_years
      female   male 
          NA     NA 
      
      $`141`$quiet$input_problems
      $`141`$quiet$input_problems$female
      [1] "`egfr` entered as 141, but must be between 15 and 140"
      
      $`141`$quiet$input_problems$male
      [1] "`egfr` entered as 141, but must be between 15 and 140"
      
      
      
      
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
      [1] "`egfr` entered as \"potato\", but must be between 15 and 140"
      
      $potato$not_quiet$input_problems$male
      [1] "`egfr` entered as \"potato\", but must be between 15 and 140"
      
      
      
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
      [1] "`egfr` entered as \"potato\", but must be between 15 and 140"
      
      $potato$quiet$input_problems$male
      [1] "`egfr` entered as \"potato\", but must be between 15 and 140"
      
      
      
      
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
      [1] "`egfr` entered as FALSE, but must be between 15 and 140"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`egfr` entered as FALSE, but must be between 15 and 140"
      
      
      
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
      [1] "`egfr` entered as FALSE, but must be between 15 and 140"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`egfr` entered as FALSE, but must be between 15 and 140"
      
      
      
      
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
      [1] "`egfr` entered as NA, but must be between 15 and 140"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`egfr` entered as NA, but must be between 15 and 140"
      
      
      
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
      [1] "`egfr` entered as NA, but must be between 15 and 140"
      
      $`NA`$quiet$input_problems$male
      [1] "`egfr` entered as NA, but must be between 15 and 140"
      
      
      
      
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
      [1] "`egfr` entered as NULL, but must be between 15 and 140"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`egfr` entered as NULL, but must be between 15 and 140"
      
      
      
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
      [1] "`egfr` entered as NULL, but must be between 15 and 140"
      
      $`NULL`$quiet$input_problems$male
      [1] "`egfr` entered as NULL, but must be between 15 and 140"
      
      
      
      

# eGFR validation works, extra wrong

    Code
      nested_lapply("egfr", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `egfr` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as list(age = 50), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as list(age = 50), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as c(0, 8675309), but must be between 15 and 140
      Please check the following required variables: 
      * `egfr` entered as c(0, 8675309), but must be between 15 and 140
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`egfr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`egfr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`egfr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`egfr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`egfr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 15 and 140"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`egfr` entered as list(age = 50), but must be between 15 and 140"
      
      $list_1$not_quiet$input_problems$male
      [1] "`egfr` entered as list(age = 50), but must be between 15 and 140"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`egfr` entered as list(age = 50), but must be between 15 and 140"
      
      $list_1$quiet$input_problems$male
      [1] "`egfr` entered as list(age = 50), but must be between 15 and 140"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`egfr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 15 and 140"
      
      $list$not_quiet$input_problems$male
      [1] "`egfr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 15 and 140"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`egfr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 15 and 140"
      
      $list$quiet$input_problems$male
      [1] "`egfr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 15 and 140"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140"
      
      $matrix_1$quiet$input_problems$male
      [1] "`egfr` entered as structure(50, dim = c(1L, 1L)), but must be between 15 and 140"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`egfr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 15 and 140"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`egfr` entered as c(0, 8675309), but must be between 15 and 140"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`egfr` entered as c(0, 8675309), but must be between 15 and 140"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`egfr` entered as c(0, 8675309), but must be between 15 and 140"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`egfr` entered as c(0, 8675309), but must be between 15 and 140"
      
      
      
      

# BMI validation works

    Code
      nested_lapply("bmi", 18.4, 40)
    Message
      Please check the following required variables: 
      * `bmi` entered as 18.4, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as 18.4, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as 40, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as 40, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as "potato", but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as "potato", but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as FALSE, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as FALSE, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as NA, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as NA, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as NULL, but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as NULL, but must be between 18.5 and 39.9
    Output
      $`18.4`
      $`18.4`$not_quiet
      $`18.4`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`18.4`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`18.4`$not_quiet$input_problems
      $`18.4`$not_quiet$input_problems$female
      [1] "`bmi` entered as 18.4, but must be between 18.5 and 39.9"
      
      $`18.4`$not_quiet$input_problems$male
      [1] "`bmi` entered as 18.4, but must be between 18.5 and 39.9"
      
      
      
      $`18.4`$quiet
      $`18.4`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`18.4`$quiet$model
      female   male 
      "none" "none" 
      
      $`18.4`$quiet$over_years
      female   male 
          NA     NA 
      
      $`18.4`$quiet$input_problems
      $`18.4`$quiet$input_problems$female
      [1] "`bmi` entered as 18.4, but must be between 18.5 and 39.9"
      
      $`18.4`$quiet$input_problems$male
      [1] "`bmi` entered as 18.4, but must be between 18.5 and 39.9"
      
      
      
      
      $`40`
      $`40`$not_quiet
      $`40`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$not_quiet$model
      female   male 
      "none" "none" 
      
      $`40`$not_quiet$over_years
      female   male 
          NA     NA 
      
      $`40`$not_quiet$input_problems
      $`40`$not_quiet$input_problems$female
      [1] "`bmi` entered as 40, but must be between 18.5 and 39.9"
      
      $`40`$not_quiet$input_problems$male
      [1] "`bmi` entered as 40, but must be between 18.5 and 39.9"
      
      
      
      $`40`$quiet
      $`40`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $`40`$quiet$model
      female   male 
      "none" "none" 
      
      $`40`$quiet$over_years
      female   male 
          NA     NA 
      
      $`40`$quiet$input_problems
      $`40`$quiet$input_problems$female
      [1] "`bmi` entered as 40, but must be between 18.5 and 39.9"
      
      $`40`$quiet$input_problems$male
      [1] "`bmi` entered as 40, but must be between 18.5 and 39.9"
      
      
      
      
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
      [1] "`bmi` entered as \"potato\", but must be between 18.5 and 39.9"
      
      $potato$not_quiet$input_problems$male
      [1] "`bmi` entered as \"potato\", but must be between 18.5 and 39.9"
      
      
      
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
      [1] "`bmi` entered as \"potato\", but must be between 18.5 and 39.9"
      
      $potato$quiet$input_problems$male
      [1] "`bmi` entered as \"potato\", but must be between 18.5 and 39.9"
      
      
      
      
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
      [1] "`bmi` entered as FALSE, but must be between 18.5 and 39.9"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`bmi` entered as FALSE, but must be between 18.5 and 39.9"
      
      
      
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
      [1] "`bmi` entered as FALSE, but must be between 18.5 and 39.9"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`bmi` entered as FALSE, but must be between 18.5 and 39.9"
      
      
      
      
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
      [1] "`bmi` entered as NA, but must be between 18.5 and 39.9"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`bmi` entered as NA, but must be between 18.5 and 39.9"
      
      
      
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
      [1] "`bmi` entered as NA, but must be between 18.5 and 39.9"
      
      $`NA`$quiet$input_problems$male
      [1] "`bmi` entered as NA, but must be between 18.5 and 39.9"
      
      
      
      
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
      [1] "`bmi` entered as NULL, but must be between 18.5 and 39.9"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`bmi` entered as NULL, but must be between 18.5 and 39.9"
      
      
      
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
      [1] "`bmi` entered as NULL, but must be between 18.5 and 39.9"
      
      $`NULL`$quiet$input_problems$male
      [1] "`bmi` entered as NULL, but must be between 18.5 and 39.9"
      
      
      
      

# BMI validation works, extra wrong

    Code
      nested_lapply("bmi", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `bmi` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as list(age = 50), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as list(age = 50), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9
      Please check the following required variables: 
      * `bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`bmi` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`bmi` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`bmi` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`bmi` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`bmi` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 18.5 and 39.9"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`bmi` entered as list(age = 50), but must be between 18.5 and 39.9"
      
      $list_1$not_quiet$input_problems$male
      [1] "`bmi` entered as list(age = 50), but must be between 18.5 and 39.9"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`bmi` entered as list(age = 50), but must be between 18.5 and 39.9"
      
      $list_1$quiet$input_problems$male
      [1] "`bmi` entered as list(age = 50), but must be between 18.5 and 39.9"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`bmi` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 18.5 and 39.9"
      
      $list$not_quiet$input_problems$male
      [1] "`bmi` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 18.5 and 39.9"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`bmi` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 18.5 and 39.9"
      
      $list$quiet$input_problems$male
      [1] "`bmi` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 18.5 and 39.9"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9"
      
      $matrix_1$quiet$input_problems$male
      [1] "`bmi` entered as structure(50, dim = c(1L, 1L)), but must be between 18.5 and 39.9"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`bmi` entered as structure(1:10, dim = c(2L, 5L)), but must be between 18.5 and 39.9"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`bmi` entered as c(0, 8675309), but must be between 18.5 and 39.9"
      
      
      
      

# HbA1c validation works

    Code
      nested_lapply("hba1c", 4.4, 15.1)
    Message
      Please check the following optional variables: 
      * `hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as "potato", but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as "potato", but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
    Output
      $`4.4`
      $`4.4`$not_quiet
      $`4.4`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`4.4`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`4.4`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`4.4`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`4.4`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`4.4`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`4.4`$not_quiet$over_years
      female   male 
          10     10 
      
      $`4.4`$not_quiet$input_problems
      $`4.4`$not_quiet$input_problems$female
      [1] "`hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)"
      
      $`4.4`$not_quiet$input_problems$male
      [1] "`hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $`4.4`$quiet
      $`4.4`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`4.4`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`4.4`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`4.4`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`4.4`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`4.4`$quiet$model
      female   male 
      "base" "base" 
      
      $`4.4`$quiet$over_years
      female   male 
          10     10 
      
      $`4.4`$quiet$input_problems
      $`4.4`$quiet$input_problems$female
      [1] "`hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)"
      
      $`4.4`$quiet$input_problems$male
      [1] "`hba1c` entered as 4.4, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $`15.1`
      $`15.1`$not_quiet
      $`15.1`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`15.1`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`15.1`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`15.1`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`15.1`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`15.1`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`15.1`$not_quiet$over_years
      female   male 
          10     10 
      
      $`15.1`$not_quiet$input_problems
      $`15.1`$not_quiet$input_problems$female
      [1] "`hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)"
      
      $`15.1`$not_quiet$input_problems$male
      [1] "`hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $`15.1`$quiet
      $`15.1`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`15.1`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`15.1`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`15.1`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`15.1`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`15.1`$quiet$model
      female   male 
      "base" "base" 
      
      $`15.1`$quiet$over_years
      female   male 
          10     10 
      
      $`15.1`$quiet$input_problems
      $`15.1`$quiet$input_problems$female
      [1] "`hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)"
      
      $`15.1`$quiet$input_problems$male
      [1] "`hba1c` entered as 15.1, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $potato
      $potato$not_quiet
      $potato$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$not_quiet$model
      female   male 
      "base" "base" 
      
      $potato$not_quiet$over_years
      female   male 
          10     10 
      
      $potato$not_quiet$input_problems
      $potato$not_quiet$input_problems$female
      [1] "`hba1c` entered as \"potato\", but must be between 4.5 and 15 (so set to NULL)"
      
      $potato$not_quiet$input_problems$male
      [1] "`hba1c` entered as \"potato\", but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $potato$quiet
      $potato$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$quiet$model
      female   male 
      "base" "base" 
      
      $potato$quiet$over_years
      female   male 
          10     10 
      
      $potato$quiet$input_problems
      $potato$quiet$input_problems$female
      [1] "`hba1c` entered as \"potato\", but must be between 4.5 and 15 (so set to NULL)"
      
      $potato$quiet$input_problems$male
      [1] "`hba1c` entered as \"potato\", but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] "`hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] "`hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`hba1c` entered as FALSE, but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] NA
      
      $`NA`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$quiet$over_years
      female   male 
          10     10 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] NA
      
      $`NA`$quiet$input_problems$male
      [1] NA
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] NA
      
      $`NULL`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] NA
      
      $`NULL`$quiet$input_problems$male
      [1] NA
      
      
      
      

# HbA1c validation works, extra wrong

    Code
      nested_lapply("hba1c", test_vals = "wrong_extended")
    Message
      Please check the following optional variables: 
      * `hba1c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)
      PREVENT estimates are from: Base model.
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`hba1c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`hba1c` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`hba1c` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $list_1$not_quiet$over_years
      female   male 
          10     10 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)"
      
      $list_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$quiet$model
      female   male 
      "base" "base" 
      
      $list_1$quiet$over_years
      female   male 
          10     10 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)"
      
      $list_1$quiet$input_problems$male
      [1] "`hba1c` entered as list(age = 50), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$not_quiet$model
      female   male 
      "base" "base" 
      
      $list$not_quiet$over_years
      female   male 
          10     10 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 4.5 and 15 (so set to NULL)"
      
      $list$not_quiet$input_problems$male
      [1] "`hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$quiet$model
      female   male 
      "base" "base" 
      
      $list$quiet$over_years
      female   male 
          10     10 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 4.5 and 15 (so set to NULL)"
      
      $list$quiet$input_problems$male
      [1] "`hba1c` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $matrix_1$quiet$input_problems$male
      [1] "`hba1c` entered as structure(50, dim = c(1L, 1L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`hba1c` entered as structure(1:10, dim = c(2L, 5L)), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`hba1c` entered as c(0, 8675309), but must be between 4.5 and 15 (so set to NULL)"
      
      
      
      

# UACR validation works

    Code
      nested_lapply("uacr", 0.09, 25000.1)
    Message
      Please check the following optional variables: 
      * `uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as "potato", but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as "potato", but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
    Output
      $`0.09`
      $`0.09`$not_quiet
      $`0.09`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0.09`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0.09`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0.09`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0.09`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0.09`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0.09`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0.09`$not_quiet$input_problems
      $`0.09`$not_quiet$input_problems$female
      [1] "`uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`0.09`$not_quiet$input_problems$male
      [1] "`uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $`0.09`$quiet
      $`0.09`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0.09`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0.09`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0.09`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0.09`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0.09`$quiet$model
      female   male 
      "base" "base" 
      
      $`0.09`$quiet$over_years
      female   male 
          10     10 
      
      $`0.09`$quiet$input_problems
      $`0.09`$quiet$input_problems$female
      [1] "`uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`0.09`$quiet$input_problems$male
      [1] "`uacr` entered as 0.09, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $`25000.1`
      $`25000.1`$not_quiet
      $`25000.1`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`25000.1`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`25000.1`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`25000.1`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`25000.1`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`25000.1`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`25000.1`$not_quiet$over_years
      female   male 
          10     10 
      
      $`25000.1`$not_quiet$input_problems
      $`25000.1`$not_quiet$input_problems$female
      [1] "`uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`25000.1`$not_quiet$input_problems$male
      [1] "`uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $`25000.1`$quiet
      $`25000.1`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`25000.1`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`25000.1`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`25000.1`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`25000.1`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`25000.1`$quiet$model
      female   male 
      "base" "base" 
      
      $`25000.1`$quiet$over_years
      female   male 
          10     10 
      
      $`25000.1`$quiet$input_problems
      $`25000.1`$quiet$input_problems$female
      [1] "`uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`25000.1`$quiet$input_problems$male
      [1] "`uacr` entered as 25000.1, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $potato
      $potato$not_quiet
      $potato$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$not_quiet$model
      female   male 
      "base" "base" 
      
      $potato$not_quiet$over_years
      female   male 
          10     10 
      
      $potato$not_quiet$input_problems
      $potato$not_quiet$input_problems$female
      [1] "`uacr` entered as \"potato\", but must be between 0.1 and 25000 (so set to NULL)"
      
      $potato$not_quiet$input_problems$male
      [1] "`uacr` entered as \"potato\", but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $potato$quiet
      $potato$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$quiet$model
      female   male 
      "base" "base" 
      
      $potato$quiet$over_years
      female   male 
          10     10 
      
      $potato$quiet$input_problems
      $potato$quiet$input_problems$female
      [1] "`uacr` entered as \"potato\", but must be between 0.1 and 25000 (so set to NULL)"
      
      $potato$quiet$input_problems$male
      [1] "`uacr` entered as \"potato\", but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] "`uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] "`uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`uacr` entered as FALSE, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] NA
      
      $`NA`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$quiet$over_years
      female   male 
          10     10 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] NA
      
      $`NA`$quiet$input_problems$male
      [1] NA
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] NA
      
      $`NULL`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] NA
      
      $`NULL`$quiet$input_problems$male
      [1] NA
      
      
      
      

# UACR validation works, extra wrong

    Code
      nested_lapply("uacr", test_vals = "wrong_extended")
    Message
      Please check the following optional variables: 
      * `uacr` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)
      PREVENT estimates are from: Base model.
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`uacr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`uacr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`uacr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`uacr` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`uacr` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $list_1$not_quiet$over_years
      female   male 
          10     10 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)"
      
      $list_1$not_quiet$input_problems$male
      [1] "`uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$quiet$model
      female   male 
      "base" "base" 
      
      $list_1$quiet$over_years
      female   male 
          10     10 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)"
      
      $list_1$quiet$input_problems$male
      [1] "`uacr` entered as list(age = 50), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$not_quiet$model
      female   male 
      "base" "base" 
      
      $list$not_quiet$over_years
      female   male 
          10     10 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`uacr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 0.1 and 25000 (so set to NULL)"
      
      $list$not_quiet$input_problems$male
      [1] "`uacr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$quiet$model
      female   male 
      "base" "base" 
      
      $list$quiet$over_years
      female   male 
          10     10 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`uacr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 0.1 and 25000 (so set to NULL)"
      
      $list$quiet$input_problems$male
      [1] "`uacr` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $matrix_1$quiet$input_problems$male
      [1] "`uacr` entered as structure(50, dim = c(1L, 1L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`uacr` entered as structure(1:10, dim = c(2L, 5L)), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`uacr` entered as c(0, 8675309), but must be between 0.1 and 25000 (so set to NULL)"
      
      
      
      

# Zip code validation works

    Code
      nested_lapply("zip")
    Message
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` "potato" not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` "potato" not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` FALSE not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` FALSE not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
    Output
      $`0`
      $`0`$not_quiet
      $`0`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`0`$not_quiet$over_years
      female   male 
          10     10 
      
      $`0`$not_quiet$input_problems
      $`0`$not_quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)"
      
      $`0`$not_quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)"
      
      
      
      $`0`$quiet
      $`0`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`0`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`0`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`0`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`0`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`0`$quiet$model
      female   male 
      "base" "base" 
      
      $`0`$quiet$over_years
      female   male 
          10     10 
      
      $`0`$quiet$input_problems
      $`0`$quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)"
      
      $`0`$quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 0 not found among valid zip codes (so set to NULL)"
      
      
      
      
      $`8675309`
      $`8675309`$not_quiet
      $`8675309`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`8675309`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`8675309`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`8675309`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`8675309`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`8675309`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`8675309`$not_quiet$over_years
      female   male 
          10     10 
      
      $`8675309`$not_quiet$input_problems
      $`8675309`$not_quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)"
      
      
      
      $`8675309`$quiet
      $`8675309`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`8675309`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`8675309`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`8675309`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`8675309`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`8675309`$quiet$model
      female   male 
      "base" "base" 
      
      $`8675309`$quiet$over_years
      female   male 
          10     10 
      
      $`8675309`$quiet$input_problems
      $`8675309`$quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)"
      
      $`8675309`$quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` 8675309 not found among valid zip codes (so set to NULL)"
      
      
      
      
      $potato
      $potato$not_quiet
      $potato$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$not_quiet$model
      female   male 
      "base" "base" 
      
      $potato$not_quiet$over_years
      female   male 
          10     10 
      
      $potato$not_quiet$input_problems
      $potato$not_quiet$input_problems$female
      [1] "`zip` \"potato\" not found among valid zip codes (so set to NULL)"
      
      $potato$not_quiet$input_problems$male
      [1] "`zip` \"potato\" not found among valid zip codes (so set to NULL)"
      
      
      
      $potato$quiet
      $potato$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $potato$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $potato$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $potato$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $potato$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $potato$quiet$model
      female   male 
      "base" "base" 
      
      $potato$quiet$over_years
      female   male 
          10     10 
      
      $potato$quiet$input_problems
      $potato$quiet$input_problems$female
      [1] "`zip` \"potato\" not found among valid zip codes (so set to NULL)"
      
      $potato$quiet$input_problems$male
      [1] "`zip` \"potato\" not found among valid zip codes (so set to NULL)"
      
      
      
      
      $`FALSE`
      $`FALSE`$not_quiet
      $`FALSE`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$not_quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$not_quiet$input_problems
      $`FALSE`$not_quiet$input_problems$female
      [1] "`zip` FALSE not found among valid zip codes (so set to NULL)"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`zip` FALSE not found among valid zip codes (so set to NULL)"
      
      
      
      $`FALSE`$quiet
      $`FALSE`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`FALSE`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`FALSE`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`FALSE`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`FALSE`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`FALSE`$quiet$model
      female   male 
      "base" "base" 
      
      $`FALSE`$quiet$over_years
      female   male 
          10     10 
      
      $`FALSE`$quiet$input_problems
      $`FALSE`$quiet$input_problems$female
      [1] "`zip` FALSE not found among valid zip codes (so set to NULL)"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`zip` FALSE not found among valid zip codes (so set to NULL)"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] NA
      
      $`NA`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$quiet$over_years
      female   male 
          10     10 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] NA
      
      $`NA`$quiet$input_problems$male
      [1] NA
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] NA
      
      $`NULL`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] NA
      
      $`NULL`$quiet$input_problems$male
      [1] NA
      
      
      
      

# Zip code validation works, extra wrong

    Code
      nested_lapply("zip", test_vals = "wrong_extended")
    Message
      Please check the following optional variables: 
      * `zip` structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` list(age = 50) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` list(age = 50) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` list(alpha = 1, bravo = TRUE, charlie = "cat") not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` list(alpha = 1, bravo = TRUE, charlie = "cat") not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
      Please check the following optional variables: 
      * `zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)
      PREVENT estimates are from: Base model.
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`zip` structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`zip` structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`zip` structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`zip` structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`zip` structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`zip` structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $dataframe_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`zip` structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`zip` structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $list_1$not_quiet$over_years
      female   male 
          10     10 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`zip` list(age = 50) not found among valid zip codes (so set to NULL)"
      
      $list_1$not_quiet$input_problems$male
      [1] "`zip` list(age = 50) not found among valid zip codes (so set to NULL)"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list_1$quiet$model
      female   male 
      "base" "base" 
      
      $list_1$quiet$over_years
      female   male 
          10     10 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`zip` list(age = 50) not found among valid zip codes (so set to NULL)"
      
      $list_1$quiet$input_problems$male
      [1] "`zip` list(age = 50) not found among valid zip codes (so set to NULL)"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$not_quiet$model
      female   male 
      "base" "base" 
      
      $list$not_quiet$over_years
      female   male 
          10     10 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`zip` list(alpha = 1, bravo = TRUE, charlie = \"cat\") not found among valid zip codes (so set to NULL)"
      
      $list$not_quiet$input_problems$male
      [1] "`zip` list(alpha = 1, bravo = TRUE, charlie = \"cat\") not found among valid zip codes (so set to NULL)"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $list$quiet$model
      female   male 
      "base" "base" 
      
      $list$quiet$over_years
      female   male 
          10     10 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`zip` list(alpha = 1, bravo = TRUE, charlie = \"cat\") not found among valid zip codes (so set to NULL)"
      
      $list$quiet$input_problems$male
      [1] "`zip` list(alpha = 1, bravo = TRUE, charlie = \"cat\") not found among valid zip codes (so set to NULL)"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)"
      
      $matrix_1$quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(50, dim = c(1L, 1L)) not found among valid zip codes (so set to NULL)"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $matrix_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` structure(1:10, dim = c(2L, 5L)) not found among valid zip codes (so set to NULL)"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$not_quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $vec_gt_1$quiet$model
      female   male 
      "base" "base" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          10     10 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`zip` entered as a number, which can cause problems (e.g., zips that start with a 0), and `zip` c(0, 8675309) not found among valid zip codes (so set to NULL)"
      
      
      
      

# Model validation works

    Code
      nested_lapply("model")
    Message
      Please check the following required variables: 
      * `model` entered as 0, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as 0, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as 8675309, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as 8675309, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as "potato", but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as "potato", but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as FALSE, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as FALSE, but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
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
      [1] "`model` entered as 0, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`0`$not_quiet$input_problems$male
      [1] "`model` entered as 0, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
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
      [1] "`model` entered as 0, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`0`$quiet$input_problems$male
      [1] "`model` entered as 0, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
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
      [1] "`model` entered as 8675309, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`model` entered as 8675309, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
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
      [1] "`model` entered as 8675309, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`8675309`$quiet$input_problems$male
      [1] "`model` entered as 8675309, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
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
      [1] "`model` entered as \"potato\", but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $potato$not_quiet$input_problems$male
      [1] "`model` entered as \"potato\", but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
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
      [1] "`model` entered as \"potato\", but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $potato$quiet$input_problems$male
      [1] "`model` entered as \"potato\", but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
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
      [1] "`model` entered as FALSE, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`model` entered as FALSE, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
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
      [1] "`model` entered as FALSE, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`model` entered as FALSE, but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $`NA`
      $`NA`$not_quiet
      $`NA`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NA`$not_quiet$input_problems
      $`NA`$not_quiet$input_problems$female
      [1] NA
      
      $`NA`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NA`$quiet
      $`NA`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NA`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NA`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NA`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NA`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NA`$quiet$model
      female   male 
      "base" "base" 
      
      $`NA`$quiet$over_years
      female   male 
          10     10 
      
      $`NA`$quiet$input_problems
      $`NA`$quiet$input_problems$female
      [1] NA
      
      $`NA`$quiet$input_problems$male
      [1] NA
      
      
      
      
      $`NULL`
      $`NULL`$not_quiet
      $`NULL`$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$not_quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$not_quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$not_quiet$input_problems
      $`NULL`$not_quiet$input_problems$female
      [1] NA
      
      $`NULL`$not_quiet$input_problems$male
      [1] NA
      
      
      
      $`NULL`$quiet
      $`NULL`$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $`NULL`$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $`NULL`$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $`NULL`$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $`NULL`$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $`NULL`$quiet$model
      female   male 
      "base" "base" 
      
      $`NULL`$quiet$over_years
      female   male 
          10     10 
      
      $`NULL`$quiet$input_problems
      $`NULL`$quiet$input_problems$female
      [1] NA
      
      $`NULL`$quiet$input_problems$male
      [1] NA
      
      
      
      

# Model validation works, extra wrong

    Code
      nested_lapply("model", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `model` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as list(age = 50), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as list(age = 50), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(50, dim = c(1L, 1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(50, dim = c(1L, 1L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as c(0, 8675309), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
      Please check the following required variables: 
      * `model` entered as c(0, 8675309), but must be one of "base", "hba1c", "uacr", "sdi", "full", or a list as specified in the documentation
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`model` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`model` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`model` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`model` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`model` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`model` entered as list(age = 50), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $list_1$not_quiet$input_problems$male
      [1] "`model` entered as list(age = 50), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`model` entered as list(age = 50), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $list_1$quiet$input_problems$male
      [1] "`model` entered as list(age = 50), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`model` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $list$not_quiet$input_problems$male
      [1] "`model` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`model` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $list$quiet$input_problems$male
      [1] "`model` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`model` entered as structure(50, dim = c(1L, 1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`model` entered as structure(50, dim = c(1L, 1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`model` entered as structure(50, dim = c(1L, 1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $matrix_1$quiet$input_problems$male
      [1] "`model` entered as structure(50, dim = c(1L, 1L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`model` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`model` entered as c(0, 8675309), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`model` entered as c(0, 8675309), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`model` entered as c(0, 8675309), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`model` entered as c(0, 8675309), but must be one of \"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", or a list as specified in the documentation"
      
      
      
      

# Time validation works

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex_and_time(
        "f", x, FALSE))
    Message
      Please check the following required variables: 
      * `time` entered as 0, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as 8675309, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as "potato", but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as FALSE, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as NA, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as NULL, but must be one of "both", "10", "10yr", "30", "30yr"
    Output
      $`0`
      $`0`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs
      [1] "`time` entered as 0, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`8675309`
      $`8675309`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs
      [1] "`time` entered as 8675309, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $potato
      $potato$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs
      [1] "`time` entered as \"potato\", but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`FALSE`
      $`FALSE`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs
      [1] "`time` entered as FALSE, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NA`
      $`NA`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs
      [1] "`time` entered as NA, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NULL`
      $`NULL`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs
      [1] "`time` entered as NULL, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex_and_time(
        "m", x, FALSE))
    Message
      Please check the following required variables: 
      * `time` entered as 0, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as 8675309, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as "potato", but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as FALSE, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as NA, but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as NULL, but must be one of "both", "10", "10yr", "30", "30yr"
    Output
      $`0`
      $`0`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs
      [1] "`time` entered as 0, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`8675309`
      $`8675309`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs
      [1] "`time` entered as 8675309, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $potato
      $potato$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs
      [1] "`time` entered as \"potato\", but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`FALSE`
      $`FALSE`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs
      [1] "`time` entered as FALSE, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NA`
      $`NA`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs
      [1] "`time` entered as NA, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NULL`
      $`NULL`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs
      [1] "`time` entered as NULL, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex_and_time(
        "f", x, TRUE))
    Output
      $`0`
      $`0`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs
      [1] "`time` entered as 0, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`8675309`
      $`8675309`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs
      [1] "`time` entered as 8675309, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $potato
      $potato$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs
      [1] "`time` entered as \"potato\", but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`FALSE`
      $`FALSE`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs
      [1] "`time` entered as FALSE, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NA`
      $`NA`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs
      [1] "`time` entered as NA, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NULL`
      $`NULL`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs
      [1] "`time` entered as NULL, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_basic(), function(x) check_equations_partial_sans_sex_and_time(
        "m", x, TRUE))
    Output
      $`0`
      $`0`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`0`$input_probs
      [1] "`time` entered as 0, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`8675309`
      $`8675309`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`8675309`$input_probs
      [1] "`time` entered as 8675309, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $potato
      $potato$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $potato$input_probs
      [1] "`time` entered as \"potato\", but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`FALSE`
      $`FALSE`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`FALSE`$input_probs
      [1] "`time` entered as FALSE, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NA`
      $`NA`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NA`$input_probs
      [1] "`time` entered as NA, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $`NULL`
      $`NULL`$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $`NULL`$input_probs
      [1] "`time` entered as NULL, but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x)
        check_equations_partial_sans_sex_and_time("f", x, FALSE))
    Message
      Please check the following required variables: 
      * `time` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as list(age = 50), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(50, dim = c(1L, 1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as c(0, 8675309), but must be one of "both", "10", "10yr", "30", "30yr"
    Output
      $dataframe_1
      $dataframe_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs
      [1] "`time` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs
      [1] "`time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list_1
      $list_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs
      [1] "`time` entered as list(age = 50), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list
      $list$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs
      [1] "`time` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_1
      $matrix_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs
      [1] "`time` entered as structure(50, dim = c(1L, 1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs
      [1] "`time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $vec_gt_1
      $vec_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs
      [1] "`time` entered as c(0, 8675309), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x)
        check_equations_partial_sans_sex_and_time("m", x, FALSE))
    Message
      Please check the following required variables: 
      * `time` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as list(age = 50), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(50, dim = c(1L, 1L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "both", "10", "10yr", "30", "30yr"
      Please check the following required variables: 
      * `time` entered as c(0, 8675309), but must be one of "both", "10", "10yr", "30", "30yr"
    Output
      $dataframe_1
      $dataframe_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs
      [1] "`time` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs
      [1] "`time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list_1
      $list_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs
      [1] "`time` entered as list(age = 50), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list
      $list$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs
      [1] "`time` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_1
      $matrix_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs
      [1] "`time` entered as structure(50, dim = c(1L, 1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs
      [1] "`time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $vec_gt_1
      $vec_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs
      [1] "`time` entered as c(0, 8675309), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x)
        check_equations_partial_sans_sex_and_time("f", x, TRUE))
    Output
      $dataframe_1
      $dataframe_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs
      [1] "`time` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs
      [1] "`time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list_1
      $list_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs
      [1] "`time` entered as list(age = 50), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list
      $list$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs
      [1] "`time` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_1
      $matrix_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs
      [1] "`time` entered as structure(50, dim = c(1L, 1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs
      [1] "`time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $vec_gt_1
      $vec_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs
      [1] "`time` entered as c(0, 8675309), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

---

    Code
      lapply(test_vals_extended(), function(x)
        check_equations_partial_sans_sex_and_time("m", x, TRUE))
    Output
      $dataframe_1
      $dataframe_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_1$input_probs
      [1] "`time` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $dataframe_gt_1
      $dataframe_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $dataframe_gt_1$input_probs
      [1] "`time` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list_1
      $list_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list_1$input_probs
      [1] "`time` entered as list(age = 50), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $list
      $list$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $list$input_probs
      [1] "`time` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_1
      $matrix_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_1$input_probs
      [1] "`time` entered as structure(50, dim = c(1L, 1L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $matrix_gt_1
      $matrix_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $matrix_gt_1$input_probs
      [1] "`time` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      
      $vec_gt_1
      $vec_gt_1$res
      # A tibble: 1 x 7
        total_cvd ascvd heart_failure   chd stroke model over_years
            <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int>
      1        NA    NA            NA    NA     NA none          NA
      
      $vec_gt_1$input_probs
      [1] "`time` entered as c(0, 8675309), but must be one of \"both\", \"10\", \"10yr\", \"30\", \"30yr\""
      
      

# Cholesterol unit validation works

    Code
      nested_lapply("chol_unit")
    Message
      Please check the following required variables: 
      * `chol_unit` entered as 0, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as 0, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as 0, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as 0, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as 8675309, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as 8675309, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as 8675309, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as 8675309, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as "potato", but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as "potato", but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as "potato", but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as "potato", but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as FALSE, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as FALSE, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as FALSE, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as FALSE, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as NA, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as NA, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as NA, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as NA, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as NULL, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as NULL, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as NULL, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as NULL, but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
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
      [1] "`chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`0`$not_quiet$input_problems$male
      [1] "`chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`0`$quiet$input_problems$male
      [1] "`chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 0, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
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
      [1] "`chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`8675309`$not_quiet$input_problems$male
      [1] "`chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`8675309`$quiet$input_problems$male
      [1] "`chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as 8675309, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
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
      [1] "`chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $potato$not_quiet$input_problems$male
      [1] "`chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $potato$quiet$input_problems$male
      [1] "`chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as \"potato\", but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
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
      [1] "`chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`FALSE`$not_quiet$input_problems$male
      [1] "`chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`FALSE`$quiet$input_problems$male
      [1] "`chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as FALSE, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
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
      [1] "`chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`NA`$not_quiet$input_problems$male
      [1] "`chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`NA`$quiet$input_problems$male
      [1] "`chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NA, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
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
      [1] "`chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`NULL`$not_quiet$input_problems$male
      [1] "`chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
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
      [1] "`chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $`NULL`$quiet$input_problems$male
      [1] "`chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as NULL, but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      

# Cholesterol unit validation works, extra wrong

    Code
      nested_lapply("chol_unit", test_vals = "wrong_extended")
    Message
      Please check the following required variables: 
      * `chol_unit` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(list(age = 50), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = "cat"), class = "data.frame", row.names = c(NA, -1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as list(age = 50), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as list(age = 50), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as list(age = 50), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as list(age = 50), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = "cat"), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as c(0, 8675309), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as c(0, 8675309), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
      Please check the following required variables: 
      * `chol_unit` entered as c(0, 8675309), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `total_c` to be valid
      * `chol_unit` entered as c(0, 8675309), but must be one of "mg/dL", "mg", "mmol/L", "mmol" for `hdl_c` to be valid
    Output
      $dataframe_1
      $dataframe_1$not_quiet
      $dataframe_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$not_quiet$input_problems
      $dataframe_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $dataframe_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $dataframe_1$quiet
      $dataframe_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_1$quiet$input_problems
      $dataframe_1$quiet$input_problems$female
      [1] "`chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $dataframe_1$quiet$input_problems$male
      [1] "`chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(age = 50), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $dataframe_gt_1
      $dataframe_gt_1$not_quiet
      $dataframe_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$not_quiet$input_problems
      $dataframe_gt_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $dataframe_gt_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $dataframe_gt_1$quiet
      $dataframe_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $dataframe_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $dataframe_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $dataframe_gt_1$quiet$input_problems
      $dataframe_gt_1$quiet$input_problems$female
      [1] "`chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $dataframe_gt_1$quiet$input_problems$male
      [1] "`chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(list(alpha = 1, bravo = TRUE, charlie = \"cat\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $list_1
      $list_1$not_quiet
      $list_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $list_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$not_quiet$input_problems
      $list_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $list_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $list_1$quiet
      $list_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list_1$quiet$model
      female   male 
      "none" "none" 
      
      $list_1$quiet$over_years
      female   male 
          NA     NA 
      
      $list_1$quiet$input_problems
      $list_1$quiet$input_problems$female
      [1] "`chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $list_1$quiet$input_problems$male
      [1] "`chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(age = 50), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $list
      $list$not_quiet
      $list$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$not_quiet$model
      female   male 
      "none" "none" 
      
      $list$not_quiet$over_years
      female   male 
          NA     NA 
      
      $list$not_quiet$input_problems
      $list$not_quiet$input_problems$female
      [1] "`chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $list$not_quiet$input_problems$male
      [1] "`chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $list$quiet
      $list$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $list$quiet$model
      female   male 
      "none" "none" 
      
      $list$quiet$over_years
      female   male 
          NA     NA 
      
      $list$quiet$input_problems
      $list$quiet$input_problems$female
      [1] "`chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $list$quiet$input_problems$male
      [1] "`chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as list(alpha = 1, bravo = TRUE, charlie = \"cat\"), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $matrix_1
      $matrix_1$not_quiet
      $matrix_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$not_quiet$input_problems
      $matrix_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $matrix_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $matrix_1$quiet
      $matrix_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_1$quiet$input_problems
      $matrix_1$quiet$input_problems$female
      [1] "`chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $matrix_1$quiet$input_problems$male
      [1] "`chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(50, dim = c(1L, 1L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $matrix_gt_1
      $matrix_gt_1$not_quiet
      $matrix_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$not_quiet$input_problems
      $matrix_gt_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $matrix_gt_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $matrix_gt_1$quiet
      $matrix_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $matrix_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $matrix_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $matrix_gt_1$quiet$input_problems
      $matrix_gt_1$quiet$input_problems$female
      [1] "`chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $matrix_gt_1$quiet$input_problems$male
      [1] "`chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as structure(1:10, dim = c(2L, 5L)), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      
      $vec_gt_1
      $vec_gt_1$not_quiet
      $vec_gt_1$not_quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$not_quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$not_quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$not_quiet$input_problems
      $vec_gt_1$not_quiet$input_problems$female
      [1] "`chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $vec_gt_1$not_quiet$input_problems$male
      [1] "`chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      $vec_gt_1$quiet
      $vec_gt_1$quiet$total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 NA     NA   
      
      $vec_gt_1$quiet$model
      female   male 
      "none" "none" 
      
      $vec_gt_1$quiet$over_years
      female   male 
          NA     NA 
      
      $vec_gt_1$quiet$input_problems
      $vec_gt_1$quiet$input_problems$female
      [1] "`chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      $vec_gt_1$quiet$input_problems$male
      [1] "`chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `total_c` to be valid; `chol_unit` entered as c(0, 8675309), but must be one of \"mg/dL\", \"mg\", \"mmol/L\", \"mmol\" for `hdl_c` to be valid"
      
      
      
      

# Preparation of terms works - Basic

    Code
      prep_terms(dat, "base")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          constant 
             0.00000000        1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "hba1c")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          hba1c_dm 
             0.00000000        1.00000000        0.00000000        3.20000000 
            hba1c_no_dm     missing_hba1c          constant 
             0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "uacr")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60           ln_uacr 
             0.00000000        1.00000000        0.00000000        3.68887945 
           missing_uacr          constant 
             0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             1.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        0.00000000        1.00000000 

# Preparation of terms works - No BP tx

    Code
      prep_terms(dat, "base")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             0.00000000        0.00000000        0.00000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          constant 
             0.00000000        1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "hba1c")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             0.00000000        0.00000000        0.00000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          hba1c_dm 
             0.00000000        1.00000000        0.00000000        3.20000000 
            hba1c_no_dm     missing_hba1c          constant 
             0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "uacr")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             0.00000000        0.00000000        0.00000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60           ln_uacr 
             0.00000000        1.00000000        0.00000000        3.68887945 
           missing_uacr          constant 
             0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             0.00000000        0.00000000        0.00000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             0.00000000        0.00000000        0.00000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             1.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        0.00000000        1.00000000 

# Preparation of terms works - No statin

    Code
      prep_terms(dat, "base")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          constant 
             0.00000000        1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "hba1c")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          hba1c_dm 
             0.00000000        1.00000000        0.00000000        3.20000000 
            hba1c_no_dm     missing_hba1c          constant 
             0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "uacr")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60           ln_uacr 
             0.00000000        1.00000000        0.00000000        3.68887945 
           missing_uacr          constant 
             0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             1.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        0.00000000        1.00000000 

# Preparation of terms works - No DM

    Code
      prep_terms(dat, "base")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        0.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        0.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          constant 
             0.00000000        1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "hba1c")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        0.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        0.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          hba1c_dm 
             0.00000000        1.00000000        0.00000000        0.00000000 
            hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "uacr")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        0.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        0.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60           ln_uacr 
             0.00000000        1.00000000        0.00000000        3.68887945 
           missing_uacr          constant 
             0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        0.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        0.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             1.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        0.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        0.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             1.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             0.00000000        3.20000000        0.00000000        1.00000000 

# Preparation of terms works - Missing optional predictors

    Code
      prep_terms(dat, "hba1c")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60          hba1c_dm 
             0.00000000        1.00000000        0.00000000        0.00000000 
            hba1c_no_dm     missing_hba1c          constant 
             0.00000000        1.00000000        1.00000000 

---

    Code
      prep_terms(dat, "uacr")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60           ln_uacr 
             0.00000000        1.00000000        0.00000000        0.00000000 
           missing_uacr          constant 
             1.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             0.00000000        1.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             0.00000000        1.00000000        0.00000000        1.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             0.00000000        0.00000000        1.00000000        1.00000000 

# Preparation of terms works - Other SDI categories

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        1.00000000 
            sdi_7_to_10       missing_sdi          constant 
             0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        1.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             0.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "sdi")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi          constant 
             0.00000000        0.00000000        1.00000000 

---

    Code
      prep_terms(dat, "full")
    Output
                    age       age_squared         non_hdl_c             hdl_c 
             1.00000000        1.00000000        0.37900000       -0.02333333 
             sbp_lt_110       sbp_gte_110                dm           smoking 
             0.00000000        1.50000000        1.00000000        0.00000000 
              bmi_lt_30        bmi_gte_30        egfr_lt_60       egfr_gte_60 
             1.00000000        1.00000000        0.00000000        0.00000000 
                  bp_tx            statin bp_tx_sbp_gte_110  statin_non_hdl_c 
             1.00000000        0.00000000        1.50000000        0.00000000 
          age_non_hdl_c         age_hdl_c   age_sbp_gte_110            age_dm 
             0.37900000       -0.02333333        1.50000000        1.00000000 
            age_smoking    age_bmi_gte_30    age_egfr_lt_60        sdi_4_to_6 
             0.00000000        1.00000000        0.00000000        0.00000000 
            sdi_7_to_10       missing_sdi           ln_uacr      missing_uacr 
             0.00000000        0.00000000        3.68887945        0.00000000 
               hba1c_dm       hba1c_no_dm     missing_hba1c          constant 
             3.20000000        0.00000000        0.00000000        1.00000000 

# Base model 10-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = TRUE,
        smoking = 0, bmi = 35, egfr = 90, bp_tx = 1, statin = FALSE, time = "10yr")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.7%  16.3%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   10.2%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.6%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.4%   5.6% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.4%   5.2% 
      
      $model
      female   male 
      "base" "base" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# UACR model 10-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = 1,
        smoking = FALSE, bmi = 35, egfr = 90, bp_tx = TRUE, statin = 0, uacr = 40,
        time = "10yr")
    Message
      PREVENT estimates are from: Base model adding UACR.
      PREVENT estimates are from: Base model adding UACR.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 16%    17.2%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.9%   11%  
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.9%   11%  
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.8%   5.9% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.9%   5.6% 
      
      $model
      female   male 
      "uacr" "uacr" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# HbA1c model 10-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = 1,
        smoking = FALSE, bmi = 35, egfr = 90, bp_tx = TRUE, statin = 0, hba1c = 7.5,
        time = "10yr")
    Message
      PREVENT estimates are from: Base model adding HbA1c.
      PREVENT estimates are from: Base model adding HbA1c.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 13.6%  15.5%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.3%   9.4% 
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.1%   10.1%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.1%   5.1% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.6%   4.7% 
      
      $model
       female    male 
      "hba1c" "hba1c" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# Zip model 10-year risks give expected results & SDI lookup works

    Code
      get_sdi("03883")
    Output
      [1] 3

---

    Code
      sdi_10yr_partial(zip = "03883")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.7%  14.3%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8%     8.8% 
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 7%     8.9% 
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 3.8%   4.9% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.7%   4.3% 
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

---

    Code
      get_sdi("49544")
    Output
      [1] 5

---

    Code
      sdi_10yr_partial(zip = "49544")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 14.4%  15.4%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 9.2%   9.4% 
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8%     9.9% 
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.5%   5.3% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.2%   4.7% 
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

---

    Code
      get_sdi("49507")
    Output
      [1] 10

---

    Code
      sdi_10yr_partial(zip = "49507")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 15.7%  18.2%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 10%    11.4%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 8.9%   12.3%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 4.8%   6.2% 
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 5.8%   5.9% 
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# Full model 10-year risks give expected results

    Code
      check_equations_partial(age = 75, statin = TRUE, dm = 0, smoking = 1, hba1c = 7.5,
        uacr = 40, zip = "49507", time = "10yr")
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 36.1%  39.4%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 22.7%  26.3%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 29.5%  33.9%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 13.7%  14.1%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 12.8%  17.7%
      
      $model
      female   male 
      "full" "full" 
      
      $over_years
      female   male 
          10     10 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# Base model 30-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = TRUE,
        smoking = 0, bmi = 35, egfr = 90, bp_tx = 1, statin = FALSE, time = "30yr")
    Message
      PREVENT estimates are from: Base model.
      PREVENT estimates are from: Base model.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 53%    51.4%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 35.4%  34.9%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 39%    42.4%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 19.8%  21.6%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 22.1%  19.7%
      
      $model
      female   male 
      "base" "base" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# UACR model 30-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = 1,
        smoking = FALSE, bmi = 35, egfr = 90, bp_tx = TRUE, statin = 0, uacr = 40,
        time = "30yr")
    Message
      PREVENT estimates are from: Base model adding UACR.
      PREVENT estimates are from: Base model adding UACR.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 54.2%  51.4%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 36.3%  35.5%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 40.7%  42%  
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 20.6%  21.8%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 22.9%  20.2%
      
      $model
      female   male 
      "uacr" "uacr" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# HbA1c model 30-year risks give expected results

    Code
      check_equations(age = 50, total_c = 200, hdl_c = 45, sbp = 160, dm = 1,
        smoking = FALSE, bmi = 35, egfr = 90, bp_tx = TRUE, statin = 0, hba1c = 7.5,
        time = "30yr")
    Message
      PREVENT estimates are from: Base model adding HbA1c.
      PREVENT estimates are from: Base model adding HbA1c.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 50.1%  49.1%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 32.2%  31.7%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 38.9%  41.1%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 18.2%  19.2%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 18.8%  17.5%
      
      $model
       female    male 
      "hba1c" "hba1c" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# Zip model 30-year risks give expected results & SDI lookup works

    Code
      get_sdi("03883")
    Output
      [1] 3

---

    Code
      sdi_30yr_partial(zip = "03883")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 48.5%  48%  
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 32.2%  31.7%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 35.8%  38.4%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 17.9%  19.9%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 20.2%  17.1%
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

---

    Code
      get_sdi("49544")
    Output
      [1] 5

---

    Code
      sdi_30yr_partial(zip = "49544")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 51.4%  48.7%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 34.8%  32.2%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 38%    40%  
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 20.1%  20.3%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 21.5%  17.6%
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

---

    Code
      get_sdi("49507")
    Output
      [1] 10

---

    Code
      sdi_30yr_partial(zip = "49507")
    Message
      PREVENT estimates are from: Base model adding SDI.
      PREVENT estimates are from: Base model adding SDI.
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 53.5%  53%  
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 36.7%  36.1%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 40.4%  44.7%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 21.1%  22.5%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 23.2%  20.9%
      
      $model
      female   male 
       "sdi"  "sdi" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] NA
      
      $input_problems$male
      [1] NA
      
      

# Full model 30-year risks give expected results

    Code
      check_equations_partial(age = 75, statin = TRUE, dm = 0, smoking = 1, hba1c = 7.5,
        uacr = 40, zip = "49507", time = "30yr")
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 49.5%  44.9%
      
      $ascvd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 32.1%  30.1%
      
      $heart_failure
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 41.2%  37.9%
      
      $chd
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 20.2%  16.4%
      
      $stroke
      # A tibble: 1 x 2
        female male 
        <chr>  <chr>
      1 18.5%  20.6%
      
      $model
      female   male 
      "full" "full" 
      
      $over_years
      female   male 
          30     30 
      
      $input_problems
      $input_problems$female
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

# Optional predictors are handled correctly, one optional predictor is valid

    Code
      list(uacr_okay_hba1c_not_zip_null = uacr_okay_hba1c_not_zip_null[[
        "input_problems"]], uacr_okay_hba1c_null_zip_not = uacr_okay_hba1c_null_zip_not[[
        "input_problems"]], uacr_okay_others_not = uacr_okay_others_not[[
        "input_problems"]], uacr_model_by_itself = uacr_model_by_itself[[
        "input_problems"]])
    Output
      $uacr_okay_hba1c_not_zip_null
      $uacr_okay_hba1c_not_zip_null$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $uacr_okay_hba1c_not_zip_null$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $uacr_okay_hba1c_not_zip_null$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $uacr_okay_hba1c_not_zip_null$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      
      $uacr_okay_hba1c_null_zip_not
      $uacr_okay_hba1c_null_zip_not$female_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_hba1c_null_zip_not$male_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_hba1c_null_zip_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_hba1c_null_zip_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $uacr_okay_others_not
      $uacr_okay_others_not$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_others_not$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_others_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $uacr_okay_others_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $uacr_model_by_itself
      $uacr_model_by_itself$female_10yr
      [1] NA
      
      $uacr_model_by_itself$male_10yr
      [1] NA
      
      $uacr_model_by_itself$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $uacr_model_by_itself$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      list(hba1c_okay_uacr_not_zip_null = hba1c_okay_uacr_not_zip_null[[
        "input_problems"]], hba1c_okay_uacr_null_zip_not = hba1c_okay_uacr_null_zip_not[[
        "input_problems"]], hba1c_okay_others_not = hba1c_okay_others_not[[
        "input_problems"]], hba1c_model_by_itself = hba1c_model_by_itself[[
        "input_problems"]])
    Output
      $hba1c_okay_uacr_not_zip_null
      $hba1c_okay_uacr_not_zip_null$female_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $hba1c_okay_uacr_not_zip_null$male_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $hba1c_okay_uacr_not_zip_null$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $hba1c_okay_uacr_not_zip_null$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      $hba1c_okay_uacr_null_zip_not
      $hba1c_okay_uacr_null_zip_not$female_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_uacr_null_zip_not$male_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_uacr_null_zip_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_uacr_null_zip_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $hba1c_okay_others_not
      $hba1c_okay_others_not$female_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_others_not$male_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_others_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $hba1c_okay_others_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL); `zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $hba1c_model_by_itself
      $hba1c_model_by_itself$female_10yr
      [1] NA
      
      $hba1c_model_by_itself$male_10yr
      [1] NA
      
      $hba1c_model_by_itself$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $hba1c_model_by_itself$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      list(zip_okay_uacr_not_hba1c_null = zip_okay_uacr_not_hba1c_null[[
        "input_problems"]], zip_okay_uacr_null_hba1c_not = zip_okay_uacr_null_hba1c_not[[
        "input_problems"]], zip_okay_others_not = zip_okay_others_not[[
        "input_problems"]], zip_by_itself = zip_by_itself[["input_problems"]])
    Output
      $zip_okay_uacr_not_hba1c_null
      $zip_okay_uacr_not_hba1c_null$female_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_uacr_not_hba1c_null$male_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_uacr_not_hba1c_null$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_uacr_not_hba1c_null$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      $zip_okay_uacr_null_hba1c_not
      $zip_okay_uacr_null_hba1c_not$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $zip_okay_uacr_null_hba1c_not$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $zip_okay_uacr_null_hba1c_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $zip_okay_uacr_null_hba1c_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      
      $zip_okay_others_not
      $zip_okay_others_not$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_others_not$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_others_not$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $zip_okay_others_not$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable; `hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL); `uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      $zip_by_itself
      $zip_by_itself$female_10yr
      [1] NA
      
      $zip_by_itself$male_10yr
      [1] NA
      
      $zip_by_itself$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $zip_by_itself$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

# Optional predictors are handled correctly, two optional predictors are valid

    Code
      list(full_model_invalid_uacr = full_model_invalid_uacr[["input_problems"]],
      full_model_uacr_null = full_model_uacr_null[["input_problems"]])
    Output
      $full_model_invalid_uacr
      $full_model_invalid_uacr$female_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $full_model_invalid_uacr$male_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $full_model_invalid_uacr$female_30yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $full_model_invalid_uacr$male_30yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      $full_model_uacr_null
      $full_model_uacr_null$female_10yr
      [1] NA
      
      $full_model_uacr_null$male_10yr
      [1] NA
      
      $full_model_uacr_null$female_30yr
      [1] NA
      
      $full_model_uacr_null$male_30yr
      [1] NA
      
      

---

    Code
      list(full_model_invalid_hba1c = full_model_invalid_hba1c[["input_problems"]],
      full_model_hba1c_null = full_model_hba1c_null[["input_problems"]])
    Output
      $full_model_invalid_hba1c
      $full_model_invalid_hba1c$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $full_model_invalid_hba1c$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $full_model_invalid_hba1c$female_30yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $full_model_invalid_hba1c$male_30yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      
      $full_model_hba1c_null
      $full_model_hba1c_null$female_10yr
      [1] NA
      
      $full_model_hba1c_null$male_10yr
      [1] NA
      
      $full_model_hba1c_null$female_30yr
      [1] NA
      
      $full_model_hba1c_null$male_30yr
      [1] NA
      
      

---

    Code
      list(full_model_invalid_zip = full_model_invalid_zip[["input_problems"]],
      full_model_zip_null = full_model_zip_null[["input_problems"]])
    Output
      $full_model_invalid_zip
      $full_model_invalid_zip$female_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $full_model_invalid_zip$male_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $full_model_invalid_zip$female_30yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $full_model_invalid_zip$male_30yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $full_model_zip_null
      $full_model_zip_null$female_10yr
      [1] NA
      
      $full_model_zip_null$male_10yr
      [1] NA
      
      $full_model_zip_null$female_30yr
      [1] NA
      
      $full_model_zip_null$male_30yr
      [1] NA
      
      

# Invalid UACR is same as no UACR, only optional is UACR

    Code
      list(invalid_uacr = invalid_uacr[["input_problems"]], no_uacr = no_uacr[[
        "input_problems"]])
    Output
      $invalid_uacr
      $invalid_uacr$female_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $invalid_uacr$male_10yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $invalid_uacr$female_30yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      $invalid_uacr$male_30yr
      [1] "`uacr` entered as 4e+06, but must be between 0.1 and 25000 (so set to NULL)"
      
      
      $no_uacr
      $no_uacr$female_10yr
      [1] NA
      
      $no_uacr$male_10yr
      [1] NA
      
      $no_uacr$female_30yr
      [1] NA
      
      $no_uacr$male_30yr
      [1] NA
      
      

# Invalid HbA1c is same as no HbA1c, only optional is HbA1c

    Code
      list(invalid_hba1c = invalid_hba1c[["input_problems"]], no_hba1c = no_hba1c[[
        "input_problems"]])
    Output
      $invalid_hba1c
      $invalid_hba1c$female_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $invalid_hba1c$male_10yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $invalid_hba1c$female_30yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      $invalid_hba1c$male_30yr
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15 (so set to NULL)"
      
      
      $no_hba1c
      $no_hba1c$female_10yr
      [1] NA
      
      $no_hba1c$male_10yr
      [1] NA
      
      $no_hba1c$female_30yr
      [1] NA
      
      $no_hba1c$male_30yr
      [1] NA
      
      

# Invalid zip is same as no zip, only optional is zip

    Code
      list(invalid_zip = invalid_zip[["input_problems"]], no_zip = no_zip[[
        "input_problems"]])
    Output
      $invalid_zip
      $invalid_zip$female_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $invalid_zip$male_10yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $invalid_zip$female_30yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      $invalid_zip$male_30yr
      [1] "`zip` \"99999\" not found among valid zip codes (so set to NULL)"
      
      
      $no_zip
      $no_zip$female_10yr
      [1] NA
      
      $no_zip$male_10yr
      [1] NA
      
      $no_zip$female_30yr
      [1] NA
      
      $no_zip$male_30yr
      [1] NA
      
      

# Enforcing strict optional input validation works

    Code
      list(uacr = uacr_input_problems, hb1ac = hb1ac_input_problems, zip = zip_input_problems,
        uacr_hba1c = uacr_hba1c_input_problems, uacr_zip = uacr_zip_input_problems,
        hba1c_zip = hba1c_zip_input_problems, uacr_hba1c_zip = uacr_hba1c_zip_input_problems,
        uacr_complex = uacr_input_problems_complex, hb1ac_complex = hb1ac_input_problems_complex,
        zip_complex = zip_input_problems_complex, uacr_hba1c_complex = uacr_hba1c_input_problems_complex,
        uacr_zip_complex = uacr_zip_input_problems_complex, hba1c_zip_complex = hba1c_zip_input_problems_complex,
        uacr_hba1c_zip_complex = uacr_hba1c_zip_input_problems_complex)
    Output
      $uacr
      [1] "`uacr` entered as 9e+06, but must be between 0.1 and 25000"
      
      $hb1ac
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15"
      
      $zip
      [1] "`zip` \"99999\" not found among valid zip codes"
      
      $uacr_hba1c
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15; `uacr` entered as 9e+06, but must be between 0.1 and 25000"
      
      $uacr_zip
      [1] "`uacr` entered as 9e+06, but must be between 0.1 and 25000; `zip` \"99999\" not found among valid zip codes"
      
      $hba1c_zip
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15; `zip` \"99999\" not found among valid zip codes"
      
      $uacr_hba1c_zip
      [1] "`hba1c` entered as 75, but must be between 4.5 and 15; `uacr` entered as 9e+06, but must be between 0.1 and 25000; `zip` \"99999\" not found among valid zip codes"
      
      $uacr_complex
      [1] "`uacr` entered as list(a = list(b = structure(list(a = \"apple\", b = TRUE), class = \"data.frame\", row.names = c(NA, -1L))), b = 5), but must be between 0.1 and 25000"
      
      $hb1ac_complex
      [1] "`hba1c` entered as structure(c(12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12), dim = 3:4), but must be between 4.5 and 15"
      
      $zip_complex
      [1] "`zip` c(\"01011\", \"22222\", \"99999\") not found among valid zip codes"
      
      $uacr_hba1c_complex
      [1] "`hba1c` entered as structure(list(a = 75, b = \"potato\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15; `uacr` entered as list(a = list(b = structure(list(a = \"apple\", b = TRUE), class = \"data.frame\", row.names = c(NA, -1L))), b = 5), but must be between 0.1 and 25000"
      
      $uacr_zip_complex
      [1] "`uacr` entered as list(a = list(b = structure(list(a = \"apple\", b = TRUE), class = \"data.frame\", row.names = c(NA, -1L))), b = 5), but must be between 0.1 and 25000; `zip` c(\"01011\", \"22222\", \"99999\") not found among valid zip codes"
      
      $hba1c_zip_complex
      [1] "`hba1c` entered as structure(list(a = 75, b = \"potato\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15; `zip` c(\"01011\", \"22222\", \"99999\") not found among valid zip codes"
      
      $uacr_hba1c_zip_complex
      [1] "`hba1c` entered as structure(list(a = 75, b = \"potato\"), class = \"data.frame\", row.names = c(NA, -1L)), but must be between 4.5 and 15; `uacr` entered as list(a = list(b = structure(list(a = \"apple\", b = TRUE), class = \"data.frame\", row.names = c(NA, -1L))), b = 5), but must be between 0.1 and 25000; `zip` c(\"01011\", \"22222\", \"99999\") not found among valid zip codes"
      

# Additional checks of results, for good measure

    Code
      check_equations_partial(age = 67, statin = FALSE, hba1c = 9)
    Message
      PREVENT estimates are from: Base model adding HbA1c.
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding HbA1c.
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 26.6%       30.9%     53.5%       50.5%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 16.3%       19.4%     34.3%       33.1%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 20.1%       24.6%     46.4%       45.1%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 9.7%        11.2%     22%         20.3%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 8.2%        10.4%     18.4%       18.8%    
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
          "hba1c"     "hba1c"     "hba1c"     "hba1c" 
      
      $over_years
      female_10yr   male_10yr female_30yr   male_30yr 
               10          10          30          30 
      
      $input_problems
      $input_problems$female_10yr
      [1] NA
      
      $input_problems$male_10yr
      [1] NA
      
      $input_problems$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      check_equations_partial(age = 67, statin = TRUE, uacr = 1000)
    Message
      PREVENT estimates are from: Base model adding UACR.
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding UACR.
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 35.3%       39.8%     61.3%       58.2%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 22.2%       26%       41.9%       40.7%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 28.9%       34.9%     53.4%       52.2%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 12.7%       15.5%     26.5%       26.2%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 12.4%       15.1%     25.2%       25%      
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
           "uacr"      "uacr"      "uacr"      "uacr" 
      
      $over_years
      female_10yr   male_10yr female_30yr   male_30yr 
               10          10          30          30 
      
      $input_problems
      $input_problems$female_10yr
      [1] NA
      
      $input_problems$male_10yr
      [1] NA
      
      $input_problems$female_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      check_equations_partial(age = 71, statin = TRUE, hba1c = 9, uacr = 1000)
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 41.4%       47.8%     59.3%       55.2%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 26.1%       30.4%     39.4%       35.6%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 38.4%       44.7%     55.5%       51.2%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 17.1%       19.1%     27.2%       22.9%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 13.6%       17.3%     21.8%       20.8%    
      
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
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      check_equations_partial(age = 71, statin = TRUE, hba1c = 9, uacr = 1000, zip = "49507")
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 42.5%       51.1%     59.9%       57.7%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 27.4%       33.2%     40.7%       37.9%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 39.5%       48.9%     56.3%       54.6%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 18%         21.3%     28.3%       24.9%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 14.4%       19.2%     22.7%       22.5%    
      
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
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      check_equations_partial(age = 71, sbp = 145, bp_tx = 0, hba1c = 6.7, uacr = 10,
        zip = NA)
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Message
      PREVENT estimates are from: Base model adding HbA1c, SDI, and UACR (also referred to as the full model).
    Condition
      Warning:
      Estimating 30-year risk in people > 59 years of age is questionable
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 16.3%       20.3%     35.7%       35.7%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 10%         13.4%     22%         23.7%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 11.1%       14.1%     27.5%       27.8%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 5.8%        8.2%      13.5%       15.1%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 5.2%        6.2%      11.8%       11.6%    
      
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
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      $input_problems$male_30yr
      [1] "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
      
      

---

    Code
      res_v1
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 6%          6.1%      32.5%       30.5%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 3.9%        4%        19.9%       19.7%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 2.8%        3.1%      20.2%       20.7%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 1.8%        2.2%      10.2%       11.4%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 2.3%        1.8%      11.7%       9.1%     
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
           "uacr"      "uacr"      "uacr"      "uacr" 
      
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
      res_v2
    Output
      $total_cvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 6%          6.1%      32.5%       30.5%    
      
      $ascvd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 3.9%        4%        19.9%       19.7%    
      
      $heart_failure
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 2.8%        3.1%      20.2%       20.7%    
      
      $chd
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 1.8%        2.2%      10.2%       11.4%    
      
      $stroke
      # A tibble: 1 x 4
        female_10yr male_10yr female_30yr male_30yr
        <chr>       <chr>     <chr>       <chr>    
      1 2.3%        1.8%      11.7%       9.1%     
      
      $model
      female_10yr   male_10yr female_30yr   male_30yr 
           "uacr"      "uacr"      "uacr"      "uacr" 
      
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
      
      

