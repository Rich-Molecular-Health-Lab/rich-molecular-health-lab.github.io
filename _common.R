library(tidyverse)
library(conflicted)
library(htmltools)
library(htmlwidgets)
library(plotly)
library(here)
library(bslib)
library(crosstalk)
library(shiny)
library(gt)
library(gtExtras)
source(here("helpers/card_template.R"))
source(here("helpers/course_card_template.R"))
knitr::opts_chunk$set(message = FALSE,
                      warning = FALSE,
                      include = TRUE,
                      echo    = TRUE,
                      eval    = TRUE,
                      comment = "")
conflicts_prefer(dplyr::filter)
conflicts_prefer(DT::dataTableOutput)
conflicts_prefer(DT::renderDataTable)
conflicts_prefer(readr::col_factor)
conflicts_prefer(purrr::discard)
conflicts_prefer(dplyr::lag)
conflicts_prefer(gt::google_font)