library("tidyverse")
library("palmerpenguins")

# make scatter plot
ggplot(data=penguins)+
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm, y=bill_depth_mm))