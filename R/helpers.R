# Calling this `helpers.R` instead of the more typical
# `utils.R` to facilitate easier use of pkgload::load_all()

# Ceci n'est pas une pipe
# (use %>% instead of |> just to keep R version dependency lower)
`%>%` <- dplyr::`%>%`

# {Basic helper fxs} ----
as_numeric_binary <- function(val) {
  stopifnot(isTRUE(val) || isFALSE(val) || val %in% c(0, 1))
  as.numeric(val)
}

convert_chol_to_mmol <- function(chol) {
  chol * 0.02586 
}

convert_chol_to_mg <- function(chol) {
  chol / 0.02586 
}

add_to_dat <- function(dat, res) {
  dplyr::left_join(
    dat, 
    res,
    by = "preventr_id",
    suffix = c("_input", "")
  )
}

# {Functions to determine vars when passing a data frame to `use_dat`} ----
determine_predictor_var <- function(var, eval = TRUE) {
  
  mini_cl <- bquote(
    # If the var is omitted from the call (hence !.(var) %in% names(cl) == TRUE)
    # 
    # (... note it might be tempting to do is.null(cl[[.(var)]]), but this
    # does not differentiate from omission from call and assignment of NULL to
    # the var in question)
    if(!.(var) %in% names(cl)) {
      
      # If the var is a valid col in `dat`
      if(.(var) %in% names(dat)) {
        # then just use the var as the col name from `dat`
        dat[[.(var)]][[x]]
      } else {
        # If it's not a valid col in `dat`, then ...
        # ... if it's one of the optional predictor vars, return NULL
        if(.(var) %in% c("hba1c", "zip", "uacr")) {
          NULL
        } else {
          # ... otherwise, return an error message for the user; what appears
          # below will essentially be appended to the boilerplate error message
          # handlers that start with "{var} entered as ", so appended the 
          # message below will complete the error message for this case
          as.symbol(
            paste0(
              "though it should be in the data frame passed to `use_dat`, ",
              "but no such column name exists in that data frame; ",
              "as such, no values were passed for ",
              "`", .(var), "`"
            )
          )
        }
      }
      
      # Otherwise, if the arg from the var is a valid col name ...
    } else if(isTRUE(as.character(cl[[.(var)]]) %in% names(dat))) {
      # ... then use the arg as the col name
      dat[[as.character(cl[[.(var)]])]][[x]]
      
      # Otherwise ...
    } else {
      # ... the following passes the contents as a symbol, which is deliberate
      # given how error handling will compile this with the boilerplate
      # messaging to inform the user of the problematic entry
      as.symbol(
        paste0(
          "the invalid column name ",
          "`", quotify(cl[[.(var)]]), "` ",
          "in conjunction with `use_dat = TRUE`; ",
          "as such, no values were passed for ",
          "`", .(var), "`"
        )
      )
    }
  )
  
  if(eval) eval(mini_cl, envir = parent.frame()) else mini_cl
}

determine_behavior_var <- function(var, eval = TRUE) {
  
  mini_cl <- bquote(
    if(!.(var) %in% names(cl) && .(var) %in% names(dat)) {
      dat[[.(var)]][[x]]
    } else {
      eval(as.symbol(.(var)))
    }
  )
  
  if(eval) eval(mini_cl, envir = parent.frame()) else mini_cl
}

# {Other checkers and helpers} ----
is_okay_type <- function(var_val) {
  isTRUE(
    !(length(var_val) > 1 || is.matrix(var_val) || is.language(var_val) ||
        is.function(var_val) || is.raw(var_val)) &&
      (is.numeric(var_val) || is.character(var_val) || is.logical(var_val) ||
         (length(var_val) == 1 && is.na(var_val)) || is.null(var_val))
  )
}

is_na_or_empty <- function(val) {
  if(length(val) > 1) {
    stop("`", deparse(substitute(val)), "`", " must be of length 1", call. = FALSE)
  }
  length(val) == 0 || is.null(val) || 
    is.na(val) || (is.character(val) && val == "")
}

