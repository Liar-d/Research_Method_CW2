library(readr)
library(dplyr)
data <- read.csv("E:/UON/Spring/Research Method/Coursework 2_04.25_16.00/Results_21MAR2022_nokcaladjust.csv")
data_diet_group <- data %>%
group_by(diet_group)%>%
summarise(mean_ghgs = mean(mean_ghgs,na.rm = TRUE),
          mean_land = mean(mean_land,na.rm = TRUE),
          mean_watscar = mean(mean_watscar,na.rm = TRUE),
          mean_eut = mean(mean_eut,na.rm = TRUE),
          mean_ghgs_ch4 = mean(mean_ghgs_ch4,na.rm = TRUE),
          mean_ghgs_n2o = mean(mean_ghgs_n2o,na.rm = TRUE),
          mean_bio = mean(mean_bio,na.rm = TRUE),
          mean_watuse = mean(mean_watuse,na.rm = TRUE),
          mean_acid = mean(mean_acid,na.rm = TRUE))
show(data_diet_group)
write_csv(data_diet_group,"E:/UON/Spring/Research Method/Coursework 2_04.25_16.00/Data_Diet_Group.csv")
