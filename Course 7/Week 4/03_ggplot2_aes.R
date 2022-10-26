library(tidyverse)
library(palmerpenguins)

# standard scatter plot
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g))

# if we will make a scatter plot with different species's color/shape/size 
# use the color/shape/size in aes function
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g,
                         color=species,
                         shape=species,
                         size=species))

# but if we will make a standard scatter plot with different species transparacy
# use alpha in aes function
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g,
                         alpha=species))

# if we will make a standard scatter plot but blue color each point, use color in geom_point function
# because aes function is to mapping a variable
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g,
                         ),
             color="blue")