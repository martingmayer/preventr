## R CMD check results

0 errors | 0 warnings | 0 notes

This is an update to the preventr package (0.11.0 --> 0.12.0). The updates consist of
added functionality. There are no breaking changes or other threats to backwards
compatibility.

This version introduces the function `plot_risk()` with corresponding documentation,
a vignette, and suite of tests. This version also introduces the option to pass a data
frame as the first argument of `estimate_risk()` / `est_risk()`, such that a call of
`est_risk(df)` becomes `est_risk(use_dat = df)` in the background.

In addition to these user-visible changes, I have also made some internal changes,
as reflected in NEWS.md.

I have run multiple checks in addition to checking locally, with rhub v2, and
`devtools::check_win_*` functions (`devtools::check_mac_*` returned a 502 / bad
gateway error before submitting the package for testing, but checks for Mac on 
rhub v2 succeeded). Checks pass with no errors, warnings, or notes.

Thank you again for your time and review. Once I receive confirmation of 
acceptance from CRAN, I will promote this version from dev to main in my GitHub 
repository with this version number.

## revdepcheck results

I checked 1 reverse dependency, comparing R CMD check results across CRAN and dev versions of this package.

 * There were 0 new problems
 * I checked all packages with a reverse dependency


