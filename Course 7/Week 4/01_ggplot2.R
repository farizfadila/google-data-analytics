library("ggplot2")
library("palmerpenguins")

colnames(penguins)
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=bill_length_mm))

# tips
# 1. masukkan data di ggplot()
# 2. masukkan mapping x,y di ggplot()
# 3. tentukan jenis plot (misal: geom_point())


ggplot(data=penguins,
       mapping = aes(x=flipper_length_mm, y=bill_length_mm))+
  geom_point()
