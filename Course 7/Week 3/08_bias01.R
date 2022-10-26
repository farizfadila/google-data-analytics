# load dataset "Tmisc"
# install.packages("Tmisc")
library("Tmisc")
data(quartet)
View(quartet)

# install library for data prepare
library("tidyverse")

quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),
            sd(x),
            mean(y),
            sd(y),
            cor(x,y))

ggplot(quartet, aes(x,y)) +
  geom_point() +
  geom_smooth(method = lm, se=FALSE) +
  facet_wrap(~set)

# install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen, aes(x=x,y=y,colour=dataset))+
  geom_point()+
  theme_void()+
  theme(legend.position = "none")+
  facet_wrap(~dataset,)