is_between <- function(val, lower, upper, inclusive = TRUE) {
  stopifnot(isTRUE(inclusive) || isFALSE(inclusive))
  if(is_na_or_empty(val) || !is.numeric(val)) return(FALSE)
  if(!inclusive) return(val > lower && val < upper)
  val >= lower && val <= upper
}

na_or_empty_to_na <- function(val) {
  if(is_na_or_empty(val)) NA else val
}

percentify <- function(risk) {
  res <- vapply(
    risk, 
    function(x) {
      paste0(x * 100, if(is.na(x)) "" else "%")
    },
    character(1)
  )
  names(res) <- names(risk)
  res
}

quotify <- function(x) {
  if(length(x) == 0 || is.null(x)) {
    deparse(x)
  } else if(!is.atomic(x) || is.matrix(x) || length(x) > 1) {
    paste0(deparse(x), collapse = "")
  } else if(is.character(x)) {
    paste0("\"", x, "\"") 
  } else {
    x
  }
}

handle_model_suffixes <- function(var) {
  suffixes_to_remove <- "_prevent|_pce|_mesa"
  var_name <- unlist(strsplit(var, suffixes_to_remove))
  var_suffix <- gsub(paste0(var_name, "_"), "", var)
  var_suffix <- if(var_suffix == var) {
    "" 
  } else { 
    paste0(" for the ", toupper(var_suffix), " models")
  }
  list(name = var_name, suffix = var_suffix)
}

# Rounding halves up in R is perhaps best known from the StackOverflow 
# conversation about this that started in 2012 here:
# https://stackoverflow.com/questions/12688717/round-up-from-5/12688836#12688836
# Archived version here:
# https://web.archive.org/web/20231221222829/https://stackoverflow.com/questions/12688717/round-up-from-5/12688836#12688836
# This is an exact implementation of that other than changing variable names.
# These days, this function can also be found in, e.g., the `janitor` package
round_half_up <- function(val, digits) {
  pos_or_neg <- sign(val)
  res <- abs(val) * 10^digits
  res <- res + 0.5 + sqrt(.Machine$double.eps)
  res <- trunc(res)
  res <- res / 10^digits
  res * pos_or_neg
}

collapse_maybe <- function(res, collapse) {
  if(isTRUE(collapse)) dplyr::bind_rows(res) else res
}

cat_maybe <- function(x, quiet) if(!isTRUE(quiet)) cat(x)

# Writing as !isTRUE(quiet) instead of isFALSE(quiet) so that anything
# other than TRUE gets treated as FALSE
message_maybe <- function(x, quiet) if(!isTRUE(quiet)) message(x)

# Writing as !isTRUE(quiet) instead of isFALSE(quiet) so that anything
# other than TRUE gets treated as FALSE
warn_maybe <- function(x, quiet) if(!isTRUE(quiet)) warning(x, call. = FALSE, immediate. = TRUE)

# {Calculation of BMI and eGFR} ----

message_about_internal_fx_use <- function(custom_msg_component, quiet) {
  message_maybe(
    paste0(
      c(
        "Please note: This function was written primarily for internal package use ",
        "or as part of estimating risk with `estimate_risk()` or `est_risk()`.",
        "Fitness for more general use has not been tested exhaustively.",
        "For example, this function implements basic checks of input, but some of",
        "the input handling is delegated to other processes that are invoked when",
        "using these functions as aforementioned. To give a more concrete example, ",
        paste0(custom_msg_component, "."),
        "That said, the calculations have certainly been tested for accuracy, so ",
        "if you are confident you understand this caution and in the fidelity of ",
        "the input you passed to this function, you can proceed judiciously."
      ),
      collapse = "\n"
    ),
    quiet
  )
}

