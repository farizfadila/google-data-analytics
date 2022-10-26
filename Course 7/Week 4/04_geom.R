# geom digunakan untuk menentukan jenis plot
# 1. geom_point
# 2. geom_bar
# 3. geom_line
# 4. geom_jitter
# 5. geom_smooth

library(tidyverse)
library(palmerpenguins)

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g))

ggplot(data=penguins)+
  geom_line(mapping=aes(x=flipper_length_mm,
                        y=body_mass_g))

ggplot(data=penguins)+
  geom_smooth(mapping=aes(x=flipper_length_mm,
                        y=body_mass_g))

# combine multiple plot with just add layer to ggplot
ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,
                         y=body_mass_g, color=species))+
  geom_smooth(mapping=aes(x=flipper_length_mm,
                          y=body_mass_g))

ggplot(diamonds)+
  geom_bar(mapping = aes(x=cut, fill=cut))

ggplot(diamonds)+
  geom_bar(mapping = aes(x=cut, fill=clarity))