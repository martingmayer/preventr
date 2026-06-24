# Plot test helpers
expect_same_plot <- vdiffr::expect_doppelganger
wrap_plots <- patchwork::wrap_plots

# Dat for testing ----
res_plot_test <- estimate_risk_partial(quiet = TRUE)
res_plot_test_60 <- estimate_risk_partial(age = 60, quiet = TRUE)
res_plot_test_with_pce_both <- est_risk_partial(
  model = list(other_models = "pce_both", race_eth = "B"),
  quiet = TRUE
)
res_plot_test_with_pce_orig <- est_risk_partial(
  model = list(other_models = "pce_orig", race_eth = "W"),
  quiet = TRUE
)
res_plot_test_with_pce_rev <- est_risk_partial(
  model = list(other_models = "pce_rev", race_eth = "O"),
  quiet = TRUE
)

color_dat <- data.frame(
  threshold = c(0.075, 0.2),
  color = c("#228B22", "darkblue") # "forestgreen", "darkblue"
)

color_dat_v2 <- rbind(
  color_dat,
  # Note threshold being added is between the two existing thresholds,
  # which also tests that the thresholds are sorted properly
  data.frame(threshold = 0.12, color = "purple")
)

# Error text ----
must_be_true_or_false <- function(var_name_as_str) {
  paste0("`", var_name_as_str, "` must be `TRUE` or `FALSE`")
}

annotation_error_text <- paste0(
  "`annotation` must be \"all\", \"none\", or one or more of ",
  "\"title\", \"subtitle\", and \"caption\""
)
line_error_text <- must_be_true_or_false("lines")
line_text_error_text <- must_be_true_or_false("line_text")
legend_error_text <- must_be_true_or_false("legend")

# Test invalid input / error handling ----
test_that("Invalid risk_dat input types error appropriately", {
  expect_error(
    plot_risk_no_add_prog("not_a_data_frame"),
    "`risk_dat` must be a data frame or a list of data frames"
  )
  
  expect_error(
    plot_risk_no_add_prog(123),
    "`risk_dat` must be a data frame or a list of data frames"
  )
  
  expect_error(
    plot_risk_no_add_prog(list("string_element", "another_string")),
    "`risk_dat` must be a data frame or a list of data frames"
  )
})

test_that("Invalid base_size gracefully defaults with message", {
  
  invalid_base_size_msg <- "`base_size` must be a single, finite, positive number; using default of 12"
  
  expect_message(
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, base_size = "not_a_number"),
    invalid_base_size_msg
  )
  
  expect_message(
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, base_size = NA),
    invalid_base_size_msg
  )
})

test_that("Empty or all-NA risk estimates produce placeholder plot", {
  empty_risk_dat <- data.frame(
    total_cvd = NA_real_,
    ascvd = NA_real_,
    heart_failure = NA_real_,
    chd = NA_real_,
    stroke = NA_real_,
    model = "base",
    over_years = 10
  )
  
  result <- plot_risk_no_add_prog(empty_risk_dat)
  
  expect_true(ggplot2::is_ggplot(result))
  # Check that the placeholder message appears in the title
  expect_true(
    any(grepl("No valid risk estimates", result$labels$title))
  )
})

test_that("Invalid outcomes argument errors appropriately", {
  
  invalid_outcomes_msg <- "valid input for `outcomes` is one or more of"
  
  expect_error(
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, outcomes = c()),
    invalid_outcomes_msg
  )
  
  expect_error(
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, outcomes = NULL),
    invalid_outcomes_msg
  )
  
  expect_error(
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, outcomes = 123),
    invalid_outcomes_msg
  )
})

