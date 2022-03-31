#Q1
#reading the data to csv file
london_crime <- read.csv("london-crime-data.csv",na="")
london_crime

#showing the structure of london_crime
str(london_crime)
#adding the columns year and month
london_crime$Date <- paste(london_crime$year, london_crime$month, collapse = " ", sep = "/")
#this is the code to add the day component to date
london_crime$Date <- paste(london_crime$year, london_crime$month, 01, collapse = " ", sep = "/")
#adding the day element
#due to the high volume of data , at this point R studio was crashing multiple times
#Q2
#renaming the columns
names(london_crime)
names(london_crime)[2] <- "Borough"
names(london_crime)[3] <- "MajorCategory"
names(london_crime)[4] <- "SubCategory"
names(london_crime)[5] <- "Value"
names(london_crime)[8] <- "CrimeDate"
#extracting only required columns
London_crime <- subset(london_crime, select = c(Borough, MajorCategory, SubCategory, Value, CrimeDate))
str(London_crime)
#Q3
#changing the varible to date type  
london_crime$CrimeDate <- as.Date(london_crime$CrimeDate, "%Y/%m/%d")
str(london_crime$CrimeDate)
#Q4
summary(London_crime)
Borugh_info <- subset(london_crime, select = c(Borough, Value))
summary(Borugh_info)
