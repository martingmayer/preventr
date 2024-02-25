##~~ # This was run during creation, but should not load in general when loaded
##~~ 
##~~ # SDI data ----
##~~ # 
##~~ # from 
##~~ # https://www.graham-center.org/maps-data-tools/social-deprivation-index.html
##~~ # and, more specifically on that page,
##~~ # https://www.graham-center.org/content/dam/rgc/documents/maps-data-tools/sdi/2015-2019-sdi/rgcsdi-2015-2019-zcta.csv
##~~ # Wayback versions
##~~ # https://web.archive.org/web/20231213195628/https://www.graham-center.org/maps-data-tools/social-deprivation-index.html
##~~ # https://web.archive.org/web/20231213195651/https://www.graham-center.org/content/dam/rgc/documents/maps-data-tools/sdi/2015-2019-sdi/rgcsdi-2015-2019-zcta.csv
##~~ # Read in SDI data
##~~ sdi_dat <- 
##~~   readr::read_csv(
##~~     file.path(
##~~       dirname(here::here()),
##~~       "prevent_equations_data/rgcsdi-2015-2019-zcta.csv"
##~~     )
##~~   ) %>% 
##~~   janitor::clean_names() %>% 
##~~   dplyr::select(
##~~     zip = zcta5_fips,
##~~     sdi_centile = sdi_score,
##~~     sdi
##~~   ) %>% 
##~~   dplyr::mutate(
##~~     sdi_decile = dplyr::case_when(
##~~       sdi_centile <= 10 ~ 1,
##~~       sdi_centile <= 20 ~ 2,
##~~       sdi_centile <= 30 ~ 3,
##~~       sdi_centile <= 40 ~ 4,
##~~       sdi_centile <= 50 ~ 5,
##~~       sdi_centile <= 60 ~ 6,
##~~       sdi_centile <= 70 ~ 7,
##~~       sdi_centile <= 80 ~ 8,
##~~       sdi_centile <= 90 ~ 9,
##~~       sdi_centile <= 100 ~ 10,
##~~       .default = NA_real_
##~~     )
##~~   )
##~~ 
##~~ # Prep for export/use in package
##~~ sdi_decile_dat <- sdi_dat %>% dplyr::select(zip, sdi_decile)
##~~ 
##~~ # Get valid zip codes ----
##~~ valid_zips <- dplyr::tibble(valid_zips = zipcodeR::zcta_crosswalk$ZCTA5)
##~~ 
##~~ # PREVENT equations coeffs. ----
##~~ # From supplemental Excel file associated with
##~~ # https://doi.org/10.1161/CIRCULATIONAHA.123.067626
##~~ 
##~~ prevent_equations_coeffs <- file.path(
##~~   dirname(here::here()),
##~~   "prevent_equations_data/prevent_equations_simplified_coeffs.xlsx"
##~~ )
##~~ 
##~~ desired_sheets <- readxl::excel_sheets(prevent_equations_coeffs) %>% 
##~~   grep(pattern = "_simplified", x = ., value = TRUE, fixed = TRUE)
##~~ 
##~~ models <- lapply(
##~~   desired_sheets,
##~~   function(x) {
##~~     readxl::read_excel(prevent_equations_coeffs, sheet = x) %>% 
##~~       janitor::clean_names() %>% 
##~~       # Replace all NAs with 0s in preparation for how data.frames will
##~~       # be used
##~~       dplyr::mutate(
##~~         dplyr::across(
##~~           where(is.numeric), 
##~~           function(x) tidyr::replace_na(x, 0)
##~~         )
##~~       ) %>% 
##~~       # Replace all instances of "women" with "female" and "men" with "male"
##~~       # And replace "coronary_heart_disease" with "chd"
##~~       dplyr::rename_with(
##~~         function(x) {
##~~           res <- gsub("women", "female", x, fixed = TRUE)
##~~           res <- gsub("men", "male", res, fixed = TRUE)
##~~           gsub("coronary_heart_disease", "chd", res, fixed = TRUE)
##~~         }
##~~       )
##~~   }
##~~ ) %>% 
##~~   setNames(
##~~     gsub(pattern = "Table S12[A-J] ", replacement = "", x = desired_sheets) %>% 
##~~       gsub(pattern = "acr", replacement = "uacr", x = .) %>% 
##~~       gsub(pattern = "a1c", replacement = "hba1c", x = .) %>% 
##~~       gsub(pattern = "_simplified", replacement = "", x = .)
##~~   )
##~~ 
##~~ # Export data ----
##~~ dat_for_pkg <- append(
##~~   models, 
##~~   list(sdi_decile_dat = sdi_decile_dat, valid_zips = valid_zips)
##~~ )
##~~ 
##~~ with(
##~~   dat_for_pkg,
##~~   usethis::use_data(
##~~     base_10yr,
##~~     uacr_10yr,
##~~     hba1c_10yr,
##~~     sdi_10yr,
##~~     full_10yr,
##~~     base_30yr,
##~~     uacr_30yr,
##~~     hba1c_30yr,
##~~     sdi_30yr,
##~~     full_30yr,
##~~     sdi_decile_dat,
##~~     valid_zips,
##~~     overwrite = TRUE,
##~~     internal = TRUE
##~~   )
##~~ )
##~~ 