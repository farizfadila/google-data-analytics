library(tidyverse)
library(palmerpenguins)

colnames(penguins)
# untuk dataset <1000 rows gunakan method="loess"
ggplot(penguins, aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point()+
  geom_smooth(method="loess")

# untuk dataset >=1000 rows gunakan method="gam"
ggplot(penguins, aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point()+
  geom_smooth(method="gam", formula=y~s(x))