
<!-- README.md is generated from README.Rmd. Please edit that file -->

# preventr <img src="man/figures/logo.png" align="right" height="120" alt="" />

<!-- badges: start -->
<!-- badges: end -->

## Why {preventr}?

The goal of {preventr} is to implement the American Heart Association
(AHA) Predicting Risk of cardiovascular disease EVENTs (PREVENT)
equations. The PREVENT equations are a large collection of
predictive/prognostic models for predicting the risk of cardiovascular
disease events over the next 10 and 30 years. Specifically, estimation
includes both 10- and 30-year risk of 5 events:

- Total cardiovascular disease (CVD)
  - This outcome includes atherosclerotic CVD (ASCVD) and heart failure
    as defined below
- ASCVD
  - This outcome includes coronary heart disease (CHD) and stroke as
    defined below
- Heart failure (often abbreviated HF, but not herein)
- CHD
  - This outcome includes nonfatal myocardial infarction (MI) and fatal
    CHD
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

{preventr} takes care of all of that for you. This includes selecting
among the 5 model “types”, but there is an option to specify this
yourself if you want. The example below gives a quick overview, but the
function documentation has much more detail, including many more
examples.

The original article describing the derivation and validation of the
PREVENT equations is available
[here](https://pubmed.ncbi.nlm.nih.gov/37947085/).

Notably, the PREVENT equations have better calibration than the Pooled
Cohort Equations, which were originally released in 2013 as part of the
[American College of
Cardiology](https://pubmed.ncbi.nlm.nih.gov/24239921/)/[American Heart
Association](https://pubmed.ncbi.nlm.nih.gov/24222018/) (ACC/AHA)
Guideline on the Assessment of Cardiovascular Risk.

## Installation

Install the released version of {preventr} from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("preventr")
```

You can install the development version of {preventr} from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("martingmayer/preventr")
```

## Using {preventr}

Despite the work it does, I designed {preventr} with the goal of having
a simple, intuitive API. The “workhorses” are “behind the scenes”,
culminating in one function (and synonym) being exposed to the user:

- `estimate_risk()` (or `est_risk()`)

``` r

# Very basic example; see function documentation for many more examples
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
#> Estimates are from: Base model.
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
the {preventr} package and also includes things like risk visualization
and several options for customization of the output. The app is
available at:

<https://martingmayer.shinyapps.io/prevent-equations>

Easier-to-remember URLs:

- <https://tiny.cc/prevent-equations>
- <https://tiny.cc/preventequations>

Calling `preventr::app()` will also open the user’s default browser and
navigate to the Shiny app.

## Why not 1.0.0?

First and most importantly: I have tested the package’s functionality
extensively. That is not the reason for the \< 1.0.0 release.

Rather, I developed the API with an eye toward maximizing simplicity and
intuitiveness. Thus, while I do not anticipate any major/breaking
changes to the API, I remain open to the idea there may be improvements
to the API that may surface after more people use this package. This is
the only reason I did not release as 1.0.0. In fact, this happened with
the update from 0.9.0 to 0.10.0, where I added the ability to call
`calc_egfr()` and `calc_bmi()` (or synonyms) for the corresponding
arguments in `estimate_risk()` (or its synonym `est_risk()`); this
non-breaking change is really a feature addition that increases
usability in certain use cases while still supporting the same
functionality for those arguments as the 0.9.0 release.

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

If you use {preventr} in your work, please cite the package as follows:

``` r
citation("preventr")
```

## Acknowledgments

This package would, of course, not be possible without the efforts from
the authors of the PREVENT equations. Additionally, the Social
Deprivation Index (SDI) is a key element informing the PREVENT
equations. Citations for both appear below, as does acknowledgment of
the other packages and software I used in creating {preventr}.

**The PREVENT equations**

Khan SS, Matsushita K, Sang Y, Ballew SH, Grams ME, Surapaneni A, Blaha
MJ, Carson AP, Chang AR, Ciemins E, Go AS, Gutierrez OM, Hwang SJ,
Jassal SK, Kovesdy CP, Lloyd-Jones DM, Shlipak MG, Palaniappan LP,
Sperling L, Virani SS, Tuttle K, Neeland IJ, Chow SL, Rangaswami J,
Pencina MJ, Ndumele CE, Coresh J; Chronic Kidney Disease Prognosis
Consortium and the American Heart Association
Cardiovascular-Kidney-Metabolic Science Advisory Group. Development and
Validation of the American Heart Association’s PREVENT Equations.
Circulation. 2024 Feb 6;149(6):430-449. Epub 2023 Nov 10. PMID:
[37947085](https://pubmed.ncbi.nlm.nih.gov/37947085/).

**Social Deprivation Index (SDI)**

Social deprivation index (SDI). Robert Graham Center - Policy Studies in
Family Medicine & Primary Care. (2018, November 5). Retrieved December
13, 2023, from
<https://www.graham-center.org/maps-data-tools/social-deprivation-index.html>.

**Other packages and software**

{preventr} also makes use of the
[{dplyr}](https://CRAN.R-project.org/package=dplyr) package. It also
uses [{zipcodeR}](https://CRAN.R-project.org/package=zipcodeR) to help
validate zip code entry, though this is entirely “behind the scenes” as
a data set, and thus {zipcodeR} is not imported as part of using
{preventr}. Thank you to the authors and maintainers of these packages.

The authors and maintainers of packages dedicated to developing packages
also deserve recognition. These include but are not necessarily limited
to: [{devtools}](https://CRAN.R-project.org/package=devtools),
[{roxygen2}](https://CRAN.R-project.org/package=roxygen2),
[{usethis}](https://CRAN.R-project.org/package=usethis),
[{testthat}](https://CRAN.R-project.org/package=testthat), and
[{pkgdown}](https://CRAN.R-project.org/package=pkgdown). The
[{rmarkdown}](https://CRAN.R-project.org/package=rmarkdown) package,
though not dedicated to package development, also deserves explicit
recognition, as it directly and significantly contributes to the
feasibility and functionality of packages like {pkgdown} and {roxygen2}.
Thank you to the authors and maintainers of these packages.

A huge thank you is also in order for the [R Core Team and others who
have contributed to maintaining
R](https://www.r-project.org/contributors.html), as well as the [CRAN
Team](https://CRAN.R-project.org/CRAN_team.htm). Your tireless work is,
of course, foundational to all the above packages.

Lastly, I also used [DALL·E 3](https://openai.com/dall-e-3) to help
generate the logo. Thank you to the authors and maintainers of DALL·E 3.
