# preventr 0.10.0

* User-visible changes:

  * Shiny app available online at [https://martingmayer.shinyapps.io/prevent-equations/](https://martingmayer.shinyapps.io/prevent-equations/) or [https://tiny.cc/prevent-equations](https://tiny.cc/prevent-equations), 
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
