library("here")
library("skimr")
library("janitor")
library("dplyr")
# load dataset
library("palmerpenguins")

# return n_missing, n_unique, top_counts from factor, descriptive stat from numeric
skim_without_charts(penguins)

# return col_namem, data type
glimpse(penguins)

# return 6 first rows of the dataset
head(penguins)

# slicing dataset using select
# input the dataset
penguins %>% 
  select(species, island, body_mass_g)

# select not species
penguins %>% 
  select(- species)

# rename col_name
rename(penguins, island_new=island)

# change col_name to uppercase
rename_with(penguins, toupper)

# change col_name to lowercase
rename_with(penguins, tolower)

# return col_names with unique names and consist (just _, character, numbers)
# whitespace in the col_names will be eliminate
data <- data.frame("Nama Siswa" = c("Toni","Roni","Badawi"),
                   "Tinggi Badan" = c(156, 176, 146))
data

clean_names(data)