test_that("preventr_id edge cases handled correctly", {
  # Single unique preventr_id should not error
  risk_dat_single_id <- res_plot_test$risk_est_10yr %>%
    dplyr::mutate(preventr_id = 1)
  
  expect_true(
    ggplot2::is_ggplot(plot_risk_no_add_prog(risk_dat_single_id))
  )
  
  # All NA preventr_id should error (treated as multiple people without id)
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  risk_dat_na_id <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = NA_integer_)
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_na_id),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Missing preventr_id column with multi-person data errors appropriately", {
  # Create data that appear to be from multiple people (>4 rows), but no `preventr_id` 
  # column to differentiate them
  risk_dat_no_id_multiple <- res_plot_test$risk_est_10yr %>%
    dplyr::bind_rows(
      res_plot_test$risk_est_10yr,
      res_plot_test$risk_est_10yr
    )
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_no_id_multiple),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Non-numeric preventr_id with multi-person data errors appropriately", {
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  
  risk_dat_char_id <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = c("person_1", "person_2"))
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_char_id),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Non-integer numeric preventr_id with multi-person data errors appropriately", {
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  
  risk_dat_decimal_id <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = c(1.5, 2.3))
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_decimal_id),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Mixed NA and non-NA preventr_id with multi-person data errors appropriately", {
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  
  risk_dat_mixed_na_id <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = c(1L, NA_integer_))
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_mixed_na_id),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Multiple distinct valid preventr_id values handled correctly", {
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  
  risk_dat_multiple_valid_ids <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = c(1L, 2L))
  
  result <- plot_risk_no_add_prog(risk_dat_multiple_valid_ids)
  
  # Should return a list of plots when multiple people with valid IDs
  expect_true(is.list(result))
})

test_that("Single-row data frame succeeds regardless of preventr_id validity", {
  # Single row with no preventr_id should work (only one person)
  risk_dat_single_no_id <- res_plot_test$risk_est_10yr %>%
    dplyr::slice(1)
  
  expect_true(
    ggplot2::is_ggplot(plot_risk_no_add_prog(risk_dat_single_no_id))
  )
  
  # Single row with invalid preventr_id type should still work (only one person)
  risk_dat_single_invalid_id <- res_plot_test$risk_est_10yr %>%
    dplyr::slice(1) %>%
    dplyr::mutate(preventr_id = "invalid_string")
  
  expect_true(
    ggplot2::is_ggplot(plot_risk_no_add_prog(risk_dat_single_invalid_id))
  )
})

test_that("Excess outcome values trigger multi-person detection", {
  # Create a data frame with multiple outcome values per person (>2 for 10-year)
  risk_dat_excess_outcomes <- res_plot_test$risk_est_10yr %>%
    dplyr::slice(c(1, 1, 1)) %>%  # Repeat same row 3 times
    dplyr::mutate(
      total_cvd = c(0.15, 0.16, 0.17),
      preventr_id = NA_integer_  # No valid ID to differentiate
    )
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_excess_outcomes),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Valid integer preventr_id with edge values", {
  # Test with 0 and negative integers (should error)
  risk_dat_edit <- res_plot_test$risk_est_10yr
  risk_dat_edit[c("total_cvd", "ascvd", "heart_failure", "chd", "stroke")] <- 
    list(0.185, 0.111, 0.05, 0.08, 0.06)
  
  risk_dat_edge_int_ids <- res_plot_test$risk_est_10yr %>% 
    dplyr::bind_rows(risk_dat_edit) %>%
    dplyr::mutate(preventr_id = c(0L, -1L))
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_edge_int_ids),
    "no valid `preventr_id` column is present to differentiate them"
  )
})

test_that("Missing over_years column produces expected error", {
  risk_dat_no_over_years <- res_plot_test$risk_est_10yr %>%
    dplyr::select(-over_years)
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_no_over_years),
    "which includes having the column `over_years`"
  )
})

test_that("Inappropriate list of data frames produces expected error", {

  error_msg <- paste0(
    "If `risk_dat` is a list of data frames, it must be consistent ",
    "with the output of `estimate_risk"
  )

  # Failure b/c too many rows
  list_of_df <- list(
    risk_est_10yr = 
      est_risk(
        use_dat = make_dat(4, add_time_and_model = FALSE), 
        time = 10
      ) |> 
        dplyr::select(-preventr_id),
    risk_est_30yr = 
      est_risk(
        use_dat = make_dat(4, add_time_and_model = FALSE), 
        time = 30
      ) |> 
        dplyr::select(-preventr_id)
  )

  expect_error(
    plot_risk_no_add_prog(list_of_df),
    error_msg
  )

  # Failure b/c col `preventr_id` is present
  list_of_df <- list(
    risk_est_10yr = 
      est_risk(
        use_dat = make_dat(1, add_time_and_model = FALSE), 
        time = 10
      ),
    risk_est_30yr = 
      est_risk(
        use_dat = make_dat(1, add_time_and_model = FALSE), 
        time = 30
      )
  )

  expect_error(
    plot_risk_no_add_prog(list_of_df),
    error_msg
  )

  # Failure b/c list item names are wrong
  list_of_df <- list(
    foo = 
      est_risk(
        use_dat = make_dat(1, add_time_and_model = FALSE), 
        time = 10
      ),
    bar = 
      est_risk(
        use_dat = make_dat(1, add_time_and_model = FALSE), 
        time = 30
      )
  )

  expect_error(
    plot_risk_no_add_prog(list_of_df),
    error_msg
  )
})

