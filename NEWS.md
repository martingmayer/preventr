# preventr 0.11.0

* User-visible changes:

  * All changes specified for `estimate_risk()` also apply to its synonym, 
  `est_risk()`. There are no breaking changes, only enhancements.

  * Users can now compare results with either the original Pooled Cohort 
  Equations (PCEs) released by the ACC/AHA in 2013 or the revised PCEs released
  by Yadlowsky and colleagues in 2018. This is implemented via expanding the
  set of valid input options for the existing argument `model` within the 
  `estimate_risk()` function. The Shiny app has also been updated to permit
  estimation via the PCEs.
  
  * Function arguments for `estimate_risk()` are now semantically categorized as
  one of the following: required predictor variable, optional predictor 
  variable, optional behavior variable. This is to help with clarity of 
  documentation and additional features in the package. Nothing has actually 
  changed about which arguments are required or the behavior of those arguments.

  * The function `estimate_risk()` gains the optional behavior argument 
  `collapse`, which allows users to collapse the list of tibbles into a single 
  tibble when relevant. To  maintain backwards compatibility, this is an opt-in 
  feature, so the default of `collapse` is `FALSE`.
  
  * The function `estimate_risk()` gains the optional behavior arguments 
  `use_dat` and `add_to_dat`, which allow users to pass a data frame (as a 
  data.frame, tibble, or data.table) to the function to carry out risk 
  estimation against a large set of data in one function call, with the option 
  (via `add_to_dat = TRUE`) to append the results to the data frame passed to 
  the function. This is accompanied by `vignette("using-data-frame")`, which
  gives many examples, and also shows how to use a data frame for input even if
  you do not want to use `use_dat` and `add_to_dat`.
  
  * The function `estimate_risk()` gains the optional behavior argument
  `progress`, which gives users the option to display a progress bar in the
  console when `use_dat` is a data frame. This argument is independent of
  `quiet`.
  
  * All the above changes also have corresponding documentation within the
  relevant function and corresponding sections of the documentation.

* Internal changes:

  * Minor edits to `is_valid_*` functions (adding `extra_text` arg)
  
  * Addition of new `is_valid_*` functions in support of estimating with other
  models
  
  * Expansion of verification for `is_okay_type()` stemming from expansion of
  functionality with `use_dat` and `add_to_dat`
  
  * Minor refactoring of some of the messaging functions within 
  `estimate_risk()`, including creation of new messaging for other models and
  scenarios specific to the `use_dat` and `add_to_dat` arguments
  
  * Considerable addition of other helper functions and capabilities in support 
  of estimating with other models and the `use_dat` and `add_to_dat` arguments
  
  * Moving `internal_call_* <- TRUE` to inside relevant sections and changing
  name to `*_requested`
  
  * Refactoring of method to return tibble of NAs when there are input problems
  
  * Many more tests for added functionality
  
# preventr 0.10.0

* User-visible changes:

  * Shiny app available online at [https://martingmayer.shinyapps.io/prevent-equations/](https://martingmayer.shinyapps.io/prevent-equations/) or [https://tiny.cc/prevent-equations](https://martingmayer.shinyapps.io/prevent-equations), 
  and users can also access this via `app()`

  * Arguments `egfr` and `bmi` within the `estimate_risk()` function (and its 
  synonym `est_risk()`) gain the ability to accept a call to a corresponding, 
  non-exported function rather than passing the corresponding value directly; 
  entering the value directly remains an option (and there is no intent for 
  that to change)
  
    * For `egfr`, the supported call is `calc_egfr()` (or a synonym)
    
    * For `bmi`, the supported call is `calc_bmi()` (or its synonym)
    
  * `estimate_risk()` and `est_risk()` now advise 30-year risk prediction for
  people > 59 years is questionable via two warnings:
  
    * In the console (that can be suppressed by setting `quiet = TRUE`)
    
    * In the column `input_problems` of the return tibble (`quiet` has no
    impact here)
  
  * All the above changes also have corresponding documentation within the
  relevant function

* Internal changes:

  * Moved `message_maybe()`, `warn_maybe()`, and `valid` to helpers
  
  * Added tests for new functionality

# preventr 0.9.0

* Initial CRAN submission.
