
#Reading in Data 
data4a <- read.csv("~/dsan-5000-project-kendallgilbert180/dsan-website/5000-website/data/00-raw-data/4a.csv")

#First Looks 
colnames(data4a)
sum(is.na(data4a)) # No NA values

check <- unique(data4a$SUBJECT)
check 

#Getting Rid of Indicator, Frequency and Subject Columns because all rows have the same value 
data4a <- subset(data4a, select = -INDICATOR)
data4a <- subset(data4a, select = -FREQUENCY)
data4a <- subset(data4a, select = -SUBJECT)

#Editing Column Names
colnames(data4a)[1] ="Location"
colnames(data4a)[2] ="Measure (Tonnes)"
colnames(data4a)[3] ="Year"

nrow(data4a) #2862
check <- unique(data4a$Year)
check #Time Frame is 1995 to 2021

#Exporting Data as CSV
write.csv(data4a, file = "cleandata4a.csv", row.names = TRUE)










