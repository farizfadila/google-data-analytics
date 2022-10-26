# install.packages("SimDesign")
library("SimDesign")

actual_temp <- c(68.3, 70,72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp)

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales) # bias value is too far from zero, this is not good, product stock must be reduced

bias(actual_sales, predicted_sales, type="relative", percent = TRUE) 