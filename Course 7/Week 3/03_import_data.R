library("tidyverse")
# R menyimpan dataset bawaan yang dibuat dari berbagai macam library, umumnya library "tidyverse"
# lihat dataset yang tersimpan di data()

df <- as.data.frame(mtcars)
View(df)

data <- read_csv(readr_example("mtcars.csv"))
data

# import file excel membutuhkan library(readxl)
library("readxl")
# melihat list sheet di file excel
excel_sheets(readxl_example("type-me.xlsx"))
# load excel file in specified sheet
data <- read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")
View(data)