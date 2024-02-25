## R CMD check results

0 errors | 0 warnings | 0 notes

This is a revision to a new release. I received the helpful comments from reviewer Benjamin Altmann on 2024-02-20. I appreciate Altmann's time and assistance in progressing this package to CRAN acceptance. Atlmann's comments amounted to 4 minor items with direction to: 

* remove "in R" from the title in the DESCRIPTION file (done), 
* add the year of the publication to the description field of the DESCRIPTION file (done), 
* check and correct the description field of the DESCRIPTION file for extra spaces (done), 
and 
* remove dontrun from the examples (done, including adjusting some of the examples to instead be part of the description of the return of the function in question, as those examples might better belong there anyway versus being examples per se).

This revision also includes the more informative error messages and behavior I referenced when I requested my package be returned to me after my initial resubmission with the above corrections. As mentioned previously, I also decided against including the plotting function in my package given some related ideas I have for that. If I do eventually decide to release it, I will be mindful of the time and energy of you all in reviewing new submissions. 

For good measure, I have re-run multiple checks in addition to checking locally. Some of these checks suggest there may be misspelled words in the package. These are false positives. 

Thank you again for your time and review. As mentioned with my original submission, once I receive confirmation of acceptance from CRAN, I will push to my GitHub repository with this version number.
