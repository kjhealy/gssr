# Make a version where all the NAs are explicit
# We'll use this when making gss_doc

load(here::here("data", "gss_all.rda"))

gss_all_labelled <- gss_all |>
  mutate(across(everything(), \(x) labelled::to_character(x, explicit_tagged_na = TRUE)))

save(gss_all_labelled, file = here::here("data-raw", "objects", "gss_all-labelled.rda"),
     compress = "xz")
