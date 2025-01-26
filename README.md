
<!-- README.md is generated from README.Rmd. Please edit that file -->

# preventr <img src="man/figures/logo.png" align="right" height="120" alt="" />

<!-- badges: start -->
<!-- badges: end -->

## Why `preventr`?

The main goal of `preventr` is to implement the [Predicting Risk of
cardiovascular disease EVENTs (PREVENT)
equations](https://pubmed.ncbi.nlm.nih.gov/37947085), released in 2023
by the American Heart Association (AHA). It also permits comparison of
the PREVENT equations with their *de facto* predecessor, the Pooled
Cohort Equations (PCEs). The PCEs were originally released in 2013 as
part of the American College of Cardiology (ACC)/AHA Guideline on the
[Assessment of Cardiovascular
Risk](https://pubmed.ncbi.nlm.nih.gov/24222018), and they were revised
by [Yadlowsky and colleagues in
2018](https://pubmed.ncbi.nlm.nih.gov/29868850/), though these revisions
were never endorsed by the ACC/AHA.

The PREVENT equations are a large collection of predictive/prognostic
models for predicting the risk of cardiovascular disease events over the
next 10 and 30 years. Specifically, estimation includes both 10- and
30-year risk of 5 events:

- Total cardiovascular disease (CVD), which includes atherosclerotic CVD
  (ASCVD) and heart failure as defined below
- ASCVD, which includes coronary heart disease (CHD) and stroke as
  defined below
- Heart failure (often abbreviated HF, but not herein)
- CHD, which includes nonfatal myocardial infarction (MI) and fatal CHD
- Stroke

The predicted risk of each of these 5 outcomes is defined by separate
beta coefficients and intercepts. Additionally, the beta coefficients
and intercepts are sex-specific, yielding 10 sets of beta coefficients
and intercepts for the 5 outcomes predicted by the PREVENT equations.

But wait, there’s more. In addition, there are 5 model “types”:

- the base model
- the base model adding HbA1c
- the base model adding urine albumin-to-creatinine ratio (UACR)
- the base model adding social deprivation index (SDI)
- the base model adding HbA1c, UACR, and SDI (also called the “full
  model”)

We are now up to 50 sets of beta coefficients and intercepts.

Finally, there are separate models for 10- and 30-year risks, bringing
the grand total to 100 sets of beta coefficients and intercepts for the
entirety of the PREVENT equations.

`preventr` takes care of all of that for you. This includes selecting
among the 5 model “types”, but there is an option to specify this
yourself if you want. The example below gives a quick overview, but the
function documentation has much more detail, including many more
examples.

`preventr` also permits estimation of 10-year ASCVD risk from the PCEs,
but of note, the PREVENT equations have better calibration than the
PCEs, as demonstrated in the [original article describing the derivation
and validation of the PREVENT
equations](https://pubmed.ncbi.nlm.nih.gov/37947085).

## Installation

Install the released version of `preventr` from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("preventr")
```

You can install the development version of `preventr` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("martingmayer/preventr")
```

## Using `preventr`

Despite the work it does, I designed `preventr` with the goal of having
a simple, intuitive API. The “workhorses” are “behind the scenes”,
culminating in one function (and synonym) being exposed to the user for
estimation of risk:

- `estimate_risk()` (or `est_risk()`)

``` r
# Very basic example; see function documentation for much more detail and
# many more examples
# 
# If the package is loaded (e.g., `library(preventr)`) or the function is made 
# available  via some other means (e.g., importing as part of development 
# of another package), use of `preventr::` before the function name is not
# strictly necessary; however, this approach to calling functions can often be
# helpful for clarity of code, for avoiding potential namespace conflicts, etc. 
# However, a full discussion of pros and cons and when one approach might be
# favored over another is beyond the scope of this package or this comment.
preventr::estimate_risk(
  age = 50,
  sex = "female",
  sbp = 160,
  bp_tx = TRUE,
  total_c = 200,
  hdl_c = 45,
  statin = FALSE,
  dm = TRUE,
  smoking = FALSE,
  egfr = 90,
  bmi = 35
)
#> PREVENT estimates are from: Base model.
#> $risk_est_10yr
#> # A tibble: 1 × 8
#>   total_cvd ascvd heart_failure   chd stroke model over_years input_problems
#>       <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int> <chr>         
#> 1     0.147 0.092         0.081 0.044  0.054 base          10 <NA>          
#> 
#> $risk_est_30yr
#> # A tibble: 1 × 8
#>   total_cvd ascvd heart_failure   chd stroke model over_years input_problems
#>       <dbl> <dbl>         <dbl> <dbl>  <dbl> <chr>      <int> <chr>         
#> 1      0.53 0.354          0.39 0.198  0.221 base          30 <NA>
```

## There’s an app for that

In addition to the R package, I created a Shiny app that is driven by
the `preventr` package and also includes things like risk visualization
and several options for customization of the output. The app is
available at:

<https://martingmayer.shinyapps.io/prevent-equations>

Easier-to-remember URLs:

- [https://tiny.cc/prevent-equations](https://martingmayer.shinyapps.io/prevent-equations)
- [https://tiny.cc/preventequations](https://martingmayer.shinyapps.io/prevent-equations)

Calling `preventr::app()` will also open the user’s default browser and
navigate to the Shiny app.

## Why not 1.0.0?

First and most importantly: I have tested the package’s functionality
extensively. That is not the reason for the \< 1.0.0 release.

Rather, I developed the API with an eye toward maximizing simplicity and
intuitiveness. Thus, while I do not anticipate any major/breaking
changes to the API, I remain open to the idea there may be improvements
to the API that may surface, either from my own development ideas or
after more people use this package. This is the only reason `preventr`
is \< 1.0.0. In fact, this happened with previous updates when I had
additional development ideas to improve the utility of the package (all
while maintaining backward compatibility), including:

- adding the ability to call `calc_egfr()` and `calc_bmi()` (or
  synonyms) for the corresponding arguments in `estimate_risk()` (or its
  synonym `est_risk()`).

- adding several more capabilities to `estimate_risk()` and
  `est_risk()`, such as the ability to estimate with the PCEs, the
  ability to collapse the return where applicable, and the ability to
  pass a data frame with the option to have the results added back to
  that source data frame.

Users should rest assured if any changes come to the API, I will avoid
breaking changes unless they are necessary or there is a compelling
argument for making such changes; likewise, I will aim to communicate
any such changes clearly and in advance if possible. Again, I consider
all of this very unlikely, but in the off chance something like that
does arise, I also want others to rest assured I will make efforts to
ensure surprises and/or headaches are minimized or avoided if possible,
essentially following the best practices outlined at the excellent
reference [R Packages](https://r-pkgs.org/lifecycle.html).

## How to cite

If you use `preventr` in your work, please cite the package as follows:

``` r
citation("preventr")
```

## Acknowledgments

This package would, of course, not be possible without the efforts from
the authors of the PREVENT equations. Additionally, the Social
Deprivation Index (SDI) is a key element informing the PREVENT
equations. Citations for both appear below, as does acknowledgment of
the other packages and software I used in creating `preventr`.

**The PREVENT equations**

Khan SS, Matsushita K, Sang Y, Ballew SH, Grams ME, Surapaneni A, Blaha
MJ, Carson AP, Chang AR, Ciemins E, Go AS, Gutierrez OM, Hwang SJ,
Jassal SK, Kovesdy CP, Lloyd-Jones DM, Shlipak MG, Palaniappan LP,
Sperling L, Virani SS, Tuttle K, Neeland IJ, Chow SL, Rangaswami J,
Pencina MJ, Ndumele CE, Coresh J; Chronic Kidney Disease Prognosis
Consortium and the American Heart Association
Cardiovascular-Kidney-Metabolic Science Advisory Group. Development and
Validation of the American Heart Association’s PREVENT Equations.
[Circulation. 2024 Feb 6;149(6):430-449. Epub 2023 Nov
10.](https://pubmed.ncbi.nlm.nih.gov/37947085)

**Social Deprivation Index (SDI)**

Social deprivation index (SDI). Robert Graham Center - Policy Studies in
Family Medicine & Primary Care. (2018, November 5). Retrieved December
13, 2023, from
<https://www.graham-center.org/maps-data-tools/social-deprivation-index.html>.

**Other literature, packages, and software**

Estimation via the original and revised PCEs would not be possible
without the efforts from the respective groups behind this work. Thank
you to the authors of this work:

- Goff DC Jr, Lloyd-Jones DM, Bennett G, Coady S, D’Agostino RB, Gibbons
  R, Greenland P, Lackland DT, Levy D, O’Donnell CJ, Robinson JG,
  Schwartz JS, Shero ST, Smith SC Jr, Sorlie P, Stone NJ, Wilson PW,
  Jordan HS, Nevo L, Wnek J, Anderson JL, Halperin JL, Albert NM,
  Bozkurt B, Brindis RG, Curtis LH, DeMets D, Hochman JS, Kovacs RJ,
  Ohman EM, Pressler SJ, Sellke FW, Shen WK, Smith SC Jr, Tomaselli GF;
  American College of Cardiology/American Heart Association Task Force
  on Practice Guidelines. 2013 ACC/AHA guideline on the assessment of
  cardiovascular risk: a report of the American College of
  Cardiology/American Heart Association Task Force on Practice
  Guidelines. [Circulation. 2014 Jun 24;129(25 Suppl 2):S49-73. doi:
  10.1161/01.cir.0000437741.48606.98. Epub 2013 Nov
  12.](https://pubmed.ncbi.nlm.nih.gov/24222018). Also co-published in
  [J Am Coll Cardiol. 2014 Jul 1;63(25 Pt B):2935-2959. doi:
  10.1016/j.jacc.2013.11.005. Epub 2013 Nov
  12.](https://pubmed.ncbi.nlm.nih.gov/24239921).

- Yadlowsky S, Hayward RA, Sussman JB, McClelland RL, Min YI, Basu S.
  Clinical Implications of Revised Pooled Cohort Equations for
  Estimating Atherosclerotic Cardiovascular Disease Risk. [Ann Intern
  Med. 2018 Jul 3;169(1):20-29. doi: 10.7326/M17-3011. Epub 2018 Jun
  5.](https://pubmed.ncbi.nlm.nih.gov/29868850).

`preventr` also uses the
[`dplyr`](https://CRAN.R-project.org/package=dplyr) and
[`zipcodeR`](https://CRAN.R-project.org/package=zipcodeR) packages, the
latter of which is used entirely “behind the scenes” as a data set to
help validate zip codes (and thus `zipcodeR` is not imported as part of
using `preventr`). Thank you to the authors and maintainers of these
packages.

The authors and maintainers of packages dedicated to developing packages
also deserve recognition. These include but are not necessarily limited
to: [`devtools`](https://CRAN.R-project.org/package=devtools),
[`roxygen2`](https://CRAN.R-project.org/package=roxygen2),
[`usethis`](https://CRAN.R-project.org/package=usethis),
[`testthat`](https://CRAN.R-project.org/package=testthat), and
[`pkgdown`](https://CRAN.R-project.org/package=pkgdown). The
[`rmarkdown`](https://CRAN.R-project.org/package=rmarkdown) package,
though not dedicated to package development, also deserves explicit
recognition, as it directly and significantly contributes to the
feasibility and functionality of packages like `pkgdown` and `roxygen2`.
Thank you to the authors and maintainers of these packages.

A huge thank you is also in order for the [R Core Team and others who
have contributed to maintaining
R](https://www.r-project.org/contributors.html), as well as the [CRAN
Team](https://CRAN.R-project.org/CRAN_team.htm). Your tireless work is,
of course, foundational to all the above packages.

Lastly, I also used DALL·E 3 within Microsoft Copilot to help generate
the logo. Thank you to the authors and maintainers of DALL·E 3 and
Microsoft Copilot.
