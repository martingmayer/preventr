get_default_color <- function(id) {
  
  default_colors <- c(
    single = "#3c8dbc",
    threshold_1 = "#00a65a",
    threshold_2 = "#fffdaf",
    threshold_3 = "#ff8c00",
    threshold_final = "#dd4b39"
  )
  
  default_colors[[id]]
}

# arg `dat` is expected to be a df with cols: 
# `use` (TRUE or FALSE), 
# `threshold` (0.001 < `threshold` < 0.99), and 
# `color` (hex values for desired colors)
# or `threshold` and `color`, where `use` will be treated as TRUE for all
# 
# arg `threshold_final_color` is expected to be a character vector of length 1
# that specifies the hex value for the desired color
prep_threshold_data <- function(
    dat, 
    threshold_final_color = get_default_color("threshold_final")
) {
  
  # Ensure `threshold_final_color` exists
  if(is_na_or_empty(threshold_final_color)) {
    message("No color provided for final threshold; using default color")
    threshold_final_color <- get_default_color("threshold_final")
  }
  
  # Ensure `threshold_final_color` is char vec of length 1
  if(!is.character(threshold_final_color) || 
     length(threshold_final_color) != 1) {
    stop(
      "Color for final threshold must be a character vector of length 1",
      call. = FALSE
    )
  }
  
  # Name for dat
  name_for_dat <- paste0("`", deparse(substitute(dat)), "`")
  
  # Check for required cols
  if(any(!c("threshold", "color") %in% names(dat)) || !is.data.frame(dat)) {
    stop(
      name_for_dat, 
      " must be a data frame with columns `threshold` and `color`",
      call. = FALSE
    )
  }
  
  # Check for maximum number of rows
  if(nrow(dat) == 0) return(NULL)
  if(nrow(dat) > 3) stop(name_for_dat, " must have 3 or fewer rows", call. = FALSE)
  
  # Make sure it's a tibble
  dat <- dplyr::as_tibble(dat)
  
  # If `use` isn't part of `dat`, set it to TRUE across the board
  if(!"use" %in% names(dat)) dat <- dat %>% dplyr::mutate(use = TRUE)
  
  # Mini fx to add empty row to permit standardized processing of <= 3 rows
  # of threshold data
  add_empty_row <- function(dat) {
    dat %>% 
      dplyr::add_row(
        use = FALSE,
        threshold = NA,
        color = NA
      )
  }
  
  if(nrow(dat) == 1) {
    dat <- dat %>% add_empty_row() %>% add_empty_row()
  } else if(nrow(dat) == 2) {
    dat <- dat %>% add_empty_row() 
  }
  
  dat <- dat %>% 
    dplyr::mutate(
      # `risk_group` simply conveys the order in which the groups appear
      # in the df, not their order in terms of magnitude of threshold
      risk_group = c("first", "second", "third"),
      threshold_pct = threshold * 100,
      repeated = c(
        # The first value cannot be repeated by definition
        FALSE, 
        # The second value is repeated if it's the same as the first
        # use `%in%` to force FALSE if `NA` is present on either side (and not both)
        dat[["threshold"]][[2]] %in% dat[["threshold"]][[1]],
        # The third value is repeated if it's the same as the first or second
        dat[["threshold"]][[3]] %in% 
          c(dat[["threshold"]][[1]], dat[["threshold"]][[2]])
      )
    ) %>% 
    dplyr::filter(!is.na(threshold) & 
                    !repeated & 
                    threshold >= 0.001 & 
                    threshold <= 0.999 & 
                    use == TRUE) %>% 
    dplyr::arrange(threshold)
  
  if(nrow(dat) == 0) return(NULL)
  
  dat <- dat %>%
    dplyr::add_row(
      risk_group = "rest",
      use = TRUE,
      # The functional threshold for "rest" is 1, as it's everything >= the
      # highest specified threshold (up to 100% == 1), but `threshold_pct` will
      # be used for display purposes, so it's set to max(0.1, dat$threshold_pct)
      threshold_pct = max(0.1, dat$threshold_pct),
      threshold = 1,
      repeated = FALSE,
      color = threshold_final_color
    ) %>% 
    dplyr::mutate(n = dplyr::row_number())
  
  n_rows <- nrow(dat)
  
  dat <- dat %>% dplyr::mutate(
    threshold_pct_with_sym = paste0(threshold_pct, "%"),
    threshold_pct_with_sym_and_ineq = dplyr::case_when(
      n < n_rows ~ paste0("< ", threshold_pct_with_sym),
      n == n_rows ~ paste0(threshold_pct_with_sym, " or more")
    ),
    threshold_pct_with_sym_and_punc = dplyr::case_when(
      # For first item, just report the value
      n == 1 ~ threshold_pct_with_sym,
      # For the final item, don't report anything, because this
      # will already be reported for the interceding item, given the final
      # item is defined by the highest user-specified threshold, and this
      # variable doesn't include any inequality to make it distinct (i.e.,
      # it would be redundant to report it)
      n == n_rows ~ "",
      # Now, handle intermediate items
      n == 2 & n_rows == 3 ~ paste0(" and ", threshold_pct_with_sym),
      n == 2 & n_rows == 4 ~ paste0(", ", threshold_pct_with_sym),
      n == 3 ~ paste0(", and ", threshold_pct_with_sym)
    ),
    threshold_pct_with_sym_ineq_and_punc = dplyr::case_when(
      # Completely different (and simpler) handling here because incorporation
      # of inequality makes each item distinct
      n == 1 ~ threshold_pct_with_sym_and_ineq,
      n == n_rows & n == 2 ~ paste0(" and ", threshold_pct_with_sym_and_ineq),
      n == n_rows & n > 2 ~ paste0(", and ", threshold_pct_with_sym_and_ineq),
      .default = paste0(", ", threshold_pct_with_sym_and_ineq)
    )
  )
  
  class(dat) <- c("prepped_threshold_dat", class(dat))
  
  dat
}

