library(dplyr)
#Reading in Data
data2b <- read_csv("dsan-5000-project-kendallgilbert180/dsan-website/5000-website/data/00-raw-data/2b.csv")

#Viewing Data
head(data2b)
colnames(data2b)

#Renaming Columns
colnames(data2b)[1] ="County"
colnames(data2b)[2] ="Employment Construction"
colnames(data2b)[3] ="Employment Living Resources"
colnames(data2b)[4] ="Employment Minerals"
colnames(data2b)[5] ="Employment Ship/Boat Building"
colnames(data2b)[6] ="Employment Tourism Recreation"
colnames(data2b)[7] ="Employment Transportation"

#Want to Add a total Column ("Total Employment") to see total jobs per county 
data2b <- data2b %>%
  mutate(`Total Employment` = `Employment Construction` + 
           `Employment Living Resources` + 
           `Employment Minerals` +
           `Employment Ship/Boat Building` +
           `Employment Tourism Recreation` + 
           `Employment Transportation`)

#Export as a CSV
write.csv(data2b, file = "cleandata2b.csv", row.names = TRUE)

nrow(data2b)

