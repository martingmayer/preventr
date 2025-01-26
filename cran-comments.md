## R CMD check results

0 errors | 0 warnings | 0 notes

This is an update to the preventr package (0.10.0 --> 0.11.0). The updates consist of
added functionality, and there are no breaking changes. All changes noted below
apply to the package's main function, `estimate_risk()`, and its synonym,
`est_risk()`. Where applicable, I have also made changes to the corresponding
Shiny app.

Briefly, this update adds support for comparing the PREVENT risk estimates with 
the estimates from the original Pooled Cohort Equations released by the
American College of Cardiology and American Heart Association in 2013 or the 
Revised Pooled Cohort Equations released by Yadlowsky and colleagues in 2018. I 
have also added the argument `collapse` to the function to give the user the 
option of collapsing results comprised of a list of data frames into a single 
data frame. I have also added the arguments `use_dat` and `add_to_dat`. 
Argument `use_dat` introduces the option to pass a data frame to the function
instead of specifying each predictor variable (whether required or optional),
and passing a data frame also allows the user to activate row-by-row alteration
of the function's behavior. Argument `add_to_dat` gives the option to join the
return data frame with the data frame passed to `use_dat`. The function also 
gains the argument `progress` to give users the option of displaying a progress
bar when `use_dat` is a data frame. All these changes are, of course, coupled 
with considerable additional documentation, examples, and tests.

In addition to these user-visible changes, I have also made internal changes,
as reflected in NEWS.md.

I have run multiple checks in addition to checking locally. Checks either pass
with no errors, warnings, or notes, or they pass with false-positive notes
(for example, signaling possible invalid URLs or misspellings and noting the
jump in version), hence my summary above of 0 errors, 0 warnings, and 0 notes.

Thank you again for your time and review. Once I receive confirmation of 
acceptance from CRAN, I will promote this version from dev to main in my GitHub 
repository with this version number.
