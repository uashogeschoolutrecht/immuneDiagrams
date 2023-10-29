#################################################################
## Author: Marc A.T. Teunis, PhD, Hogeschool Utrecht
## Licence for re-use: see package licence in ./LICENCE.md
## Load GRINTA! dataset from external library ({gramlyr})
## package {gramlyr} will be made available
## at https://github.com/uashogeschoolutrecht/gramlyr
## install via remotes::install_github("uashogeschoolutrecht/gramlyr")
## create datafiles with relevant data for the immune paper

library(gramlyr)
library(tidyverse)
data_grinta <- gramlyr::data_grinta_clean

## select data for relevant immune paramters:
data_grinta$analyte %>% unique()

immune_analytes <- c(
  "BASO_ABS",
  "LEUCO",
  "TROMBO",
  "EOS_ABS",
  "LYMFO_ABS_CORR",
  "MONO_ABS",
  "NEUTRO_ABS",
  "mcp1",
  "ip10",
  "tnf",
  "il6",
  "il10",
  "ifny",
  "gcsf",
  "mif"

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

usethis::use_data(data_immune, overwrite = TRUE)

## NK cell data
data_nk <- readxl::read_xlsx(
  here::here(
    "data-raw",
    "D090",
    "NK data voor mastersheet.xlsx"
  ), na = "NA"
)


usethis::use_data(data_nk)


