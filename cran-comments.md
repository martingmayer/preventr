## R CMD check results

0 errors | 0 warnings | 0 notes

This is a patch update to the preventr package (0.12.1 --> 0.12.2). 

This update corrects some label/description typos in the `sysdata.rda` file 
and to increase clarity of a few other coefficient descriptions. The package's 
functionality and calculations remain identical to that published in 0.12.1, so 
that part of this update is more housekeeping than anything else, albeit an important 
one to avoid any possible confusion if anyone ever looks inside the `sysdata.rda` 
file or uses it outside the package somehow. Further details, if interested, are 
in NEWS.md.

This update also introduces a new ability for the `zip` argument in the 
`estimate_risk()` function (and its synonym `est_risk()`) to accept SDI decile 
values directly. I've also updated the function documentation and added tests 
for this. This is a feature addition, not a breaking change or anything that 
threatens backwards compatibility, because the `zip` arugment remains fully 
capable of accepting zip codes as well. There are other internal changes related
to this added functionality, with details in NEWS.md if interested.

I have run multiple checks in addition to checking locally, with rhub v2, and
`devtools::check_win_*` functions. Checks always pass with no errors or warnings.
The checks routinely pass with no notes as well, though on occassion, some tests
from `devtools::check_win_*` return a note warning about possibly invalid URLs that,
during automated checking, returned a 403 error. All these URLs are valid. Given this,
I have retained a "0 notes" summary above.

Thank you again for your time and review. Once I receive confirmation of 
acceptance from CRAN, I will promote this version from dev to main in my GitHub 
repository with this version number.

## revdepcheck results

I checked 1 reverse dependency, comparing R CMD check results across CRAN and 
dev versions of this package.

 * There were 0 new problems
 * I checked all packages with a reverse dependency


