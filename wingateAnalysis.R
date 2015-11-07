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

# Load data  
wingate<-read.csv("Wingate.csv")


#Subset rows that have only the summary data from the test
# first pull rows with a valid number for mean power
wingateSummary <-filter(wingate,Mean.Power>0)
# then pull columns with summary data columns
wingateSummary <-select(wingateSummary,ID, Peak.Power,Mean.Power,Min.Power,Fatigue.Index)

wingateData<-select(wingate,ID, Seconds,Resistance..kg.,RPM,ActualRPM,Force..N.,Revolutions,Power..watts.)

hist(wingateSummary$Peak.Power)
