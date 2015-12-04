# Preliminary analysis file for NFL combine data

library(dplyr)
library(ggplot2)
library(gtools)

#Read in the data from the csv file
nfldata<-read.csv("data_cleaned.csv")

nfldata<-mutate(nfldata, Weight_kg = Weight_lbs/2.2)
nfldata <- mutate(nfldata, Height_m = Height_in*0.0254)
nfldata <- mutate(nfldata, BMI = Weight_kg / (Height_m**2))
nfldata <- mutate(nfldata, VertJump_m = VertLeap_in*0.0254)
nfldata <- mutate(nfldata, LewisPower = sqrt(4.9)*Weight_kg*9.81*sqrt(VertJump_m))
nfldata <- mutate(nfldata, SayersPower = (60.7*(VertJump_m*100))+(45.3*Weight_kg-2055))


qplot(hasUnofficial40, all40yard, data = nfldata, geom="boxplot")

t.test(nfldata$all40yard~nfldata$hasUnofficial40)

nfldata %>% group_by(POS) %>% summarise(mean(VertLeap_in, na.rm=TRUE))

qplot(POS, all40yard, data = nfldata, geom="boxplot")
qplot(POS, Shuttle, data = nfldata, geom="boxplot")
qplot(POS, Bench_Press, data = nfldata, geom="boxplot")

qplot(POS, SayersPower, data = nfldata, geom="boxplot")


qplot(Weight_lbs, Bench_Press, data = nfldata)
qplot(all40yard, Shuttle, data = nfldata)

qplot(VertLeap_in, SayersPower, data = nfldata, color = Weight_kg)
qplot(VertLeap_in, LewisPower, data = nfldata, color = Weight_kg)

qplot(Weight_kg, data=nfldata, geom="histogram")
nfldata$wt_quantiles<-quantcut(nfldata$Weight_kg, q=seq(0,1,by=0.25), na.rm=TRUE)

qplot(Weight_kg, data=nfldata, geom="histogram",color=nfldata$wt_quantiles)

qplot(VertLeap_in, SayersPower, data = nfldata, color = nfldata$wt_quantiles)
qplot(VertLeap_in, LewisPower, data = nfldata, color = nfldata$wt_quantiles)



