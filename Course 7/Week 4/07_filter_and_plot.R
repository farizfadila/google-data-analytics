library(tidyverse)
library(palmerpenguins)

colnames(penguins)

# scatter plot with filtered data
penguins %>% 
  filter(species=="Adelie") %>% 
  ggplot(mapping=aes(x=bill_length_mm,
                     y=bill_depth_mm))+
  geom_point()