# R script for getting data from the NFL combine data website and generating an R data frame

setwd("~/physexlab/NFLcombineData")

library(XML)
library(plyr)
library(dplyr)
library(ggplot2)

#This code reads in the data from the website, converts to a dataframe and exports to CSV
# theurl <- "http://nflcombineresults.com/nflcombinedata.php?year=all&pos=&college="
# raw <- readHTMLTable(theurl)
# nfldata <- ldply(raw, data.frame)
# rm(raw)
# write.csv(nfldata, file = "data.csv")
# rm(nfldata)

#Read in the data from the csv file
nfldata<-read.csv("data.csv")
nfldata$X40_Yard <- as.character(nfldata$X40_Yard)

# This code creates an "official40" variable that is a number that represents an officially recorded 40 yard sprint time, and returns NA for anyone with an unofficial time
nfldata$official40yard<-as.numeric(sub("*","", nfldata$X40_Yard))

#Logical variable that is TRUE if the player has an unoffical 40
nfldata$hasUnofficial40 <- is.na(nfldata$official40)

# Function to get the last n characters from a string x
substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

# Uses the above function to get sprint
nfldata$all40yard <- substrRight(nfldata$X40_Yard,4)
nfldata$all40yard<-as.numeric(nfldata$all40yard)

# Creates the Unofficial40yard numeric variable conditional on whether their test was unofficial 
nfldata$Unofficial40yard <- ifelse(nfldata$hasUnofficial40 == "TRUE", 
                                   nfldata$Unofficial40yard <- nfldata$all40yard,
                                   nfldata$Unofficial40yard <- "NA"
                                   )

write.csv(nfldata, file = "data_cleaned.csv")

qplot(hasUnofficial40, all40yard, data = nfldata, geom="boxplot")
t.test(nfldata$all40yard~nfldata$hasUnofficial40)

nfldata %>% group_by(POS) %>% summarise(mean(VertLeap_in, na.rm=TRUE))
