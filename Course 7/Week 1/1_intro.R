# Install library "palmerpenguins" yang memuat dataset penguins
library("palmerpenguins")
# install ggplot2 untuk visualisasi data
library("ggplot2")
# Ringkasan dataset penguins
summary(penguins)
# Menampilkan dataset penguins dalam bentuk tabel
View(penguins)
# membuat scatter plot
ggplot(data=penguins,aes(x=flipper_length_mm, y=body_mass_g)) + geom_point(aes(color=species))