calculate_bmi <- function(weight, 
                          height, 
                          units = "nonmetric",
                          quiet = FALSE,
                          on_error_return_msg = FALSE) {
  
  if(
    (exists("bmi_requested", envir = parent.frame()) && 
     !isTRUE(parent.frame()$bmi_requested)) || 
    !exists("bmi_requested", envir = parent.frame())
  ) {
    message_about_internal_fx_use(
      "this function will not reject extreme values for height and weight",
      quiet
    )
  } 

  problems <- NULL
  # Note use of single & to allow for vectorized check,
  # b/c `isTRUE()` will still return FALSE if length > 1
  if(!isTRUE(is.numeric(weight) & weight > 0)) {
    problems <- c(problems, "`weight` to be a single number > 0")
    proceed <- FALSE
  } 
  
  if(!isTRUE(is.numeric(height) & height > 0)) {
    problems <- c(problems, "`height` to be a single number > 0")
    proceed <- FALSE
  }
  
  if(!isTRUE(units %in% c("metric", "nonmetric"))) {
    problems <- c(
      problems, 
      "`units` to be one of \"metric\" or \"nonmetric\""
    )
    proceed <- FALSE
  }
  
  if(exists("proceed") && !proceed) {
    
    problems_msg <- paste0(
      "BMI calculation requires ",
      paste0(problems, collapse = ", ")
    )
    
    message_maybe(problems_msg, quiet)
    
    if(on_error_return_msg) {
      return(problems_msg)
    } else {
      return(NA_real_)
    }
  }
  
  if(units == "metric") {
    res <- weight / ((height / 100) ^ 2)
  } else {
    res <- (weight / (height ^ 2)) * 703
  }
  
  round_half_up(res, 1)
}

calc_bmi <- calculate_bmi

calculate_ckd_epi <- function(cr, 
                              units = "mg/dL", 
                              age,
                              sex, 
                              quiet = FALSE,
                              on_error_return_msg = FALSE) {
  
  if(
    (exists("egfr_requested", envir = parent.frame()) && 
     !isTRUE(parent.frame()$egfr_requested)) || 
    !exists("egfr_requested", envir = parent.frame())
  ) {
    message_about_internal_fx_use(
      "this function will not reject extreme values for creatinine",
      quiet
    )
  } 
  
  problems <- NULL
  if(!isTRUE(is.numeric(cr) & cr > 0)) {
    problems <- c(problems, "`cr` to be a single number > 0")
    proceed <- FALSE
  }
  
  if(!isTRUE(is.numeric(age) & age >= 18 & age <= 100)) {
    problems <- c(
      problems, 
      "`age` to be a single number where 18 <= number <= 100"
    )
    proceed <- FALSE
  }
  
  if(!isTRUE(sex %in% c("female", "f", "male", "m"))) {
    problems <- c(problems, "`sex` to be \"female\" (or \"f\") or \"male\" (or \"m\")")
    proceed <- FALSE
  } else if(sex %in% c("female", "male")) {
    sex <- if(sex == "female") "f" else "m"
  }
  
  if(!isTRUE(units %in% c("mg/dL", "mg", "umol/L", "umol"))) {
    problems <- c(
      problems, 
      "`units` to be one of \"mg/dL\" (or \"mg\") or \"umol/L\" (or \"umol\")"
    )
    proceed <- FALSE
  }
  
  if(exists("proceed") && !proceed) {
    
    problems_msg <- paste0(
      "eGFR calculation requires ",
      paste0(problems, collapse = ", ")
    )
    
    message_maybe(problems_msg, quiet)
    
    if(on_error_return_msg) {
      return(problems_msg)
    } else {
      return(NA_real_)
    }
  }
  
  if(!grepl("mg", units)) cr <- cr / 88.4
  
  k <- if(sex == "f") 0.7 else 0.9
  u <- 142
  a1 <- if(sex == "f") -0.241 else -0.302
  a2 <- -1.2
  c <- 0.9938
  d <- if(sex == "f") 1.012 else 1
  
  round_half_up(u * min(cr/k, 1)^a1 * max(cr/k, 1)^a2 * c^age * d, 0)
}

