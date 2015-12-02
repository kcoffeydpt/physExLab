library(dplyr)
library(ggplot2)
library(pastecs)
library(reshape2)
setwd("~/physExLab/NHLcombinedata")

nhldata<-read.csv("data.csv")
nhldata<-mutate(nhldata, Weight_kg = Weight_lb/2.2)
nhldata<-mutate(nhldata, VO2max_watts_kg= VO2max_watts/Weight_kg)
nhldata<-select(nhldata,Weight_kg, WingatePeak_Watts, PeakWingate_W_kg, VO2max_l_min, VO2max_ml_kg_min, VO2max_watts, VO2max_watts_kg, LewisAvg_.Pause_watts)
str(nhldata)
nhldata <- nhldata[complete.cases(nhldata), ]
str(nhldata)


options(scipen=100)
options(digits=2)
stat.desc(nhldata, basic=F)

ggplot(melt(nhldata), aes(x = variable, y = value)) + geom_boxplot() 
