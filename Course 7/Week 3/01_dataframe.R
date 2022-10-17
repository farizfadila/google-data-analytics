library("tidyverse")
data("diamonds")
# return 6 first rows of the dataset
head(diamonds)
# return col_name with datatype
str(diamonds)
# return col_name only
colnames(diamonds)
# make a new colomn
mutate(diamonds, carat_2=carat*100)