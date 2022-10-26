id <- c(1:10)
name <- c("John Mendes",
          "Rob Stewart", 
          "Rachel Abrahamson", 
          "Christy Hickman", 
          "Johnson Harper", 
          "Candace Miller", 
          "Carlson Landy", 
          "Pansy Jordan", 
          "Darius Berry", 
          "Claudia Garcia")
job_title <- c("Professional",
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer", 
               "Management", 
               "Clerical", 
               "Developer", 
               "Programmer")
employee <- data.frame(name, job_title)

# separate name column into first_name and last_name
employee <- separate(employee, name, into=c("first_name","last_name"), sep=" ")
employee

# combine first_name and last_name to a new column
unite(employee,name,first_name,last_name, sep=" ")

# transform data
library(palmerpenguins)
penguins2 <- penguins %>% 
  mutate(body_mass_kg=body_mass_g/1000,
         bill_length_cm=bill_length_mm/10,
         bill_depth_cm=bill_depth_mm/10)

View(penguins2)
