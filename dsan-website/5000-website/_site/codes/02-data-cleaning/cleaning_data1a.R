#Reading in Data 
data1a <- read.csv("~/dsan-5000-project-kendallgilbert180/data/00-raw-data/1a.csv")

#First Look at Data
head(data1a)
nrow(data1a)

#Viewing Column Names
colnames(data1a) #Noticing a lot of duplicates- need to look into that

#"Location" vs "LOCATION"
categories <- unique(data1a$Location) 
numberOfCategories <- length(categories) 
categories 
numberOfCategories #15 Categories

categories2 <- unique(data1a$LOCATION)
categories2
numberOfCategories2 <- length(categories2) 
numberOfCategories2

#Both have 15 different Categories. Location is easier to understand. 

#Removing "LOCATION"
data1a <- subset(data1a, select = -LOCATION)

#Water Source Columns 
categories3 <- unique(data1a$WATER_SOURCE)
categories3 #This dataset has freshwater and ocean... we do not care about freshwater so that needs to be removed
data1a <- subset(data1a, select = -WATER_SOURCE)
data1a <- data1a[data1a$Water.source != "Freshwater", ]

#Getting Rid of Extra Time Columns 
data1a <- subset(data1a, select = -TIME)
data1a <- subset(data1a, select = -Flag.Codes)
data1a <- subset(data1a, select = -Flags)

#Statistics to Include
nrow(data1a) #630
colnames(data1a) #4

#Exporting to Clean Data Folder as cleandata1a
write.csv(data1a, file = "cleandata1a.csv", row.names = TRUE)



