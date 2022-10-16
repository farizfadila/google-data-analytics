# DATE AND TIME
# gunakan library("lubridate")
library("tidyverse")
library("lubridate")

# Return today date
today()
# Return datetime now
now()

# lubridate mampu melakukan konversi string ke date
# d : day
# m : month
# y : year

# h : hour
# m : minutes
# s : second
x <- ymd("2018-09-14")
print(x)
class(x)

dmy("20 January 2000")

ymd_hms("2022-10-15 19:32:08")

# untuk melakukan parsing dari string ke datetime gunakan strptime
# gunakan as_date untuk konversi dari datetime ke date
# lihat dokumentasi format date di ?strptime()
strptime("20 01 2000",format = "%d %m %Y") %>% 
  as_date()