# Phys of Ex lab data
# S Collins Fall 2015
# Issues - none to date

# Script to combine the data and perform a keyed merge on the files
# Set working directory - you will need a folder called "physExLab" (caps matter) and then you
# need to set the working directory to that folder. On a mac the "~/" simply means your home directory
# which makes it easy to use this on a mac if you simply put the folder into the home directory

setwd("~/physExLab")

# Load packages (might have to install if you are new to using R)

library(dplyr)
library(tidyr)

# Load data and 
basicData<-read.csv("BasicData.csv")
basicData<-basicData[1:21,]
basicData$ID<-as.integer(basicData$ID)
basicData<-arrange(basicData,ID)
basicData<-basicData[,2:6]

bodyComp<-read.csv("BodyComp.csv")
bodyComp$ID<-bodyComp$sz
bodyComp$predBodyFat<-bodyComp$predicted.body.fat..
bodyComp<-bodyComp[2:22,3:4]
bodyComp$ID<-as.integer(bodyComp$ID)
bodyComp<-arrange(bodyComp,ID)

muscularFitness<-read.csv("MuscularFitness.csv")
muscularFitness<-muscularFitness[1:21,]
muscularFitness$ID<-as.integer(muscularFitness$ID)
muscularFitness<-arrange(muscularFitness,ID)
muscularFitness<-muscularFitness[,2:14]

power<-read.csv("Power.csv")
power$ID<-as.integer(power$ID)
power<-arrange(power,ID)
power<-power[,2:8]

preTest<-read.csv("PreTest.csv")
preTest$ID<-as.integer(preTest$ID)
preTest<-arrange(preTest,ID)
preTest<-preTest[,2:11]

combinedData<-bind_cols(bodyComp, basicData, muscularFitness, power, preTest)

write.csv(combinedData, file = "combinedData.csv")

# Wingate is read in - but not combined with the other data at this point
wingate<-read.csv("Wingate.csv")

#combine wingate and combinedData with a left join function

allData<-left_join(wingate, combinedData, by="ID")
write.csv(allData, file = "allData.csv")

