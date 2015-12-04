# R script for getting data from the NFL combine data website and generating an R data frame

setwd("~/physexlab/NFLcombineData")

library(XML)
library(plyr)

#This code reads in the data from the website, converts to a dataframe and exports to CSV
theurl <- "http://nflcombineresults.com/nflcombinedata.php?year=all&pos=&college="
raw <- readHTMLTable(theurl)
nfldata <- ldply(raw, data.frame)
rm(raw)
write.csv(nfldata, file = "data.csv")
rm(nfldata)
#Read in the data from the csv file
nfldata<-read.csv("data.csv")

#Need to figure out how to clean up the 40 yard sprint data, as it is there is data with an "*" that has meaning but keeps the time from being read as numeric
# *Not timed/scored officially at the NFL Combine
#Need to separate the * from the number but also create a variable to indicate this as the case