test_that("Missing model column produces expected error", {
  risk_dat_no_model <- res_plot_test$risk_est_10yr %>%
    dplyr::select(-model)
  
  expect_error(
    plot_risk_no_add_prog(risk_dat_no_model),
    "which includes having the column `model`"
  )
})

test_that("Error when annotation is not valid, character", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, annotation = "potato"),
    annotation_error_text
  )
})

test_that("Error when annotation is not valid, numeric", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, annotation = 1),
    annotation_error_text
  )
})

test_that("Error when annotation is not valid, data.frame", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, annotation = data.frame(a = 1, b = "o")),
    annotation_error_text
  )
})

test_that("Error when annotation is not valid, NA", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, annotation = NA),
    annotation_error_text
  )
})

test_that("Error when lines is not valid, character", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      lines = "potato"
    ),
    line_error_text
  )
})

test_that("Error when lines is not valid, numeric", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      lines = 1
    ),
    line_error_text
  )
})

test_that("Error when lines is not valid, data.frame", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      lines = data.frame(a = 1, b = "o")
    ),
    line_error_text
  )
})

test_that("Error when lines is not valid, NA", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      lines = NA
    ),
    line_error_text
  )
})

test_that("Error when line_text is not valid, character", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      line_text = "potato"
    ),
    line_text_error_text
  )
})

test_that("Error when line_text is not valid, numeric", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      line_text = 1
    ),
    line_text_error_text
  )
})

test_that("Error when line_text is not valid, data.frame", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test,
      color_scheme = "categories",
      color_dat = color_dat,
      line_text = data.frame(a = 1, b = "o")
    ),
    line_text_error_text
  )
})

test_that("Error when line_text is not valid, NA", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test,
      color_scheme = "categories",
      color_dat = color_dat,
      line_text = NA
    ),
    line_text_error_text
  )
})

test_that("Error when legend is not valid, character", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test,
      color_scheme = "categories",
      color_dat = color_dat,
      legend = "potato"
    ),
    legend_error_text
  )
})

test_that("Error when legend is not valid, numeric", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test,
      color_scheme = "categories",
      color_dat = color_dat,
      legend = 1
    ),
    legend_error_text
  )
})

test_that("Error when legend is not valid, data.frame", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test,
      color_scheme = "categories",
      color_dat = color_dat,
      legend = data.frame(a = 1, b = "o")
    ),
    legend_error_text
  )
})

test_that("Error when legend is not valid, NA", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = color_dat, 
      legend = NA
    ),
    legend_error_text
  )
})

test_that("Error when color_dat is invalid, color_scheme is single", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, color_scheme = "single", color_dat = color_dat),
    paste(
      "`color_dat` must be provided as a character vector of length 1 when ",
      "`color_scheme` is \"single\"",
      sep = "\n"
    )
  )
})

test_that("Error when color_dat is invalid, color_scheme is categories", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = "potato"),
    paste(
      "`color_dat` must be provided as a data frame when",
      "`color_scheme` is \"categories\"",
      sep = "\n"
    )
  )
})

test_that("Error when color_dat is invalid, color_scheme is categories, round 2", {
  expect_error(
    plot_risk_no_add_prog(
      res_plot_test, 
      color_scheme = "categories", 
      color_dat = data.frame(a = 1, b = "o")
    ),
    "must be a data frame with columns `threshold` and `color`"
  )
})

test_that("Error when color_scheme is not valid", {
  expect_error(
    plot_risk_no_add_prog(res_plot_test, color_scheme = "potato"),
    "`color_scheme` must be one of \"single\" or \"categories\""
  )
})

