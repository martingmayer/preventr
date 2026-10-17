## R CMD check results

0 errors | 0 warnings | 0 notes

This is a patch update to the preventr package (0.12.0 --> 0.12.1). This is to 
incorporate the correction published by the authors of the PREVENT equations on 
2026-10-14. There are no bugs or corrections to the package itself. Details, if 
interested, are in NEWS.md. I also updated test cases accordingly. 

Given this update is in response to the PREVENT equation authors detecting an error in their equations and (laudably) publishing that, I would appreciate expedited 
review and release of my package if at all possible.

On a more trivial note, I also updated my documentation slightly in line with 
new notes that came back during my checks (mainly stemming from citing PubMed 
links instead of DOIs). 

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


