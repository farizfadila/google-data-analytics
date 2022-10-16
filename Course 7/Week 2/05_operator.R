# Assigment Operator
# digunakan untuk menyimpan value ke var
sales_1 <- c(23.53, 53.34, 53.65, 76.33, 43.64, 57.54, 75.53)

# gunakan paste untuk join string dan numeric dalam print
print(paste("Data penjualan seminggu terakhir", toString(sales_1)))

# Arithmetic Operator
# +, -, /, *
quarter_1_sales <- 3275.32
quarter_2_sales <- 2325.32
midyear_sales <- quarter_1_sales + quarter_2_sales
print(paste("Penjualan tengah tahun sebesar", midyear_sales))

yearend_sales <- midyear_sales * 2
print(paste0("Penjualan akhir tahun sebesar", yearend_sales))