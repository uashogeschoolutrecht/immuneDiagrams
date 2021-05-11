## create datafile with relevant data for the immune paper


library(gramlyr)
data_grinta <- gramlyr::data_grinta_clean

## select data for relevant paramters:
##
data_grinta$analyte %>% unique()

immune_analytes <- c(
  "BASO_ABS",
  "LEUCO",
  "TROMBO",
  "EOS_ABS",
  "LYMFO_ABS_CORR",
  "MONO_ABS",
  "NEUTRO_ABS"
)

data_immune <- data_grinta %>%
  dplyr::filter(analyte %in% immune_analytes) %>%
  dplyr::select(
    subject,
    protocol,
    time,
    analyte,
    concentration,
    sample_id
  )

usethis::use_data(data_immune)