# Test plotting with valid input, PREVENT only ----
test_that("Basic plotting works", {
  expect_same_plot(
    "10-year results", 
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr)
  )
  expect_same_plot(
    "30-year results", 
    plot_risk_no_add_prog(res_plot_test$risk_est_30yr)
  )
})

test_that("Removing annotation works", {
  expect_same_plot(
    "10-year results, no annotation", 
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, annotation = "none")
  )
  expect_same_plot(
    "30-year results, no annotation", 
    plot_risk_no_add_prog(res_plot_test$risk_est_30yr, annotation = "none")
  )
})

# Note use of `res_plot_test_60` for these test, because need to have warning
# about estimating 30-year risk in people >59 yo
test_that("Removing title works", {
  expect_same_plot(
    "10-year results, no title", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("subtitle", "caption"))
  )
  expect_same_plot(
    "30-year results, no title", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("subtitle", "caption"))
  )
})

test_that("Removing subtitle works", {
  expect_same_plot(
    "10-year results, no subtitle", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("title", "caption"))
  )
  expect_same_plot(
    "30-year results, no subtitle", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("title", "caption"))
  )
})

test_that("Removing caption works", {
  expect_same_plot(
    "10-year results, no caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("title", "subtitle"))
  )
  expect_same_plot(
    "30-year results, no caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("title", "subtitle"))
  )
})

test_that("Removing title and subtitle works", {
  expect_same_plot(
    "10-year results, no title or subtitle", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("caption"))
  )
  expect_same_plot(
    "30-year results, no title or subtitle", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("caption"))
  )
})

test_that("Removing title and caption works", {
  expect_same_plot(
    "10-year results, no title or caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("subtitle"))
  )
  expect_same_plot(
    "30-year results, no title or caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("subtitle"))
  )
})

test_that("Removing subtitle and caption works", {
  expect_same_plot(
    "10-year results, no subtitle or caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_10yr, annotation = c("title"))
  )
  expect_same_plot(
    "30-year results, no subtitle or caption", 
    plot_risk_no_add_prog(res_plot_test_60$risk_est_30yr, annotation = c("title"))
  )
})

test_that("Changing single color works", {
  expect_same_plot(
    "10-year results, single color", 
    plot_risk_no_add_prog(res_plot_test$risk_est_10yr, color_scheme = "single", color_dat = "forestgreen")
  )
  expect_same_plot(
    "30-year results, single color", 
    plot_risk_no_add_prog(res_plot_test$risk_est_30yr, color_scheme = "single", color_dat = "#A020F0") # "purple"
  )
})

test_that("Color categories works", {
  expect_same_plot(
    "Color categories, wrapped plot",
    wrap_plots(
      plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat)
    )
  )
})

test_that("Color categories works, min thresholds", {
  expect_same_plot(
    "Color categories, wrapped plot, min thresholds",
    wrap_plots(
      plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat[1, ])
    )
  )
})

test_that("Color categories works, max thresholds", {
  expect_same_plot(
    "Color categories, wrapped plot, max thresholds",
    wrap_plots(
      plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat_v2)
    )
  )
})

test_that("color_for_last_group works with various color formats", {
  color_dat_v3 <- data.frame(
    threshold = c(0.075, 0.20),
    color = c("#00A65A", "#FF8C00")
  )
  
  # Colors for final group
  expect_same_plot(
    "Color categories, wrapped plot, final color as hex",
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat,
        color_for_last_group = "#9933FF"
      )
    )
  )
  
  expect_same_plot(
    "Color categories, wrapped plot, final color as word",
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat,
        color_for_last_group = "gold"
      )
    )
  )
})

test_that("Remove legend ignored, color_scheme is single", {
  expect_same_plot(
    "No legend, color scheme single", 
    wrap_plots(plot_risk_no_add_prog(res_plot_test, legend = FALSE))
  )
})


test_that("Remove legend, color_scheme categories", {
  expect_same_plot(
    "No legend, color scheme categories", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat, 
        legend = FALSE
      )
    )
  )
})

test_that("Remove line text, color_scheme categories", {
  expect_same_plot(
    "No line text, color scheme categories", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat, 
        line_text = FALSE
      )
    )
  )
})