calculate_egfr <- calc_egfr <- calc_ckd_epi <- calculate_ckd_epi

# {Checker fxs} ----
{
  # > Valid ranges for each numeric var or options for character var, alpha order ----
  valid <- list(
    age_prevent = c(lower = 30, upper = 79),
    age_pce = c(lower = 40, upper = 79),
    age_mesa = c(lower = 45, upper = 84),
    # Table 1, footnote re: excluding people based on BMI
    bmi = c(lower = 18.5, upper = 39.9),
    # No clear limits for CAC from MESA, but they limit upper bound to 9999
    cac = c(lower = 0, upper = 9999),
    chol_unit = c("mg/dL", "mmol/L"),
    chol_unit_expanded = c("mg/dL", "mg", "mmol/L", "mmol"),
    # For creatinine, really just want to check it is a number > 0, as
    # imposition of further restriction would be somewhat arbitrary given
    # valid input is ultimately determined by eGFR, not creatinine
    cr = c(lower = 0.1, upper = Inf),
    cr_unit = c("mg/dL", "umol/L"),
    cr_unit_expanded = c("mg/dL", "mg", "umol/L", "umol"),
    egfr = c(lower = 15, upper = 140),
    ft = c(lower = 0.1, upper = Inf),
    hba1c = c(lower = 4.5, upper = 15),
    hdl_c = list(
      `mg/dL` = c(lower = 20, upper = 100),
      `mmol/L` = c(lower = 0.52, upper = 2.59)
    ),
    # See rationale for creatinine re: why range is 0 to infinity here
    ht = c(lower = 0.1, upper = Inf),
    ht_wt_unit = c("metric", "nonmetric"),
    inches = c(lower = 0, upper = Inf),
    kg = c(lower = 0.1, upper = Inf),
    lb = c(lower = 0.1, upper = Inf),
    m = c(lower = 0.1, upper = Inf),
    model = c("base", "hba1c", "uacr", "sdi", "full"),
    other_models = c("pce_both", "pce_orig", "pce_rev"),
    race_eth_pce = c("B", "O", "W", "Black", "Other", "White"),
    race_eth_mesa = c("B", "C", "H", "W", "Black", "Chinese", "Hispanic", "White"),
    sbp = c(lower = 90, upper = 180),
    sex = c("female", "male"),
    sex_expanded = c("female", "f", "male", "m"),
    time = c("both", "10", "10yr", "30", "30yr"),
    total_c = list(
      `mg/dL` = c(lower = 130, upper = 320),
      `mmol/L` = c(lower = 3.36, upper = 8.28)
    ),
    uacr = c(lower = 0.1, upper = 25000),
    # See rationale for creatinine re: why range is 0 to infinity here
    wt = c(lower = 0.1, upper = Inf)
  )
  
  # > Numeric vars ----
  check_range <- function(var_name_as_chr, 
                          var_val, 
                          quiet = TRUE,
                          units = NULL, 
                          extra_text_after_var_name = NULL) {
    
    if(is.null(units) || is.na(units)) {
      lower <- valid[[var_name_as_chr]][["lower"]]
      upper <- valid[[var_name_as_chr]][["upper"]]
    } else {
      lower <- round_half_up(valid[[var_name_as_chr]][[units]][["lower"]], 2)
      upper <- round_half_up(valid[[var_name_as_chr]][[units]][["upper"]], 2)
    }
    
    pass <- is_okay_type(var_val) && is_between(var_val, lower, upper)
    if(quiet) return(pass)
    if(pass) {
      TRUE
    } else {
      make_error_text_range(
        var_name_as_chr, 
        var_val,
        units = units,
        extra_text_after_var_name = extra_text_after_var_name
      )
    }
  }
  
  make_error_text_range <- function(var_name_as_chr, 
                                    var_val, 
                                    units = NULL, 
                                    extra_text_after_var_name = NULL,
                                    ref = valid) {
    
    if(is_na_or_empty(units)) {
      lower <- ref[[var_name_as_chr]][["lower"]]
      upper <- ref[[var_name_as_chr]][["upper"]]
    } else {
      lower <- ref[[var_name_as_chr]][[units]][["lower"]]
      upper <- ref[[var_name_as_chr]][[units]][["upper"]]
    }
    
    var_details <- handle_model_suffixes(var_name_as_chr)
    
    paste0(
      "`", var_details[["name"]], "`",
      extra_text_after_var_name,
      " entered as ", quotify(var_val),
      ", but must be between ",
      lower,
      " and ",
      upper,
      var_details[["suffix"]]
    )
  }
  
  # Rest of numeric vars, alpha order
  is_valid_age <- function(age, model = "prevent", quiet = TRUE) {
    check_range(paste0("age_", model), age, quiet)
  }
  
  is_valid_bmi <- function(bmi, quiet = TRUE) {
    check_range("bmi", bmi, quiet)
  }
  
  is_valid_cac <- function(cac, quiet = TRUE) {
    check_range("cac", cac, quiet, extra_text_after_var_name = " within arg `model`")
  }
  
  is_valid_chol <- function(chol, 
                            units = c("mg/dL", "mmol/L"),
                            type = c("total_c", "hdl_c"),
                            expanded_units = FALSE,
                            quiet = TRUE) {
    
    stopifnot(!is_na_or_empty(type) && type %in% c("total_c", "hdl_c"))
    
    # Check if units are valid based on whether to use "strict"
    # or "expanded" units specification
    if(expanded_units) {
      valid_chol_unit <- is_valid_chol_unit_expanded(units, quiet)
    } else {
      valid_chol_unit <- is_valid_chol_unit(units, quiet)
    }
    
    if(!isTRUE(valid_chol_unit)) {
      if(quiet) {
        return(valid_chol_unit)
      } else {
        return(paste0(valid_chol_unit, " for `", type, "` to be valid"))
      }
    }
    
    # Convert "mg" to "mg/dL" and "mmol" to "mmol/L" if needed
    if(expanded_units && units %in% c("mg", "mmol")) {
      units <- if(units == "mg") "mg/dL" else "mmol/L"
    }
    
    check_range(type, chol, quiet, units)
  }
  
  is_valid_cr <- function(cr, quiet = TRUE) {
    check_range("cr", cr, quiet)
  }
  
  is_valid_egfr <- function(egfr, quiet = TRUE) {
    check_range("egfr", egfr, quiet)
  }
  
  is_valid_ft <- function(ft, quiet = TRUE) {
    check_range("ft", ft, quiet)
  }
  
  # For HbA1c, add arg `allow_empty`, as it isn't required, but default
  # to FALSE so the fx call has to "opt in" to permit it to be empty
  is_valid_hba1c <- function(hba1c, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(hba1c) && is_na_or_empty(hba1c)) return(TRUE)
    check_range("hba1c", hba1c, quiet)
  }
  
  is_valid_hdl_c <- function(chol, units, expanded_units = FALSE, quiet = TRUE) {
    is_valid_chol(chol, units, "hdl_c", expanded_units, quiet)
  }
  
  is_valid_ht <- function(ht, quiet = TRUE) {
    check_range("ht", ht, quiet)
  }
  
  is_valid_inches <- function(inches, quiet = TRUE) {
    check_range("inches", inches, quiet)
  }
  
  is_valid_kg <- function(kg, quiet = TRUE) {
    check_range("kg", kg, quiet)
  }
  
  is_valid_lb <- function(lb, quiet = TRUE) {
    check_range("lb", lb, quiet)
  }
  
  is_valid_m <- function(m, quiet = TRUE) {
    check_range("m", m, quiet)
  }
  
  is_valid_sbp <- function(sbp, quiet = TRUE) {
    check_range("sbp", sbp, quiet)
  }
  
  is_valid_total_c <- function(chol, units, expanded_units = FALSE, quiet = TRUE) {
    is_valid_chol(chol, units, "total_c", expanded_units, quiet)
  }
  
  # See `is_valid_hba1c()` for details re: arg `allow_empty`
  is_valid_uacr <- function(uacr, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(uacr) && is_na_or_empty(uacr)) return(TRUE)
    check_range("uacr", uacr, quiet)
  }
  
  is_valid_wt <- function(wt, quiet = TRUE) {
    check_range("wt", wt, quiet)
  }
  
  # > Character vars ----
  check_chr <- function(var_name_as_chr, 
                        var_val, 
                        opts, 
                        quiet = TRUE, 
                        extra_text_after_var_name = NULL) {
    pass <- is_okay_type(var_val) && !is_na_or_empty(var_val) && var_val %in% opts
    if(quiet) return(pass)
    if(pass) {
      TRUE 
    } else {
      make_error_text_opts(
        var_name_as_chr, 
        var_val, 
        opts, 
        extra_text_after_var_name = extra_text_after_var_name
      )
    }
  }
  
  # Note suffix of "opts", b/c this can be used for both chr and lgl vars
  # given they have a restricted set of options
  make_error_text_opts <- function(var_name_as_chr, 
                                   var_val,
                                   opts,
                                   extra_text_after_var_name = NULL) {
    
    lgl_opts <- length(opts) == 1 && opts %in% c("lgl", "logical")
    surrounding_marker <- if(lgl_opts) "" else "\""
    opts <- if(lgl_opts) list(TRUE, 1, FALSE, 0) else opts
    
    paste0(
      "`", var_name_as_chr, "`",
      extra_text_after_var_name,
      " entered as ", quotify(var_val),
      ", but must be one of ",
      paste0(surrounding_marker, opts, surrounding_marker, collapse = ", ")
    )
  }
  
  is_valid_chol_unit <- function(units, quiet = TRUE) {
    check_chr("chol_unit", units, valid[["chol_unit"]], quiet)
  }
  
  is_valid_chol_unit_expanded <- function(units, quiet = TRUE) {
    check_chr("chol_unit", units, valid[["chol_unit_expanded"]], quiet)
  }
  
  is_valid_cr_unit <- function(units, quiet = TRUE) {
    check_chr("cr_unit", units, valid[["cr_unit"]], quiet)
  }
  
  is_valid_cr_unit_expanded <- function(units, quiet = TRUE) {
    check_chr("cr_unit", units, valid[["cr_unit_expanded"]], quiet)
  }
  
  is_valid_ht_wt_unit <- function(units, quiet = TRUE) {
    check_chr("ht_wt_unit", units, valid[["ht_wt_unit"]], quiet)
  }
  
  is_valid_race_eth <- function(race_eth, model, quiet = TRUE) {
    check_chr(
      "race_eth", 
      standardize_race_eth(race_eth),
      c(
        valid[[paste0("race_eth_", model)]], 
        tolower(valid[[paste0("race_eth_", model)]])
      ), 
      quiet,
      extra_text_after_var_name = " within arg `model`"
    )
  }
  
  is_valid_sex <- function(sex, quiet = TRUE) {
    check_chr("sex", sex, valid[["sex"]], quiet)
  }
  
  is_valid_sex_expanded <- function(sex, quiet = TRUE) {
    check_chr("sex", sex, valid[["sex_expanded"]], quiet)
  }
  
  is_valid_model <- function(model, allow_empty = TRUE, quiet = TRUE) {
    if(allow_empty && is_okay_type(model) && is_na_or_empty(model)) return(TRUE)
    res <- check_chr(
      "model", 
      model, 
      valid[["model"]], 
      quiet
    )
    if(typeof(res) == "character") res <- paste0(res, ", or a list as specified in the documentation")
    res
  }
  
  is_valid_other_models <- function(other_models, 
                                    allow_empty = TRUE,
                                    quiet = TRUE) {
    if(allow_empty && is_okay_type(other_models) && is_na_or_empty(other_models)) return(TRUE)
    check_chr(
      "other_models", 
      other_models, 
      valid[["other_models"]], 
      quiet,
      extra_text_after_var_name = " within arg `model`"
    )
  }
  
  is_valid_time <- function(time, quiet = TRUE) {
    check_chr("time", time, valid[["time"]], quiet)
  }
  
  # > Logical vars ----
  # For `dm`, `statin`, `bp_tx`, `smoking`
  # Base `is.logical` returns TRUE for NA, which is not desirable here, and setup
  # here permits TRUE/FALSE or 0/1
  check_lgl <- function(var_name_as_chr, 
                        var_val, 
                        quiet = TRUE, 
                        extra_text_after_var_name = NULL) {
    pass <- 
      isTRUE(var_val) || isFALSE(var_val) || 
      (is_okay_type(var_val) && !is_na_or_empty(var_val) && var_val %in% c(0, 1))
    if(quiet) return(pass)
    if(pass) {
      TRUE 
    } else {
      make_error_text_opts(
        var_name_as_chr,
        var_val, 
        "lgl", 
        extra_text_after_var_name = extra_text_after_var_name
      )
    }
  }
  
  is_valid_bp_tx <- function(bp_tx, quiet = TRUE) {
    check_lgl("bp_tx", bp_tx, quiet)
  }
  
  is_valid_chol_tx <- function(chol_tx, quiet = TRUE) {
    check_lgl("chol_tx", chol_tx, quiet, extra_text_after_var_name = " within arg `model`")
  }
  
  is_valid_dm <- function(dm, quiet = TRUE) {
    check_lgl("dm", dm, quiet)
  }
  
  is_valid_fhx <- function(fhx, quiet = TRUE) {
    check_lgl("fhx", fhx, quiet, extra_text_after_var_name = " within arg `model`")
  }
  
  is_valid_smoking <- function(smoking, quiet = TRUE) {
    check_lgl("smoking", smoking, quiet)
  }
  
  is_valid_statin <- function(statin, quiet = TRUE) {
    check_lgl("statin", statin, quiet)
  }
  
  # > Zip ----
  get_sdi <- function(desired_zip, dat = sdi_decile_dat) {
    
    res <- dat %>% 
      dplyr::filter(zip == as.character(desired_zip)) %>% 
      dplyr::pull(sdi_decile)
    
    if(length(res) == 0) NA else res
  }
  
  # Defining it this way so it can be used across package
  sdi_not_available_message <- "SDI is not available for this zip code."
  
  is_zip_with_sdi_data <- function(zip, bypass_valid_check = FALSE, quiet = TRUE) {
    zip <- as.character(zip)
    valid_zip <- if(bypass_valid_check) TRUE else is_valid_zip(zip, quiet = TRUE)
    pass <- valid_zip && !is.na(get_sdi(zip))
    if(quiet) return(pass)
    if(pass) TRUE else sdi_not_available_message
  }
  
  # See `is_valid_hba1c()` for details re: arg `allow_empty`
  is_valid_zip <- function(zip, allow_empty = FALSE, quiet = TRUE) {
    if(allow_empty && is_okay_type(zip) && is_na_or_empty(zip)) return(TRUE)
    zip_was_num <- is.numeric(zip)
    zip_as_chr <- as.character(zip)
    pass <- 
      is_okay_type(zip_as_chr) && 
      !is_na_or_empty(zip_as_chr) && 
      length(unlist(strsplit(zip_as_chr, "*"))) == 5 && 
      zip_as_chr %in% valid_zips$valid_zips
    if(quiet) return(pass)
    msg_not_df <- paste0("`zip` ", quotify(zip), " not found among valid zip codes")
    msg_df <- paste0("`zip` entered as ", quotify(zip))
    if(zip_was_num) {
      msg_not_df <- paste0(
        "`zip` entered as a number, which can cause problems ",
        "(e.g., zips that start with a 0), and ",
        msg_not_df
      )
    }
    msg <- if(is.symbol(zip)) msg_df else msg_not_df
    if(pass) TRUE else msg
  }
}

