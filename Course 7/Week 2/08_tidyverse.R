data("ToothGrowth")
View(ToothGrowth)

# Filter dataframe
filtered_tg <- filter(ToothGrowth, dose==0.5)
View(filtered_tg)
# Sort dataframe
arrange(filtered_tg, len)

# filter and sort dataframe
arrange(filter(ToothGrowth, dose==0.5), len)

# nested function can be written more efficiently
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange(len)

# group_by a var
len_avg <- filtered_toothgrowth %>% group_by(supp) %>%
  summarize(mean_len=mean(len, na.rm=TRUE))
