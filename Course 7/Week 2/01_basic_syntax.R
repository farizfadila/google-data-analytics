# pagar untuk comment
# R tidak mendukung multiline comment
# gunakan # setiap line untuk multiline comment

print("Belajar R Programming")

# Melihat dokumentasi syntax dengan menambahkan ? pada awal syntax
?print()

# R bersifat case sensitive
Print("ini akan errror")

# assigment ke variable dengan <-
x <- "Ini adalah value string"
print(x)
y <- 3535.7656
print(y)

# VECTOR (kumpulan value dengan satu data type)
vec_example <- c(876,"ini adalah string",85.8) # ini akan di convert ke string
print(vec_example)

vec1 <- c(4334.345, 356, 353.34, 56) # ini akan di convert ke float
print(vec1)

# PIPE
# melakukan assigment function secara beruntun
# gunakan library(magrittr)
library("magrittr")
"Halo, saya Fariz Fadila" %>% print() %>% summary()