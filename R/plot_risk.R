  #' @title Plot risk estimates from [`estimate_risk()`] 
#'
#' @description Generate horizontal bar charts of the risk estimates generated
#' from [`estimate_risk()`]
#'
#' @param risk_dat Data frame or list of data frames (required). This either
#'   needs to be from the output of `estimate_risk()`/`est_risk()` or needs to
#'   match the output format of `estimate_risk()`/`est_risk()`. If you wish to
#'   match the output format of `estimate_risk()`/`est_risk()`, the minimum
#'   required columns are at least one of the risk estimation columns
#'   (`total_cvd`, `ascvd`, `heart_failure`, `chd`, or `stroke`) and the columns
#'   `over_years` and `model`. Additionally, if you are passing a data frame of
#'   risk estimates for multiple people/instances, the `preventr_id` column is
#'   required to differentiate them. For each `preventr_id` group, there must be no more 
#'   than one PREVENT model row for each possible time horizon and no more than
#'   two PCE comparison rows (one for each of the original PCEs and the 
#'   revised PCEs). If `preventr_id` is absent from the data frame, estimation must be 
#'   for a single person only, thus meaning the previously-mentioned row-composition 
#'   rules apply to the full input data frame. PCE comparison rows can obviously only
#'   be for the 10-year time horizon and for the outcome of ASCVD. If you pass a list 
#'   of data frames, the structure needs to be correct as well: the names of the list 
#'   elements must be `risk_est_10yr` and `risk_est_30yr`, each data frame must have 
#'   no more rows than there are possible models that could be run for each time horizon 
#'   for a single person (i.e., 3 for 10-year risk and 1 for 30-year risk), and `preventr_id` 
#'   must not be present in the data frames. The column `input_problems` is used to display 
#'   a warning subtitle when estimating 30-year risk for individuals over 59 years of age; in 
#'   all other cases, this column is ignored. See the vignette "plot-risk" for 
#'   further discussion.
#' @param add_to_dat Logical (optional behavior variable): Whether to add the
#'   plots as a list column to the input passed via `risk_dat`, either `TRUE`
#'   or `FALSE` (the default is `TRUE`). This argument is strict, so 1 or 0 are 
#'   *not* accepted, and moreover, anything other than `TRUE` will be treated as 
#'   `FALSE`. If `TRUE`, `plot_risk()` will return the plots in a newly-created
#'   list-column containing the plots; if `FALSE`, `plot_risk()` will return the
#'   plots directly and only the plots (no data frame component). See the 
#'   vignette "plot-risk" for more information.
#' @param collapse Logical (optional behavior variable): Whether to collapse the 
#'   output into a single data frame if applicable, either `TRUE` or `FALSE`;
#'   this argument is strict, so 1 or 0 are *not* accepted, and moreover, anything
#'   other than `TRUE` will be treated as `FALSE`. This argument is only
#'   considered if `add_to_dat` is `TRUE` and `risk_dat` is a list of data
#'   frames (as happens with `estimate_risk()`/`est_risk()` when the `collapse`
#'   argument for that function is `FALSE`). This maintains consistency with the
#'   API for `estimate_risk()`/`est_risk()`. See the vignette "plot-risk" for
#'   more information.
#' @param progress Logical (optional behavior variable): Whether to display a
#'   progress bar during execution, either `TRUE` (default) or `FALSE`.
#'   This argument is strict, so 1 or 0 are *not* accepted, and moreover, anything other
#'   than `TRUE` will be treated as `FALSE`. It requires the `utils` package,
#'   which is part of the R distribution (i.e., outside of atypical scenarios,
#'   you should not need to install the `utils` package yourself).
#' @param outcomes Character (optional behavior variable): The outcome(s) to plot. 
#'   This should be a character vector listing the outcomes in the order of
#'   desired plotting from top to bottom. The default of `"all"` gets translated
#'   internally to `c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")`, 
#'   and it overrides anything else that might be passed to `outcomes`.
#' @param color_scheme Character (optional behavior variable): The color scheme
#'   to use, one of "single" (the default) or "categories". This argument is 
#'   interdependent with argument `color_dat`.
#' @param color_dat Character or data frame (optional behavior variable): This
#'   argument is interdependent with argument `color_scheme`.
#'   - If `color_scheme = "single"`, `color_dat` should be a character vector of
#'     length 1 specifying the color to use, in a format recognized by R. This 
#'     includes named colors (e.g., "dodgerblue") or hexadecimal codes (e.g., 
#'     "#1e90ff"). One can also specify the argument as a call to [`rgb()`] 
#'     (which simply returns the hexadecimal color code as a character vector). 
#'     The default is "#3c8dbc".
#'   - If `color_scheme = "categories"`, `color_dat` should be a data frame with
#'     columns `threshold` (numeric, 0.001 <= value <= 0.999) and `color`
#'     (character, adhering to specifications delineated for indicating 
#'     desired color when `color_scheme = "single"`).
#'     - The numeric limits keep thresholds within the range that can be displayed
#'     sensibly for proportion estimates rounded to 3 decimal places. One could, 
#'     of course, easily argue even less extreme values are also not terribly sensible, 
#'     either, but 0.001 and 0.999 are unequivocal simply based on how risk estimation 
#'     and plotting work.
#'     - The data frame can have up to 3 rows specifying pairs of threshold values 
#'     and corresponding colors (threshold-color pairs) to use for values below 
#'     the given threshold.
#'     - A final threshold will always be added for values that are at or above 
#'     the highest valid user-specified threshold in the data frame, and the 
#'     color for this final threshold can be specified using the 
#'     `color_for_last_group` argument.
#'     - Thresholds should ideally be entered in increasing order, but they can 
#'     technically be entered in any order, as the function will sort them anyway.
#'     - The function will disregard threshold-color pairs where the
#'     threshold is empty, duplicated, or outside the aforementioned limits. The
#'     function will then sort the threshold-color pairs based on the threshold
#'     value to prevent problematic requests (e.g., threshold 1 at 0.15 and
#'     threshold 2 at 0.10 will be rearranged to 0.10 and 0.15, but the colors
#'     entered for those thresholds will be preserved during the sort).
#'     At least one valid threshold-color pair must remain after this cleaning.
#'     - See the "Details" section and "plot-risk" vignette for further information.
#' @param color_for_last_group Character (optional behavior variable): The color 
#'   to use for the *de facto* last group (i.e., values that fall at or above 
#'   the highest valid user-specified threshold in the `color_dat` data frame). 
#'   This argument is only considered when `color_scheme = "categories"`. The 
#'   default is "#dd4b39". Entry should adhere to the specifications delineated 
#'   for indicating desired color when `color_scheme = "single"`. See the "Details" 
#'   section and "plot-risk" vignette as well.
#' @param annotation Character (optional behavior variable): Whether to include 
#'   all annotation ("all"), no annotation ("none"), or one or more of the
#'   components of annotation, which can be one or more of "title", "subtitle", 
#'   and "caption". The default is "all". Note this does not impact the legend
#'   (where applicable).
#' @param legend Logical (optional behavior variable): Whether to include a 
#'   legend with the plot, either `TRUE` or `FALSE` (the default is `TRUE`). 
#'   This argument is strict, so 1 or 0 are *not* accepted. This argument is 
#'   only considered when `color_scheme = "categories"`. 
#' @param lines Logical (optional behavior variable): Whether to include 
#'   dashed vertical lines at the threshold values, either `TRUE` or `FALSE`
#'   (the default is `TRUE`). This argument is strict, so 1 or 0 are *not*
#'   accepted. This argument is only considered when `color_scheme =
#'   "categories"`.
#' @param line_text Logical (optional behavior variable): Whether to include 
#'   caption text describing the values at which the lines are drawn (i.e., the 
#'   threshold values), either `TRUE` or `FALSE` (the default is `TRUE`). 
#'   This argument is strict, so 1 or 0 are *not* accepted. This argument is 
#'   only considered when `color_scheme = "categories"` and `lines = TRUE`.
#' @param base_size Numeric (optional behavior variable): The base font size to 
#'   use for the plot. The default is 12. Entries that are not a single, finite,
#'   positive number will be discarded in favor of the default.
#'
#' @details
#' ## Specifying `color_dat` and `color_for_last_group` when `color_scheme = "categories"`
#' See also the `color_dat` and `color_scheme` arguments. An example `color_dat`
#' data frame might be something like the following:
#' \preformatted{
#'  color_dat_v1 <- data.frame(
#'    threshold = 0.075,
#'    color = "#00A65A"
#'  )
#'   
#'  # or
#'   
#'  color_dat_v2 <- data.frame(
#'    threshold = c(0.075, 0.20),
#'    color = c("#00A65A", "#FFFDAF")
#'  )
#'   
#'  # or
#'   
#'  color_dat_v3 <- data.frame(
#'    threshold = c(0.075, 0.20, 0.35),
#'    color = c("#00A65A", "#FFFDAF", "#FF8C00")
#'  )
#'  
#'  # Not-great entries that will be cleaned
#'  
#'  color_dat_why_v1 <- data.frame(
#'    threshold = c(0.075, 0.20, 0.20),
#'    color = c("#00A65A", "#FFFDAF", "#FF8C00")
#'  )
#'  
#'  color_dat_why_v2 <- data.frame(
#'    threshold = c(0.35, 0.075, 1.5),
#'    color = c("#00A65A", "#FFFDAF", "#FF8C00")
#'  )
#' }
#' 
#' In all the above cases, users can specify `color_for_last_group`, and
#' `plot_risk()` will automatically assign that color to values at or above the
#' highest valid user-specified threshold. For example, suppose `color_for_last_group`
#' is set as "#dd4b39" (this is also the default color for this argument). Using
#' the above examples:
#' - For `color_dat_v1`, "#00A65A" will be applied for values below 0.075, and
#' "#dd4b39" will be applied for values at or above 0.075.
#' - For `color_dat_v2`, "#00A65A" will be applied for values below 0.075, "#FFFDAF"
#' will be applied for values at or above 0.075 and below 0.20, and "#dd4b39"
#' will be applied for values at or above 0.20.
#' - For `color_dat_v3`, "#00A65A" will be applied for values below 0.075, "#FFFDAF"
#' will be applied for values at or above 0.075 and below 0.20, "#FF8C00" will
#' be applied for values at or above 0.20 and below 0.35, and "#dd4b39" will be
#' applied for values at or above 0.35.
#' - For `color_dat_why_v1`, the function will clean the data frame to remove the
#' duplicate threshold value, and the result will be the same as `color_dat_v2`.
#' - For `color_dat_why_v2`, the function will clean the data frame to remove the
#' invalid threshold value of 1.5, then the thresholds will be arranged in 
#' increasing order, so the final result will be threshold 1 being at 0.075 with
#' color "#FFFDAF", threshold 2 being at 0.35 with color "#00A65A", and the final
#' group being at or above 0.35 with color "#dd4b39".
#' 
#' @return An object in one of the following formats:
#' - a single ggplot object
#' - a list of ggplot objects
#' - a data frame with ggplots in the column `plot`
#' - a list of data frames with ggplots in the column `plot`
#' 
#' Which of these formats is returned depends on the values of the arguments 
#' `add_to_dat` and `collapse` and the structure of `risk_dat`. The table below 
#' summarizes the return format for various input/argument combinations:
#' 
#' \tabular{llll}{
#' **Structure of `risk_dat`** \tab **Value of `add_to_dat`** \tab **Value of `collapse`** \tab **Output format** \cr
#' data frame \tab TRUE \tab not applicable \tab data frame with `plot` list-column \cr
#' data frame \tab FALSE \tab not applicable \tab ggplot object or list of ggplot objects \cr
#' list of data frames \tab TRUE \tab TRUE \tab single, collapsed data frame with `plot` list-column \cr
#' list of data frames \tab TRUE \tab FALSE \tab list of data frames, each with `plot` list-column \cr
#' list of data frames \tab FALSE \tab not applicable \tab list of ggplot objects \cr
#' }
#' 
#' See the vignette "plot-risk" for more information and examples demonstrating 
#' these various return formats.
#' 
#' @examples
#' res <- estimate_risk(
#'   age = 50, 
#'   sex = "female",    
#'   sbp = 160, 
#'   bp_tx = TRUE,      
#'   total_c = 200,     
#'   hdl_c = 45,        
#'   statin = FALSE,    
#'   dm = TRUE,         
#'   smoking = FALSE,   
#'   egfr = 90,
#'   bmi = 35
#' )
#' 
#' plot_risk(res, add_to_dat = FALSE)
#' 
#' # Remove annotation
#' plot_risk(res, annotation = "none", add_to_dat = FALSE)
#' 
#' # Plot only a subset of the outcomes
#' # (e.g., excluding total CVD and heart failure)
#' 
#' plot_risk(
#'   res, 
#'   outcomes = c("ascvd", "chd", "stroke"), 
#'   add_to_dat = FALSE
#' )
#' 
#' # Need to plot risk estimates you already have? No problem.
#' risk_dat <- data.frame(
#'   total_cvd = 0.15,
#'   ascvd = 0.10,
#'   heart_failure = 0.05,
#'   chd = 0.07,
#'   stroke = 0.03,
#'   model = "base",
#'   over_years = 10
#' )
#' 
#' plot_risk(risk_dat, add_to_dat = FALSE)
#' 
#' # Rest of examples limited to interactive sessions
#' @examplesIf interactive()
#'   res_10yr <- res$risk_est_10yr
#'   res_30yr <- res$risk_est_30yr
#'   
#'   # Change color for `color_scheme = "single"`
#'   plot_risk(
#'     res_10yr, 
#'     color_scheme = "single", 
#'     color_dat = "darkgreen",
#'     add_to_dat = FALSE
#'   )
#'   
#'   # Use `color_scheme = "categories"`
#'   color_dat <- data.frame(
#'     threshold = c(0.075, 0.20),
#'     color = c("#00A65A", "#FF8C00")
#'   )
#'    
#'   plot_risk(
#'     res_30yr, 
#'     color_scheme = "categories", 
#'     color_dat = color_dat,
#'     add_to_dat = FALSE
#'   )
#'   
#'   # Change color for final group
#'   plot_risk(
#'     res_30yr, 
#'     color_scheme = "categories", 
#'     color_dat = color_dat,
#'     color_for_last_group = "maroon",
#'     add_to_dat = FALSE
#'   )
#'   
#'   # Remove legend
#'   plot_risk(
#'     res_10yr,
#'     color_scheme = "categories",
#'     color_dat = color_dat,
#'     legend = FALSE,
#'     add_to_dat = FALSE
#'   )
#'   
#'   # Remove legend and lines
#'   plot_risk(
#'     res_10yr,
#'     color_scheme = "categories",
#'     color_dat = color_dat,
#'     legend = FALSE,
#'     lines = FALSE,
#'     add_to_dat = FALSE
#'   )
#'   
#'   # Remove legend and line text (but keep lines)
#'   plot_risk(
#'    res_10yr,
#'    color_scheme = "categories",
#'    color_dat = color_dat,
#'    legend = FALSE,
#'    line_text = FALSE,
#'    add_to_dat = FALSE
#'   )
#'   
#'   # Run `plot_risk()` on a data frame of results from 
#'   # `estimate_risk()`/`est_risk()`   
#'   dat <- data.frame(
#'     age = c(40, 50, 60), 
#'     sex = c("female", "female", "male"),    
#'     sbp = c(160, 120, 140),
#'     bp_tx = c(TRUE, TRUE, FALSE),     
#'     total_c = c(200, 189, 156),    
#'     hdl_c = c(45, 42, 38),       
#'     statin = c(FALSE, TRUE, TRUE),   
#'     dm = c(TRUE, FALSE, TRUE),       
#'     smoking = c(FALSE, TRUE, FALSE),  
#'     egfr = c(90, 85, 88),
#'     bmi = c(35, 22, 28)
#'   )
#'   
#'   res <- estimate_risk(use_dat = dat)
#' 
#'   plot_risk(res, add_to_dat = FALSE) # Returns plots
#' 
#'   plot_risk(res) # Returns data frame `plot` list-column
#' 
#'   # Because the plots are ggplot objects, they can be further customized
#'   # like any other ggplot object.
#'   res_10yr <- estimate_risk(use_dat = dat[1, ], time = 10)
#'   # Customization via {ggplot2}
#'   p <- plot_risk(res_10yr, add_to_dat = FALSE)
#'   # Note `labs()`, `theme()`, and `margin()` are from {ggplot2}, so one would
#'   # need to get access to them via, e.g., `library(ggplot2)`, `ggplot2::` prefixing, 
#'   # `importFrom()` (if developing a package; for example, {preventr} `importFrom()`s
#'   # all three), etc. 
#'   p + 
#'     ggplot2::labs(title = "Lorem ipsum") + 
#'     ggplot2::theme(plot.margin = ggplot2::margin(20, 20, 20, 20))
#'   # etc.
#'   # It is also easy to combine the 10- and 30-year plots if desired, e.g., 
#'   # via packages like {patchwork} with functions like `patchwork::wrap_plots()`,
#'   # and there are many additional options for composing plots via {patchwork}.
#' @export
plot_risk <- function(risk_dat,
                      add_to_dat = TRUE,
                      collapse = is.data.frame(risk_dat),
                      progress = TRUE,
                      outcomes = "all",
                      color_scheme = "single",
                      color_dat = get_default_color("single"),
                      color_for_last_group = get_default_color("threshold_final"),
                      annotation = "all",
                      legend = TRUE,
                      lines = TRUE,
                      line_text = TRUE,
                      base_size = 12) {
  
  #' @importFrom ggplot2 aes annotate element_blank element_rect element_text expand_limits 
  #' @importFrom ggplot2 facet_wrap geom_col geom_vline ggplot is_ggplot labs margin 
  #' @importFrom ggplot2 scale_fill_manual scale_x_continuous scale_y_discrete theme 
  #' @importFrom ggplot2 theme_minimal vars
    
  # Errors & messages ----
  msg_need_colors_as_df <- function() {
    stop(
      paste(
        "`color_dat` must be provided as a data frame when",
        "`color_scheme` is \"categories\"",
        sep = "\n"
      ),
      call. = FALSE
    )
  }
  
  msg_need_colors_as_chr_vec <- function() {
    stop(
      paste(
        "`color_dat` must be provided as a character vector of length 1 when ",
        "`color_scheme` is \"single\"",
        sep = "\n"
      ),
      call. = FALSE
    )
  }
  
  msg_default <- function() {
    message("No color data provided; using default color scheme")
  }
  
  if("all" %in% outcomes) {
    outcomes <- c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")
  } else if(
    length(outcomes) < 1 ||
    !all(outcomes %in% c("total_cvd", "ascvd", "heart_failure", "chd", "stroke"))
  ) {
    stop(
      "valid input for `outcomes` is one or more of ",
      "\n",
      "\"total_cvd\", \"ascvd\", \"heart_failure\", \"chd\", \"stroke\", or \"all\"",
      call. = TRUE
    )
  }
  
  if(
    !is.numeric(base_size) ||
    length(base_size) != 1 ||
    is.na(base_size) ||
    !is.finite(base_size) ||
    base_size <= 0
   ) {
    base_size <- 12
    message("`base_size` must be a single, finite, positive number; using default of 12")
  }
  
  # Checks and handling ----
  check_logical <- function(var) {
    if(!(isTRUE(var) || isFALSE(var))) {
      stop(
        paste0(
          "`", deparse(substitute(var)), "` ",
          "must be `TRUE` or `FALSE`"
        ), 
        call. = FALSE
      )
    }
  }
  
  if(length(color_scheme) != 1 || !color_scheme %in% c("single", "categories")) {
    stop(
      "`color_scheme` must be one of \"single\" or \"categories\"",
      call. = FALSE
    )
  }
  
  if(is.data.frame(risk_dat)) {
    risk_dat_type <- "data_frame"
    risk_dat_for_checking <- risk_dat
  } else if(
    is.list(risk_dat) && 
    !is.data.frame(risk_dat) && 
    all(vapply(risk_dat, is.data.frame, logical(1)))
  ) {
    risk_dat_type <- "list_of_data_frames"
    if(
      !all(
        names(risk_dat) %in% c("risk_est_10yr", "risk_est_30yr"),
        nrow(risk_dat$risk_est_10yr) > 0,
        nrow(risk_dat$risk_est_30yr) > 0,
        nrow(risk_dat$risk_est_10yr) <= 3,
        nrow(risk_dat$risk_est_30yr) <= 1,
        !"preventr_id" %in% names(risk_dat$risk_est_10yr),
        !"preventr_id" %in% names(risk_dat$risk_est_30yr)
      )
    ) {
      stop(
        paste0(
          "If `risk_dat` is a list of data frames, it must be consistent with the output of `estimate_risk()`/`est_risk()` ",
          "when estimating the risk for a single person and `collapse = FALSE`. ", 
          "This means the list must have two data frames named `risk_est_10yr` and `risk_est_30yr`, where `risk_est_10yr` has between 1 and 3 rows (inclusive) ",
          "and `risk_est_30yr` has exactly 1 row, and neither data frame has a `preventr_id` column."
        ),
        call. = FALSE
      )
    }
    risk_dat_for_checking <- dplyr::bind_rows(risk_dat)
  } else {
    stop(
      "`risk_dat` must be a data frame or a list of data frames",
      call. = FALSE
    )
  }
  
  # Check for `over_years` and `model` columns (required cols)
  req_col_check <- function(var) {
    
    var <- deparse(substitute(var))

    if(!var %in% names(risk_dat_for_checking)) {
      stop(
        paste0(
          "`plot_risk()` requires that `risk_dat` match a minimum specified output format ",
          "consistent with `estimate_risk()`/`est_risk()`, which includes having the column `", 
          var,
          "`. "
        ), 
        call. = FALSE
      )
    }
  }
  
  req_col_check(over_years)
  req_col_check(model)
  
  # Check that all outcomes specified in `outcomes` are proportions or NA
  outcomes_numerically_sound <- all(vapply(
    outcomes, 
    function(outcome) {    
      outcome_vals <- risk_dat_for_checking[[outcome]]
      all(
        is.na(outcome_vals) |
        (
          is.numeric(outcome_vals) & 
            outcome_vals >= 0 & 
            outcome_vals <= 1
        )
      )
    },
    logical(1)
  ))

  if(!outcomes_numerically_sound) {
    stop(
      "All outcomes specified in `outcomes` must be numeric and between 0 and 1, or NA",
      call. = FALSE
    )
  }
  
  # Check that all models specified in `model` are appropriate
  model_names_are_sound <- all(
    unique(risk_dat_for_checking$model) %in% 
        c("base", "hba1c", "uacr", "sdi", "full", "pce_orig", "pce_rev", "none")
  )

  if(!model_names_are_sound) {
    stop(
      paste0(
        "All models specified in `model` must be within the set of models that ",
        "can be returned by `estimate_risk()`/`est_risk()`, which includes ", 
        "\"base\", \"hba1c\", \"uacr\", \"sdi\", \"full\", \"pce_orig\", \"pce_rev\", and \"none\""
      ),
      call. = FALSE
    )
  }

  prevent_models <- c("base", "hba1c", "uacr", "sdi", "full")
  pce_models <- c("pce_orig", "pce_rev")
  risk_outcomes <- intersect(
    c("total_cvd", "ascvd", "heart_failure", "chd", "stroke"),
    names(risk_dat_for_checking)
  )

  # Check that all time horizons specified in `over_years` are appropriate
  over_years_vals <- risk_dat_for_checking$over_years

  times_are_sound <- is.numeric(over_years_vals) &&
    all(is.na(over_years_vals) | over_years_vals %in% c(10, 30))  

  if(!times_are_sound) {
    stop(
      paste0(
        "All times specified in `over_years` must be within the set of times that ",
        "can be returned by `estimate_risk()`/`est_risk()`, which includes ", 
        "10, 30, and NA, with NA only permitted when `model` is \"none\""
      ),
      call. = FALSE
    )
  }

  times_match_models <- all(
    is.na(over_years_vals[risk_dat_for_checking$model == "none"])
  ) &&
    all(!is.na(over_years_vals[risk_dat_for_checking$model != "none"]))

  if(!times_match_models) {
    stop(
      paste0(
        "`over_years` may be NA only when `model` is \"none\"; all rows for ",
        "PREVENT and PCE models must have `over_years` equal to 10 or 30."
      ),
      call. = FALSE
    )
  }

  pce_times_are_sound <- all(
    over_years_vals[risk_dat_for_checking$model %in% pce_models] == 10
  )

  if(!pce_times_are_sound) {
    stop("Rows for PCE comparison models must have `over_years = 10`.", call. = FALSE)
  }

  non_ascvd_outcomes <- setdiff(risk_outcomes, "ascvd")

  pce_non_ascvd_are_empty <- length(non_ascvd_outcomes) == 0 ||
    all(is.na(risk_dat_for_checking[
      risk_dat_for_checking$model %in% pce_models,
      non_ascvd_outcomes,
      drop = FALSE
    ]))

  if(!pce_non_ascvd_are_empty) {
    stop(
      paste0(
        "Rows for PCE comparison models must only have numeric estimates for `ascvd`; ",
        "all other outcomes must be NA for those rows."
      ),
      call. = FALSE
    )
  }

  none_risk_estimates_are_empty <- all(is.na(risk_dat_for_checking[
    risk_dat_for_checking$model == "none",
    risk_outcomes,
    drop = FALSE
  ]))

  if(!none_risk_estimates_are_empty) {
    stop(
      "Rows where `model` is \"none\" must have missing risk estimates.",
      call. = FALSE
    )
  }  

  valid_preventr_id_is_present <- 
    "preventr_id" %in% names(risk_dat_for_checking) &&
    isTRUE(is.numeric(risk_dat_for_checking$preventr_id)) &&
    isTRUE(
      all.equal(
        as.integer(risk_dat_for_checking$preventr_id), 
        risk_dat_for_checking$preventr_id
      )
    ) &&
    !any(
      is.na(risk_dat_for_checking$preventr_id) |
        risk_dat_for_checking$preventr_id < 1
    )

  # Check for valid `preventr_id` column when applicable
  if(
    !valid_preventr_id_is_present &&
    # Any of the following being `TRUE` signals there is a problem, because
    # the maximum number of rows a single person could generate is 4
    # (1 for 10-year PREVENT, 1 each for original and revised PCE, and 1 for 
    # 30-year PREVENT), and the PCE rows should only have estimates for ASCVD
    (
      nrow(risk_dat_for_checking) > 4 ||
      
      # If there is > 1 legitimate (i.e., non-NA) value for `over_years`, then 
      # there should only be a maximum of 2 legitimate (i.e., non-NA) values for 
      # each of the outcomes total_cvd, heart_failure, chd, and stroke 
      # (given the 10-year and 30-year time horizons), and if there is only 1 
      # legitimate value for `over_years`, then there should only be a maximum 
      # of 1 legitimate value for each of those outcomes. For ASCVD, however,
      # because the PCEs can also estimate ASCVD, the maximum number of 
      # legitimate values is bumped by 2 (given there are two instances of the 
      # PCEs, original and revised) when the PCEs are "in play".
      (
        all(c(10, 30) %in% risk_dat_for_checking$over_years) && 
        (
          sum(!is.na(risk_dat_for_checking$ascvd)) > 4 ||
          sum(!is.na(risk_dat_for_checking$total_cvd)) > 2 ||
          sum(!is.na(risk_dat_for_checking$heart_failure)) > 2 ||
          sum(!is.na(risk_dat_for_checking$chd)) > 2 ||
          sum(!is.na(risk_dat_for_checking$stroke)) > 2
        )
      ) ||
      
      (
        isTRUE(unique(risk_dat_for_checking$over_years) == 10) && 
          sum(!is.na(risk_dat_for_checking$ascvd)) >= 4 ||

        isTRUE(unique(risk_dat_for_checking$over_years) == 30) && 
          sum(!is.na(risk_dat_for_checking$ascvd)) >= 2 ||
        (
          isTRUE(unique(risk_dat_for_checking$over_years) == 10) || 
          isTRUE(unique(risk_dat_for_checking$over_years) == 30)
        ) && 
        (
          sum(!is.na(risk_dat_for_checking$total_cvd)) >= 2 ||
          sum(!is.na(risk_dat_for_checking$heart_failure)) >= 2 ||
          sum(!is.na(risk_dat_for_checking$chd)) >= 2 ||
          sum(!is.na(risk_dat_for_checking$stroke)) >= 2
        )
      )
    )
  ) {
    stop(
      paste0(
        "`risk_dat` appears to contain risk estimates for multiple people/instances, ",
        "but no valid `preventr_id` column is present to differentiate them. ",
        "Add a valid `preventr_id` column to `risk_dat` and try again."
      ),
      call. = FALSE
    )
  }
  
  risk_dat_for_structure_check <- risk_dat_for_checking
  risk_dat_for_structure_check[[".preventr_group"]] <- 
    if(valid_preventr_id_is_present) {
      as.character(risk_dat_for_structure_check$preventr_id)
    } else {
      "single_input"
    }

  model_row_counts_are_sound <- risk_dat_for_structure_check %>%
    dplyr::group_by(.preventr_group, over_years) %>%
    dplyr::summarize(
      n_prevent_models = sum(model %in% prevent_models),
      n_pce_orig = sum(model == "pce_orig"),
      n_pce_rev = sum(model == "pce_rev"),
      .groups = "drop"
    ) %>%
    dplyr::summarize(
      okay = all(n_prevent_models <= 1 & n_pce_orig <= 1 & n_pce_rev <= 1),
      .groups = "drop"
    ) %>%
    dplyr::pull(okay)

  if(!isTRUE(model_row_counts_are_sound)) {
    stop(
      paste0(
        "Within each `preventr_id` group and time horizon, `risk_dat` must ",
        "have no more than one PREVENT model row and no more than one row for ",
        "each PCE comparison model, with PCE comparison model rows only having ", 
        "estimates for the 10-year time horizon."
      ),
      call. = FALSE
    )
  }

  none_model_row_counts_are_sound <- risk_dat_for_structure_check %>%
    dplyr::group_by(.preventr_group) %>%
    dplyr::summarize(
      n_none = sum(model == "none"),
      .groups = "drop"
    ) %>%
    dplyr::summarize(
      okay = all(n_none <= 4),
      .groups = "drop"
    ) %>%
    dplyr::pull(okay)

  if(!isTRUE(none_model_row_counts_are_sound)) {
    stop(
      paste0(
        "Within each `preventr_id` group, `risk_dat` must have no more than ",
        "four rows where `model` is \"none\"."
      ),
      call. = FALSE
    )
  }

  # Because operation involves splitting the data frame when `risk_dat` is
  # a data frame, `collapse` should be overridden to `TRUE` in that case,
  # functionally ignoring whatever the user might have passed for `collapse`
  # when `risk_dat` is a data frame. Likewise, if `add_to_dat` is `FALSE`, this
  # means the user just wants the plots, in which case `collapse` should also
  # be overridden, but it should be overridden to `FALSE`.
  collapse <- if(!isTRUE(add_to_dat)) {
    FALSE
  } else if(risk_dat_type == "data_frame") {
    TRUE
  } else {
    isTRUE(collapse)
  }
  
  # See corresponding code where this attribute is set in section
  # "Recursively call plot_risk() on `risk_dat` if needed"
  if(isTRUE(attr(risk_dat, "part_of_recursive_call"))) {
    part_of_recursive_call <- TRUE
  } else {
    part_of_recursive_call <- FALSE
  }
  
  risk_dat_orig <- risk_dat
  
  # Now `risk_dat` will always be data frame from this point until the split
  if(risk_dat_type == "list_of_data_frames") {
    risk_dat <- risk_dat %>% dplyr::bind_rows(.id = "orig_list_name")
  }

  if("preventr_id" %in% names(risk_dat) && length(unique(risk_dat$preventr_id)) != 1) {
    multiple_people <- TRUE
  } else {
    multiple_people <- FALSE
  }
  
  if("over_years" %in% names(risk_dat) && length(unique(risk_dat$over_years)) != 1) {
    multiple_time_horizons <- TRUE
    
    # If any of the `over_years` values are `NA`, need to handle those in 
    # anticipation of the `split()` call below
    risk_dat <- risk_dat %>% 
      dplyr::mutate(
        # Need to use "missing" b/c `split()` silently drops `NA` levels
        # (which should be a configurable option and not a default, silent behavior,
        # but I digress)
        over_years_for_split = dplyr::case_when(
          is.na(over_years) ~ "missing",
          # Default needs to convert type int to type chr for col consistency
          # w/ "missing"
          .default = as.character(over_years)
        ),
        # Account for original order given the upcoming `split()` call could
        # break the original order if `over_years` has `NA` values
        orig_order = dplyr::row_number()
      )
  } else {
    multiple_time_horizons <- FALSE
  }
  
  if(multiple_people && multiple_time_horizons) {
    risk_dat <- split(
      risk_dat, 
      ~ preventr_id + over_years_for_split, 
      drop = TRUE,
      lex.order = TRUE
    ) 
  } 
  
  if(!multiple_people && multiple_time_horizons) {
    risk_dat <- split(
      risk_dat, 
      ~ over_years_for_split, 
      drop = TRUE
    )
  }
  
  if(multiple_people && !multiple_time_horizons) {
    risk_dat <- split(
      risk_dat, 
      ~ preventr_id, 
      drop = TRUE
    )
  }
  
  # Recursively call plot_risk() on `risk_dat` if needed ----
  # Note the `split()` calls above will result in a list if `risk_dat` is passed
  # as a data frame containing data for >1 person or time horizon.
  if(is.list(risk_dat) && !is.data.frame(risk_dat)) {
    
    prog_bar_requested <- isTRUE(progress)
    do_prog_bar <- prog_bar_requested && requireNamespace("utils", quietly = TRUE)
    
    if(prog_bar_requested) {
      
      # If `use_dat_is_data_frame` and `prog_bar_requested` are both `TRUE`,
      # then the only way for `do_prog_bar` to be FALSE is for the `utils`
      # package to not be available
      if(!do_prog_bar) {
        message("The `utils` package is not available, so a progress bar will not show.")
      }
      
      if(do_prog_bar) {
        n_iter <- length(risk_dat)
        prog_bar <- utils::txtProgressBar(min = 0, max = n_iter, style = 3)
      }
    }
    
    res <- lapply(
      risk_dat, 
      function(x) {
        
        if("over_years_for_split" %in% names(x)) {
          x <- x %>% dplyr::select(-over_years_for_split)
        }
        
        # Add attribute to know when to show message / warnings re: possible S7 issues
        attr(x, "part_of_recursive_call") <- TRUE
        
        if(do_prog_bar) utils::setTxtProgressBar(prog_bar, utils::getTxtProgressBar(prog_bar) + 1)
        
        plot_risk(
          x,
          add_to_dat,
          collapse,
          progress,
          outcomes,
          color_scheme, 
          color_dat,
          color_for_last_group,
          annotation,
          legend,
          lines,
          line_text,
          base_size
        )
      }
    )
    
    if(do_prog_bar) close(prog_bar)
    
    # Now, bind results
    # and, if needed, 
    # re-order to match original input order, then  drop `orig_order` col
    res <- res %>% dplyr::bind_rows() 
    
    if("orig_order" %in% names(res)) {
      res <- res %>%
        dplyr::arrange(orig_order) %>%
        dplyr::select(-orig_order)
    }
    
    # Now, if originally passed a list of data frames, tidy up ...
    if(risk_dat_type == "list_of_data_frames") { 
      
      # If `risk_dat_type == "list_of_data_frames"`, then the original list
      # name element will be in col `orig_list_name`.
      
      if(!isTRUE(collapse)) {
        # Given no desire to collapse, need to split the data frame back into 
        # the original list structure based on this `orig_list_name`, but also 
        # need to drop this col using `which()` so return doesn't have this col.
        # 
        # But if `add_to_dat` is FALSE, then drop everything other than the plots
        # anyway, so the `split()` aspect depends on `add_to_dat`
        if(isTRUE(add_to_dat)) {
          res <- res %>% dplyr::select(-orig_list_name) %>% split(res$orig_list_name)
        } else {
          # Here, b/c returning a plot object directly, it gets a bit more
          # involved, because a "vanilla" `split()` call on this will result
          # in a layer of listing being added d/t the plot object structure 
          # necessarily being stored in a list col when in a df. So, need to
          # "reach in" and pull that out. Can do this more than one way, but
          # will use good old `lapply()` with `[[`
          res <- res %>% 
            dplyr::pull(plot) %>% 
            split(res$orig_list_name) %>%
            lapply(function(x) x[[1]])
        }
      } 
      
      if(isTRUE(collapse)) {
        # Given desire to collapse, need to drop `orig_list_name`; easier to
        # do w/ `dplyr::select()` given no need to split
        if(isTRUE(add_to_dat)) {
          res <- res %>% dplyr::select(-orig_list_name)
        } else {
          # If `add_to_dat` is FALSE, then drop everything other than the plots
          res <- res %>% dplyr::pull(plot)
        }
      }
    }
    
    if(risk_dat_type == "data_frame") {
      if(!isTRUE(add_to_dat)) {
        # Drop everything other than the plots
        res <- res %>% dplyr::pull(plot)
      }
    }
    
    
    res <- warn_about_formatting_issues(res)
    
    return(res)
  }
  
  categories <- color_scheme == "categories"
  
  if(
    !any(
      length(annotation) > 0 && all(annotation %in% c("title", "subtitle", "caption")),
      isTRUE(annotation == "all"),
      isTRUE(annotation == "none")
    )
  ) {
    stop(
      paste0(
        "`annotation` must be \"all\", \"none\", or one or more of ",
        "\"title\", \"subtitle\", and \"caption\""
      ),
      call. = FALSE
    )
  }
  
  if(categories) {
    check_logical(legend)
    check_logical(lines)
    if(lines) check_logical(line_text)
  }
  
  if(!categories) {
    if(length(color_dat) == 0 || (length(color_dat) == 1 && is.na(color_dat))) {
      msg_default()
      color_dat <- get_default_color("single")
    } else if(length(color_dat) != 1 || !is.character(color_dat)) {
      msg_need_colors_as_chr_vec()
    }
  }
  
  if(categories) {
    if(!is.data.frame(color_dat)) {
      
      msg_need_colors_as_df()
      
    } else {
      
      if(nrow(color_dat) == 0) {
        stop(
          paste0(
            "At least one valid threshold-color pair is required when ",
            "`color_scheme` is \"categories\"."
          ),
          call. = FALSE
        )
      }
      
      if(!"prepped_threshold_dat" %in% class(color_dat)) {
        color_dat <- prep_threshold_data(color_dat, color_for_last_group)
        if(is.null(color_dat)) {
          stop(
            paste0(
              "At least one valid threshold-color pair is required when ",
              "`color_scheme` is \"categories\"."
            ),
            call. = FALSE
          )
        }
      } 
    }
  }
  
  # Initial prep of annotation elements ----
  # Need to do it here given anticipation of being part of `risk_dat` when
  # `annotation` is desired, and will remove from `risk_dat` once stored as
  # a separate var
  if("model" %in% names(risk_dat)) {
    
    # Get rid of "none" if in the list, b/c will be dropped anyway
    models_being_considered <- setdiff(unique(risk_dat$model), "none")
    
    includes_pce <- any(grepl("^pce_", models_being_considered))
    
    unique_models_sans_pce <- 
      grep("^pce_", models_being_considered, invert = TRUE, value = TRUE)
    unique_pce_models <- 
      grep("^pce_", models_being_considered, value = TRUE)
    
    no_prevent_models <- length(unique_models_sans_pce) == 0
    one_unique_prevent_model <- length(unique_models_sans_pce) == 1
    
    stopifnot(one_unique_prevent_model || no_prevent_models)
    
    plot_caption <- paste0(
      "Estimates are from the PREVENT ", 
      stylize_model_to_run(
        if(one_unique_prevent_model) unique_models_sans_pce else unique_pce_models,
        FALSE
      ),
      "."
    )
    
    if(includes_pce) {
      
      if(one_unique_prevent_model) {
        plot_caption <- gsub(
          "Estimates are from the PREVENT ", 
          "Unless otherwise noted, estimates are from the PREVENT ",
          plot_caption
        )
      }
      
      if(no_prevent_models) {
        plot_caption <- gsub(
          "PREVENT ", 
          "",
          plot_caption
        )
      }
    }
    
  } else {
    
    plot_caption <- NULL
    risk_dat[["model"]] <- NA_character_
  }
  
  if("over_years" %in% names(risk_dat)) {
    
    plot_title <- paste0(
      "Risk Estimates Over ", 
      risk_dat$over_years, 
      " Years"
    )
    
    risk_dat <- risk_dat %>% dplyr::select(-over_years)
    
  } else {
    
    plot_title <- NULL
  }
  
  if("input_problems" %in% names(risk_dat)) {
    # Only extract warning about predicting 30-year risk in people >59 yo,
    # b/c anything else in this col --> NA return
    age_warning_string <- 
      "Warning: Estimating 30-year risk in people > 59 years of age is questionable"
    
    age_warning_present <- any(grepl(age_warning_string, risk_dat$input_problems))
    
    if(age_warning_present) {
      plot_subtitle <- age_warning_string
    } else {
      plot_subtitle <- NULL
    }
  } else {
    plot_subtitle <- NULL
  }
  
  # Finalize annotation elements based on `annotation` argument ----
  if(isTRUE(annotation == "none")) {
    plot_title <- NULL
    plot_subtitle <- NULL
    plot_caption <- NULL
  } else if(!isTRUE(annotation == "all")) {
    if(!"title" %in% annotation) plot_title <- NULL
    if(!"subtitle" %in% annotation) plot_subtitle <- NULL
    if(!"caption" %in% annotation) plot_caption <- NULL
  }
  
  # Get rid of other unnecessary columns ----
  risk_dat <- risk_dat %>% dplyr::select(
    grep(
      "total_cvd|ascvd|heart_failure|chd|stroke|\\bmodel\\b", 
      names(risk_dat), 
      value = TRUE
    ),
  )
  
  # Mini function to make outcome labels pretty ----
  make_pretty_label <- function(x) {
    ifelse(
      grepl("none", x),
      "No valid estimate",
      ifelse(
        grepl("total_cvd", x),
        "Total CVD",
        ifelse(
          grepl("chd", x), 
          "CHD",
          ifelse(
            grepl("stroke", x),
            "Stroke",
            ifelse(
              grepl("heart_failure", x),
              "Heart failure",
              ifelse(
                x == "ascvd_pce_orig",
                "ASCVD (original PCEs)",
                ifelse(
                  x == "ascvd_pce_rev",
                  "ASCVD (revised PCEs)",
                  ifelse(
                    grepl("^ascvd", x),
                    "ASCVD",
                    NA
                  )
                )
              )
            )
          )
        )
      )
    )
  }
  
  # Prep of color dat and risk dat ----
  background_bar <- "#EAEAEA"
  
  if(!categories) color_dat <- c(single_color = color_dat)
  
  cols_to_pivot <- setdiff(names(risk_dat), "model")
  
  risk_dat <- risk_dat %>%
    # Don't wanna' do base R way here (`pivot_longer()` is much better)
    # but also don't wanna' have a dependency on `{tidyr}` just for this :-(
    # 
    # The end result here is a:
    #  
    # long data frame 
    # with cols `model` (type: chr), `outcome` (type: fct), and `pt_est` (type: dbl)
    # that is grouped by `outcome`
    # 
    # Add `pivot_id` to uniquely identify rows prior to reshaping, as there
    # may be instances where `outcome` is "none" (and thus rows could be identical)
    dplyr::mutate(pivot_id = dplyr::row_number()) %>%
    as.data.frame() %>% # This first b/c `reshape()` can get weird w/ tibbles
    stats::reshape(
      varying = cols_to_pivot,
      v.names = "pt_est",
      timevar = "outcome",
      times = cols_to_pivot,
      idvar = "pivot_id",
      ids = "model",
      direction = "long"
    ) %>% 
    dplyr::as_tibble() %>%
    # No longer need `pivot_id`
    dplyr::select(-pivot_id) %>%
    dplyr::filter(outcome %in% outcomes) %>%
    dplyr::mutate(
      outcome = factor(outcome, levels = outcomes),
      pt_est = round_half_up(pt_est, 3)
    ) %>%
    dplyr::group_by(outcome) %>%
    dplyr::arrange(model, .by_group = TRUE)
  
  if(nrow(risk_dat) == 0 || all(is.na(risk_dat$pt_est))) {
    # There will be 0 rows if there are no rows after filtering above to remove
    # NAs and restrict to desired outcomes
    res <- ggplot() + labs(title = "No valid risk estimates to plot") + theme_minimal()
  } else {
    if("model" %in% names(risk_dat)) {
      risk_dat <- risk_dat %>% 
        dplyr::mutate(
          outcome_and_model = paste0(outcome, "_", model),
          y_lab =
            factor(
              outcome_and_model,
              levels = outcome_and_model,
              labels = paste0(make_pretty_label(outcome_and_model), ": ", percentify(pt_est))
            )
        )
    }
    
    if(!categories) risk_dat$risk_group <- "single_color"
    if(categories) {
      
      color_dat <- color_dat %>% 
        dplyr::mutate(
          # Convert `risk_group` to factor
          risk_group = factor(
            risk_group, 
            levels = 
              with(color_dat, unique(risk_group[order(threshold)]))
          ),
          # Add column for labels for legend
          risk_group_label = dplyr::case_when(
            threshold == max(color_dat$threshold) ~ paste0(
              with(color_dat, max(threshold[threshold != 1]) %>% percentify()),
              " or more"
            ),
            .default = paste0("< ", percentify(threshold))
          )
        )
      
      risk_dat <- 
        risk_dat %>% 
        # Do inequality join, which will match *all* in y that meet the inequality
        dplyr::left_join(color_dat, dplyr::join_by(pt_est < threshold)) %>% 
        # The above step will result in duplicated risks, 
        # so group by `outcome` and `pt_est` (group by `outcome` first to make sure)
        # all outcomes are retained (e.g., if some outcomes have the same `pt_est`)
        dplyr::group_by(outcome, pt_est) %>% 
        # For each pt_est, find min threshold it meets, report via `summarize()`
        # (will give summary cols of pt_est and min threshold it meets)
        dplyr::summarize(threshold = min(threshold)) %>% 
        # Now left join that with `color_dat` to get `risk_group`
        dplyr::left_join(color_dat, dplyr::join_by(threshold)) %>% 
        # Now left join that with `risk_dat` to get the rest of the risk data
        # (e.g., `outcome`)
        dplyr::left_join(risk_dat, dplyr::join_by(outcome, pt_est)) %>%
        # Now sort by `outcome` (which is a factor) to make sure outcomes in
        # desired order
        dplyr::arrange(outcome)
    }
    
    # Prep of plot components ----
    min <- 3
    top <- bottom <- min
    if((categories && (legend || line_text)) || !is.null(plot_caption)) bottom <- 7.5
    if(!is.null(plot_title) || !is.null(plot_subtitle)) top <- 7.5
    plot_margin <- margin(t = top, r = min, b = bottom, l = 5)
    
    legend_position <- "bottom"
    if((categories && !legend) || !categories) legend_position <- "none"
    
    if(categories) {
      vals <- color_dat$color
      labs <- color_dat$risk_group_label
      names(labs) <- names(vals) <- color_dat$risk_group
      scale_fill_manual <- scale_fill_manual(
        values = vals,
        labels = labs,
        limits = levels(color_dat$risk_group),
        name = NULL
      )
      # Changing legend_position to "none" (vs. "bottom") to remove the legend
      # even for `categories`, as it will now be moved to the footer of the box
      # (see `server.R`, `make_all_plot_footer()`)
      if(lines) {
        v_line_elements <- 
          geom_vline(
            xintercept = with(color_dat, threshold[threshold != 1]),
            linetype = "dashed",
            color = "black",
            show.legend = FALSE
          )
      } else {
        v_line_elements <- NULL
      }
      
      if(!lines || !line_text) {
        dashed_line_text <- NULL
      } else {
        dashed_line_text <- make_dashed_line_text(
          nrow(color_dat), color_dat$threshold_pct_with_sym_and_punc
        ) 
      }
    } else {
      scale_fill_manual <- scale_fill_manual(values = color_dat)
      legend_position <- "none"
      v_line_elements <- NULL
      dashed_line_text <- NULL
    }
    
    res <- risk_dat %>%
      dplyr::filter(!is.na(pt_est)) %>%
      # Set "faceted" b/c will facet later
      ggplot(aes(y = "faceted")) +
      # Here, just set background bar with `annotate()`
      # x = 1 just signifies 100% of the bar
      annotate("col", x = 1, y = "faceted", fill = background_bar) +
      geom_col(aes(x = pt_est, fill = risk_group), show.legend = TRUE) +
      labs(
        x = "", 
        title = plot_title,
        subtitle = plot_subtitle,
        caption = paste(dashed_line_text, plot_caption, sep = "\n\n")
      ) +
      expand_limits(x = c(0, 1.1)) +
      scale_x_continuous(expand = c(0.001, 0.001)) +
      theme_minimal(base_size = base_size) +
      scale_fill_manual +
      theme(
        axis.ticks.y = element_blank(),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank(),
        plot.margin = plot_margin,
        plot.caption = element_text(hjust = 0),
        legend.position = legend_position,
        legend.justification = "left",
        legend.margin = margin(5, 0, 1, 0),
        legend.key = element_rect(color = "black"),
        legend.title = element_blank(),
        strip.text = element_text(hjust = 0, margin = margin(2, 0, 4, 0))
      ) +
      v_line_elements +
      facet_wrap(
        vars(y_lab), 
        ncol = 1, 
        strip.position = "top"
      )
    
    # If no subtitle but there is a title, add some space below the title
    if(is.null(plot_subtitle) && !is.null(plot_title)) {
      res <- res + theme(plot.title = element_text(margin = margin(b = 12)))
    }
    
    # If the subtitle is present, wait to add space until after the subtitle
    if(!is.null(plot_subtitle)) {
      res <- res + theme(plot.subtitle = element_text(margin = margin(b = 15)))
    }
  }
  
  # Final output handling ----
  if(part_of_recursive_call || isTRUE(add_to_dat)) {
    # Add if part of recursive call to preserve ordering, and will handle final
    # aspect of `add_to_dat` as part of recursive call's return
    res <- risk_dat_orig %>% dplyr::mutate(plot = list(res))
  }
  
  if(!part_of_recursive_call) {
    res <- warn_about_formatting_issues(res)
  }
  
  attr(res, "part_of_recursive_call") <- NULL
  
  res
}