is_supported_egfr_call <- function(egfr_call) {
  length(egfr_call) > 1 &&
    (
      identical(egfr_call[[1]], quote(calculate_egfr)) || 
        identical(egfr_call[[1]], quote(calc_egfr)) || 
        identical(egfr_call[[1]], quote(calculate_ckd_epi)) || 
        identical(egfr_call[[1]], quote(calc_ckd_epi))
    )
}

is_supported_bmi_call <- function(bmi_call) {
  length(bmi_call) > 1 &&
    (
      identical(bmi_call[[1]], quote(calculate_bmi)) || 
        identical(bmi_call[[1]], quote(calc_bmi))
    )
}

# {Model-related helper fxs} ----
select_model <- function(hba1c, uacr, zip) {
  
  usable_hba1c <- is_valid_hba1c(hba1c)
  usable_uacr <- is_valid_uacr(uacr)
  usable_zip <- is_zip_with_sdi_data(zip)
  
  if(!usable_hba1c && !usable_uacr && !usable_zip) {
    "base"
  } else if(!usable_hba1c && usable_uacr && !usable_zip) {
    "uacr"
  } else if(usable_hba1c && !usable_uacr && !usable_zip) {
    "hba1c"
  } else if(!usable_hba1c && !usable_uacr && usable_zip) {
    "sdi"
  } else {
    "full"
  }
}

