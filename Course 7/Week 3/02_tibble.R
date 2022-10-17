library("tidyverse")

# tibble adalah dataframe yang lebih pintar
# hanya akan return 10 data teratas
# tidak merubah menjadi list ketika hanya slicing satu kolom dataframe

df <- as.data.frame(diamonds)
is.data.frame(df)

# slicing salah satu kolom dataframe
df[, c("color")] # print kolom color dalam list

# slicing dataframe dengan nama kolom terdekat
df$col # akan slicing kolom "color"

tibb <- as_tibble(diamonds)
is.data.frame(tibb) # tetap terdeteksi dataframe
is_tibble(tibb) # terdeteksi tibble juga

# slicing salah satu kolom tibble
tibb[,"color"] # akan tetap ditampilkan per baris dan hanya 10 baris pertamaw

# slicing tibble dengan nama kolom terdekat
tibb$col #error
tibb$color # hanya bisa diakses dengan nama kolom full dan ditampilkan dalam list

# CONCLUSION
# gunakan tibble ketika akses database besar
# slicing tibble dengan [baris,kolom]