make_dashed_line_text <- function(n_valid_thresholds, 
                                  threshold_labels_with_punc) {
  paste0(
    "The dashed line", ifelse(n_valid_thresholds > 2, "s are", " is"), 
    " plotted at ",
    paste0(threshold_labels_with_punc, collapse = ""),
    "."
  )
}

# This is a replica of `base::unsplit()` aside from removing the portion of
# the function that assigns rownames
unsplit_custom <- function(value, f, drop = FALSE) {
  len <- length(if (is.list(f)) f[[1L]] else f)
  if (is.data.frame(value[[1L]])) {
    x <- value[[1L]][rep(NA_integer_, len), , drop = FALSE]
  } else {
    x <- value[[1L]][rep(NA_integer_, len)]
  }
  split(x, f, drop = drop) <- value
  x
}

# `View()`, `dplyr::glimpse()`, etc. compatibility checking ----

# These functions detect whether a data frame containing ggplot objects
# would fail when passed to functions like `View()` or `dplyr::glimpse()`. 
# The failure is due to ggplot2 4.0.0+ converting S3 components to S7 components, 
# which (at the time of writing this code) lack `format()` methods.
# See: 
# https://github.com/tidyverse/ggplot2/issues/6732 
# and
# https://github.com/tidyverse/ggplot2/issues/6526

# Warn user about View/glimpse compatibility issues
#
# If the returned data.frame would fail when passed to `View()` or
# `dplyr::glimpse()`, issues a console message explaining the issue
warn_about_formatting_issues <- function(res) {

  has_issue <- tryCatch(
    {
      format(res)
      FALSE
    },
    error = function(cnd) TRUE
  )
  
  if(has_issue) {
    
    msg <- paste0(
      "\n",
      "Warning: The returned data frame contains ggplot objects, which may cause ",
      "errors when using `View()` or `dplyr::glimpse()` in certain IDEs.",
      "\n\n",
      "This is a known issue with S7, with resultant effect on {ggplot2} 4.0.0+ ",
      "due to the conversion of S3 components to S7 components.",
      "\n\n",
      "See, for example: ",
      "\n",
      "https://github.com/tidyverse/ggplot2/issues/6732",
      "\n",
      "https://github.com/tidyverse/ggplot2/issues/6526",
      "\n\n",
      "The good news: The underlying data integrity is unaffected.",
      "\n\n",
      "Additionally, you can still:",
      "\n",
      "- Access columns directly (e.g., `res$plot`, `res[[\"plot\"]]`)",
      "\n",
      "- Use `str(res)` or `summary(res)` to inspect the data",
      "\n",
      "- View results via a direct call to `res`, or via `print(res)`, `head(res)`, etc."
    )
    
    # Attach attributes for programmatic access
    attr(res, "ggplot2_issue_s7_formatting") <- TRUE
    attr(res, "ggplot2_issue_ref") <- 
      c(
        "https://github.com/tidyverse/ggplot2/issues/6732",
        "https://github.com/tidyverse/ggplot2/issues/6526"
      )
    attr(res, "ggplot2_issue_message") <- msg
    
    message(msg)
  }
  
  invisible(res)
}
