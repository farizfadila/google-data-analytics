library(tidyverse)
diamonds

ggplot(data=diamonds, mapping=aes(x=cut))+
  geom_bar()
ggsave("Simple Bar Chart.png")