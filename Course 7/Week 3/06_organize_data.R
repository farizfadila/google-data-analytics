library("tidyverse")
data <- as_tibble(penguins)

# sort bill_length_mm asc
data %>% arrange(bill_length_mm)

# sort bill_length_mm desc
data2 <- data %>% arrange(-bill_length_mm)

# grouping variable and summarize other variable
data %>% group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bl=mean(bill_length_mm),
            max_bl=max(bill_length_mm),
            min_bl=min(bill_length_mm)) 

data %>% filter(species=="Adelie")
  