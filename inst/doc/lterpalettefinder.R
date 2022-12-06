## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ----pre-setup, echo = FALSE, message = FALSE---------------------------------
# devtools::install_github("lter/lterpalettefinder")

## ----setup--------------------------------------------------------------------
library(lterpalettefinder)

## ----palette_extract----------------------------------------------------------
fire_palette <- palette_extract(image = "lyon_fire.png", progress_bar = FALSE)

## ----palette-format-----------------------------------------------------------
fire_palette

## ----palette_demo, fig.width = 4, fig.height = 4, fig.align = "center"--------
palette_demo(palette = fire_palette, export = FALSE)

## ----palette_ggdemo, fig.width = 5, fig.height = 3, fig.align = "center"------
palette_ggdemo(palette = fire_palette)

## ----palette_sort, fig.width = 5, fig.height = 3, fig.align = "center"--------
fire_sort <- palette_sort(palette = fire_palette)
palette_ggdemo(palette = fire_sort)

## ----palette_subsample--------------------------------------------------------
fire_sub <- palette_subsample(palette = fire_palette, wanted = 5, random_seed = 42)
palette_ggdemo(palette = fire_sub)

## ----palette_find-------------------------------------------------------------
official_palette <- palette_find(name = "hike")
palette_ggdemo(palette = official_palette)

