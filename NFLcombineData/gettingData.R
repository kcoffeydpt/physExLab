# R script for getting data from the NFL combine data website and generating an R data frame

library(XML)
theurl <- "http://nflcombineresults.com/nflcombinedata.php?year=all&pos=&college="
tables <- readHTMLTable(theurl)
n.rows <- unlist(lapply(tables, function(t) dim(t)[1]))

df <- data.frame(matrix(unlist(tables), nrow=132, byrow=T))

df <- data.frame(matrix(unlist(tables)))
