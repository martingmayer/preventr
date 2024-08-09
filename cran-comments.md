## R CMD check results

0 errors | 0 warnings | 0 notes

This is a minor update to the preventr package (0.9.0 --> 0.10.0) that adds 
some functionality to the package as specified in the NEWS.md file. There are 
no breaking changes. 

Briefly, I have created a Shiny app to accompany the package, and this can now 
be summoned via `app()`. I have also added the ability to call the
convenience functions `calc_egfr()` and `calc_bmi()` within the 
`estimate_risk()` function (and its synonym `est_risk()`) rather than passing 
the corresponding values directly. The package now also warns estimating 30-year risk for people > 59 years is questionable. I have added corresponding 
documentation for everything and added tests as well.

I have run multiple checks in addition to checking locally. Some of these checks suggest there may be misspelled words in the package. These are false positives.
Likewise, some checks suggest there may be an invalid URL due to a 403 error
when attempting to automatically validate some URLs (due to server rejection
of that request). Again, these are false positives. I have validated all URLs
myself.

Thank you again for your time and review. Once I receive confirmation of 
acceptance from CRAN, I will promote this version from dev to main in my GitHub repository with this version number.