test_that("Remove lines, color_scheme is categories", {
  expect_same_plot(
    "No lines, color scheme categories", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat, 
        lines = FALSE
      )
    )
  )
})

test_that("Line text argument has no effect if lines is FALSE", {
  expect_same_plot(
    "Line text TRUE when lines is FALSE", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat, 
        lines = FALSE, 
        line_text = TRUE
      )
    )
  )
})

test_that("Removing all adornments from plot works", {
  expect_same_plot(
    "No adornments, color scheme is categories", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat, 
        annotation = "none",
        lines = FALSE, 
        line_text = FALSE, 
        legend = FALSE
      )
    )
  )
})

test_that("Changing color for final group works", {
  expect_same_plot(
    "Change final group color, color scheme categories", 
    wrap_plots(
      plot_risk_no_add_prog(
        res_plot_test, 
        color_scheme = "categories", 
        color_dat = color_dat,
        color_for_last_group = "purple"
      )
    )
  )
})

test_that("Changing base size works", {
  expect_same_plot(
    "Changing base size, color scheme is single", 
    wrap_plots(plot_risk_no_add_prog(res_plot_test, base_size = 18))
  )
})

test_that("Selecting outcomes works, valid input", {
  expect_same_plot(
    "Changing outcomes works, valid input",
    plot_risk_no_add_prog(res_plot_test, outcomes = c("ascvd", "total_cvd"))
  )
  
  expect_same_plot(
    "Changing outcomes works, valid input with all",
    plot_risk_no_add_prog(res_plot_test, outcomes = c("potato", "total_cvd", "all"))
  )
  
  expect_error(
    plot_risk_no_add_prog(res_plot_test, outcomes = c("potato", "total_cvd"))
  )
})

# Test plotting with valid input, PREVENT + PCEs ----
for(pce_version in c("both", "orig", "rev")) {
  
  res_plot_test <- switch(
    pce_version,
    both = res_plot_test_with_pce_both,
    orig = res_plot_test_with_pce_orig,
    rev = res_plot_test_with_pce_rev
  )
  
  test_that(paste("Basic plotting works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("10-year results", pce_version, sep = "_"),
      plot_risk_no_add_prog(res_plot_test$risk_est_10yr)
    )
    expect_same_plot(
      paste("30-year results", pce_version, sep = "_"),
      plot_risk_no_add_prog(res_plot_test$risk_est_30yr)
    )
  })
  
  test_that(paste("Removing annotation works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("10-year results, no annotation", pce_version, sep = "_"),
      plot_risk_no_add_prog(res_plot_test$risk_est_10yr, annotation = "none")
    )
    expect_same_plot(
      paste("30-year results, no annotation", pce_version, sep = "_"),
      plot_risk_no_add_prog(res_plot_test$risk_est_30yr, annotation = "none")
    )
  })
  
  test_that(paste("Changing single color works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("10-year results, single color", pce_version, sep = "_"),
      plot_risk_no_add_prog(res_plot_test$risk_est_10yr, color_scheme = "single", color_dat = "forestgreen")
    )
    expect_same_plot(
      paste("30-year results, single color", pce_version, sep = "_"), 
      plot_risk_no_add_prog(res_plot_test$risk_est_30yr, color_scheme = "single", color_dat = "purple")
    )
  })
  
  test_that(paste("Color categories works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Color categories, wrapped plot", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat)
      )
    )
  })
  
  test_that(paste("Color categories works, min thresholds", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Color categories, wrapped plot, min thresholds", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat[1, ])
      )
    )
  })
  
  test_that(paste("Color categories works, max thresholds", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Color categories, wrapped plot, max thresholds", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(res_plot_test, color_scheme = "categories", color_dat = color_dat_v2)
      )
    )
  })
  
  test_that(paste("Remove legend ignored, color_scheme is single", pce_version, sep = "_"), {
    expect_same_plot(
      paste("No legend, color scheme single", pce_version, sep = "_"),
      wrap_plots(plot_risk_no_add_prog(res_plot_test, legend = FALSE))
    )
  })
  
  
  test_that(paste("Remove legend, color_scheme categories", pce_version, sep = "_"), {
    expect_same_plot(
      paste("No legend, color scheme categories", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat, 
          legend = FALSE
        )
      )
    )
  })
  
  test_that(paste("Remove line text, color_scheme categories", pce_version, sep = "_"), {
    expect_same_plot(
      paste("No line text, color scheme categories", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat, 
          line_text = FALSE
        )
      )
    )
  })
  
  test_that(paste("Remove lines, color_scheme is categories", pce_version, sep = "_"), {
    expect_same_plot(
      paste("No lines, color scheme categories", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat, 
          lines = FALSE
        )
      )
    )
  })
  
  test_that(paste("Line text argument has no effect if lines is FALSE", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Line text TRUE when lines is FALSE", pce_version, sep = "_"), 
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat, 
          lines = FALSE, 
          line_text = TRUE
        )
      )
    )
  })
  
  test_that(paste("Removing all adornments from plot works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("No adornments, color scheme is categories", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat, 
          annotation = "none",
          lines = FALSE, 
          line_text = FALSE, 
          legend = FALSE
        )
      )
    )
  })
  
  test_that(paste("Changing color for final group works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Change final group color, color scheme categories", pce_version, sep = "_"),
      wrap_plots(
        plot_risk_no_add_prog(
          res_plot_test, 
          color_scheme = "categories", 
          color_dat = color_dat,
          color_for_last_group = "purple"
        )
      )
    )
  })
  
  test_that(paste("Changing base size works", pce_version, sep = "_"), {
    expect_same_plot(
      paste("Changing base size, color scheme is single", pce_version, sep = "_"),
      wrap_plots(plot_risk_no_add_prog(res_plot_test, base_size = 18))
    )
  })
}

