# Phys of Ex lab data
# Wingate Data analysis
# S Collins Fall 2015
# Issues - none to date

# Script to analyze Wingate data
# Set working directory - you will need a folder called "physExLab" (caps matter) and then you
# need to set the working directory to that folder. On a mac the "~/" simply means your home directory
# which makes it easy to use this on a mac if you simply put the folder into the home directory

setwd("~/physExLab")

# Load packages (might have to install if you are new to using R)

library(dplyr)
library(tidyr)
library(ggplot2)

# Load data  
data<-read.csv("allData.csv")
data<- select(data,ID, seconds,resistance_kg,rpm,revolutions,distance_m,force_n,power_watts,peakPower,meanPower,minPower,fatigueIndex,predBodyFat,Weight.kg.,Sex,Height.cm.,Wall.Sits..seconds.,LewisPower.W.,SayerEquation.W.,age.years.)

data$stage<-as.factor(data$seconds)

qplot(seconds,power_watts, data=data, geom=c("point", "smooth"),method="lm", colour=factor(ID),se=FALSE)

qplot(seconds,power_watts, data=data, geom=c("point", "smooth"), colour=factor(ID),se=FALSE)

qplot(seconds,power_watts, data=data, geom=c("point", "smooth"),method="lm", colour=factor(Sex))

qplot(stage,power_watts, data=data, geom=c("boxplot"),colour=factor(Sex))
