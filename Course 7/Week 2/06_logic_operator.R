# OPERATOR LOGIKA
# AND ditulis & atau &&
# OR ditulis | atau ||
# NOT dituliss !=

# AND
# return TRUE if both are TRUE
print(TRUE & TRUE)
print(TRUE && TRUE)
print(3>4 && 8<32)

# OR
# return TRUE if one or both of two boolean are TRUE
print(TRUE | FALSE)
print(FALSE || TRUE)
print(3>4 || 8<32)


# NOT
# return the opposite boolean
print(!TRUE)
print(!FALSE)

# Contoh implementasi pada dataset
# menggunakan dataset "airquality"
str(airquality)
airquality[airquality$Solar.R > 150 & airquality$Wind > 10,]
airquality[airquality$Solar.R > 150 || airquality$Wind > 10,]
airquality[airquality$Solar.R != 100,]

# Slicing dataframe dataframe_name[vec_row, vec_col]
airquality[c(5:10),c("Ozone","Temp")]