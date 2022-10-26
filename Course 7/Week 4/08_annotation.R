library(tidyverse)
library(palmerpenguins)

# add annotate() to explain some detail of data in ggplot layer
ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length",
       subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220,y=3500,label="The Gentoos are the largest", 
           color="purple",
           fontface="bold",
           size=4.5,
           angle=45)

# plot can be store in variable
p <- ggplot(data = penguins)+
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))+
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length",
       subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")
p+annotate("text",x=220,y=3500,label="The Gentoos are the largest", color="purple")