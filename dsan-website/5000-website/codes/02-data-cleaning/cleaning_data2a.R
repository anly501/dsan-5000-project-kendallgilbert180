library(tidyverse)
#Reading in Data
data2a <- read.csv("~/dsan-5000-project-kendallgilbert180/dsan-website/5000-website/data/00-raw-data/2a.csv")

#Viewing Data
head(data2a) #Column Names seem clean
nrow(data2a) #5052 
str(data2a) #All normal

#Adding a month and year column to make analysis easier in the future 
data2a <- data2a %>%
  mutate(Month = format(as.Date(Date, format = "%m/%d/%Y"), "%B"))

data2a <- data2a %>%
  mutate(Year = format(as.Date(Date, format = "%m/%d/%Y"), "%Y"))
#Exporting Data
write.csv(data2a, file = "cleandata2a.csv", row.names = TRUE)
