library("tidyverse")

View(diamonds) # dataset "diamonds" terletak di library "tidyverse

# DATAFRAME
# data.frame(col1=vec_value, col2=vec_value, ...)
df <- data.frame(nama=c("Toni",
                  "Rangga",
                  "Ucup"),
           tb=c(160,
                175,
                180),
           bb=c(34,
                34,
                56))
df

# membuat dir di spesifik path
# dir.create("Week 2/plot")

# membuat file
# file.create("test.txt")

# copy file
# file.copy("test.txt","Week 2")

# delete file
# unlink("test.txt")

# MATRIKS
# nrow atau ncol dapat diisi salah satu
matrix(c(3:8), nrow=2)
# sama dengan
matrix(c(3:8), ncol = 3)
# sama dengan 
matrix(c(3:8), nrow = 2, ncol = 3)
# jika nrow dan ncol diisi semua tapi data terlalu banyak atau terlalu sedikit, maka akan error
matrix(c(3:8), nrow = 2, ncol = 2) # ini akan error