# Test data frame functionality and related args ----
test_that("argument `collapse` works as intended", {
  
  # No impact if `add_to_dat` is `FALSE`, so should return unaffected plots
  expect_equal(
    plot_risk_no_add_prog(res_plot_test_with_pce_both$risk_est_10yr, collapse = TRUE),
    plot_risk_no_add_prog(res_plot_test_with_pce_both$risk_est_10yr, collapse = FALSE)
  )
  
  expect_true(
    is_ggplot(plot_risk_no_add_prog(res_plot_test_with_pce_both$risk_est_10yr, collapse = TRUE))
  )
  
  # No impact if `risk_dat` is a data frame
  expect_equal(
    plot_risk_no_prog(res_plot_test_with_pce_both$risk_est_10yr, add_to_dat = TRUE, collapse = TRUE),
    plot_risk_no_prog(res_plot_test_with_pce_both$risk_est_10yr, add_to_dat = TRUE, collapse = FALSE)
  )
  
  
  # Test expected impact if `risk_dat` is a list, varying values for `add_to_dat`
  # Use `expect_true(all.equal())` for this and the following test given false +s
  # from `expect_equal()` due to names differences that are irrelevant here in the
  # parent env for the ggplots
  expect_true(
    all.equal(
      plot_risk_no_prog(res_plot_test_with_pce_both, add_to_dat = TRUE, collapse = TRUE),
      plot_risk_no_prog(res_plot_test_with_pce_both %>% dplyr::bind_rows(), add_to_dat = TRUE, collapse = FALSE)
    )
  )
  
  # Test equality of plot return when `risk_dat` is a list vs. a data frame while
  # varying values for `collapse`, but leaving `add_to_dat` as `FALSE` (and thus
  # `collapse` should have no impact).
  # 
  # However, given the input for one is a list and for the other, a data frame,
  # the plot yield will be different. A list will return a list of ggplots
  # organized by time horizon (in the test below, both 10- and 30-year). A data
  # frame will return one plot for each row of the data frame it receives. This
  # has distinct implications when testing, for example, the PCE models in
  # addition to the PREVENT model, as a single 10-year time horizon that gives
  # estimates for a given PREVENT model and both PCE models (original and revised)
  # will yield 3 plots if the input is a data frame (because there will be 3
  # rows: one for the PREVENT model and one for each of the PCE models), but the
  # same input as a list will yield one plot for the 10-year time horizon.
  # However, all these plots should be the same. The test below tests exactly this
  # expectation, but will use `all.equal()`. `identical()` and the `expect_*()` 
  # counterparts of `all.equal()` or `idential()`, because they also test things
  # like the parent environment and other aspects of the ggplot that are irrelevant
  # for this test 
  
  expect_true({
    
    plots_list <- plot_risk_no_prog(
      res_plot_test_with_pce_both, 
      add_to_dat = FALSE, 
      collapse = TRUE
    )
    
    plots_df <- plot_risk_no_prog(
      res_plot_test_with_pce_both %>% dplyr::bind_rows(), 
      add_to_dat = FALSE, 
      collapse = FALSE
    )
    
    all(
      all.equal(
        plots_list$risk_est_10yr,
        plots_df[[1]]
      ),
      
      all.equal(
        plots_df[[1]],
        plots_df[[2]]
      ),
      
      all.equal(
        plots_df[[2]],
        plots_df[[3]]
      ),
      
      all.equal(
        plots_list$risk_est_30yr,
        plots_df[[4]]      
      )
    )
    
  })
})

