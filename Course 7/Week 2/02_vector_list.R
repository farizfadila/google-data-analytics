# VECTOR
# gunakan c()

# KARAKTER VECTOR
# int akan di convert num jika ada minimal satu num
# num akan di convert str jika ada minimal satu str

# Data Type in R
# integer (43)
# double (54.54)
# character ("loreml")
# logical (TRUE, FALSE)

# VECTOR INTEGER
# bisa langsung atau tambahkan "L"
x <- c(1L, 43L, 34L)
print(x)
class(x)

# Melihat data type dengan type0f() atau class()
class(x)
typeof(x)

# Panjang vector
length(x)

# Check data type and return boolean
is.integer(x)
is.double(78534.4)

y <- c(TRUE, FALSE, TRUE, FALSE)
class(y)

x <- c(1,2,3)
names(x) <- c("a","b","c")
x

# LIST
# digunakan untuk membuat kumpulan value dengan data type yang beragam
# dapat membuat list dalam list

contoh_list <- list("a", 1, 424.34, TRUE)
contoh_list
class(contoh_list)

# melihat data type dan isi list
str(contoh_list)

# list dalam list
# berguna untuk organize data
x <- list(c(1,2,3,4,5),
          list(32.424, 42.42, 64.2),
          list("halo","fariz","fadila"))
str(x)

# memberi nama list
contoh_list <- list("fariz" = 22,
                    "tono" = 24,
                    "bunga" = 23,
                    "john" = 12)
str(contoh_list)

# list dapat diakses setelah diberi nama
contoh_list$fariz