standardize_chol_unit <- function(chol_unit) {
  if(is.null(chol_unit) || length(chol_unit) == 0 || is.na(chol_unit)) return(NA_character_)
  
  chol_unit <- tolower(chol_unit)
  
  if(chol_unit %in% c("mg/dl", "mg")) {
    return("mg/dL")
  } else if(chol_unit %in% c("mmol/l", "mmol")) {
    return("mmol/L")
  } else {
    return(chol_unit)
  }
}

standardize_race_eth <- function(race_eth) {
  
  if(is.null(race_eth) || length(race_eth) == 0 || is.na(race_eth)) return(NA_character_)
  
  race_eth_lowercase <- tolower(race_eth)
  
  if(race_eth_lowercase %in% c("white", "w")) {
    return("white")
  } else if(race_eth_lowercase %in% c("black", "b", "african american", "aa")) {
    return("black")
  } else if(race_eth_lowercase %in% c("hispanic", "h", "hispanic american", "ha")) {
    return("hispanic")
  } else if(race_eth_lowercase %in% c("chinese", "c", "chinese american", "ca")) {
    return("chinese")
  } else if(race_eth_lowercase %in% c("other", "o")) {
    # In accordance with guidance from AHA/ACC guideline:
    # https://doi.org/10.1161/01.cir.0000437741.48606.98
    return("white")
  } else {
    return(race_eth)
  }
}

standardize_sex <- function(sex) {
  if(is.null(sex) || length(sex) == 0 || is.na(sex)) return(NA_character_)
  
  sex <- tolower(sex)
  
  if(sex %in% c("f", "female")) {
    return("female")
  } else if(sex %in% c("m", "male")) {
    return("male")
  } else {
    return(sex)
  }
}

stylize_model_to_run <- function(model, capital_base = TRUE) {
  
  stopifnot(model %in% c("base", "hba1c", "uacr", "sdi", "full"))
  stopifnot(isTRUE(capital_base) || isFALSE(capital_base))
  
  base <- if(model == "base") "Base model" else "Base model adding "
  additional <- 
    if(model == "base") {
      ""
    } else if(model == "hba1c") {
      "HbA1c"
    } else if(model == "full") {
      "HbA1c, SDI, and UACR (also referred to as the full model)"
    } else if(model %in% c("uacr", "sdi")) {
      toupper(model)
    }
  
  res <- paste0(base, additional)
  
  if(!capital_base) res <- gsub("Base", "base", res, fixed = TRUE)
  
  res
}