test_that("argument `add_to_dat` works as intended", {
  
  # Note testing for `collapse` inherently tests the expected return of a ggplot
  # object if `add_to_dat` is `FALSE` via its test
  #   
  # expect_true(
  #   is_ggplot(plot_risk_no_add_prog(res_plot_test_with_pce_both$risk_est_10yr, collapse = TRUE))
  # )
  
  res_plot_test_with_plot_col_fx <- plot_risk_no_prog(res_plot_test_with_pce_both, add_to_dat = TRUE)
  
  expect_equal(
    res_plot_test_with_plot_col_fx$risk_est_10yr %>% dplyr::select(-plot),
    res_plot_test_with_pce_both$risk_est_10yr 
  )
  
  expect_equal(
    res_plot_test_with_plot_col_fx$risk_est_30yr %>% dplyr::select(-plot),
    res_plot_test_with_pce_both$risk_est_30yr 
  )
  
  expect_true(
    all(vapply(res_plot_test_with_plot_col_fx$risk_est_10yr$plot, is_ggplot, logical(1)))
  )
  
  expect_true(
    all(vapply(res_plot_test_with_plot_col_fx$risk_est_30yr$plot, is_ggplot, logical(1)))
  )
})

# This one's a bit beefy and relatively time-consuming, so will skip on CRAN
skip_on_cran()
test_that("use with a data frame works as intended", {
  
  load(test_path("_data/test_dat_with_valid_invalid.rda"))
  
  res_plot_test <- est_risk(use_dat = test_dat_with_valid_invalid, quiet = TRUE, progress = TRUE)
  
  res_plot_test_plot <- plot_risk(res_plot_test, progress = TRUE)
  
  expect_identical(
    res_plot_test, res_plot_test_plot %>% dplyr::select(-plot)
  )
  
  preventr_id_subset_for_viz_check <- c(1:10, 101:110, 201:210, 301:310, 401:410)
  
  for(id in unique(res_plot_test_plot$preventr_id)) {
    
    res_plot_test_plot_given_id <- 
      res_plot_test_plot %>% dplyr::filter(preventr_id == id)
    
    for(row in seq_len(nrow(res_plot_test_plot_given_id))) {
      expect_true(
        is_ggplot(res_plot_test_plot_given_id$plot[[row]])
      )
      
      plot_from_df_plot_col <- res_plot_test_plot_given_id$plot[[row]]
      plot_from_df_data <- plot_risk(
        res_plot_test_plot_given_id[row, ] %>% dplyr::select(-plot), 
        add_to_dat = FALSE,
        progress = FALSE
      )
      
      # Visual check
      if(id %in% preventr_id_subset_for_viz_check) {
        
        data_frame_input_works_name <- paste0(
          "Check for ID ", 
          id, 
          " at row ", 
          row, 
          " years"
        )
        
        expect_same_plot(
          paste0(data_frame_input_works_name, " from `plot` column"),
          plot_from_df_plot_col
        )
        
        expect_same_plot(
          paste0(data_frame_input_works_name, " from data frame input"),
          plot_from_df_data
        )
      }
      
      # "Innards" check
      # Test this way given overly sensitive nature of 
      # `expect_equal()` / `_identical()` when testing ggplots
      expect_true(all.equal(plot_from_df_plot_col, plot_from_df_data))
    }
  }
})