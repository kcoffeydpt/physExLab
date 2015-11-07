#Aerobic capacity based on Astrand's classic paper in 1964

library(dplyr)
library(ggplot2)

setwd("~/AerobicCapacity/Astrand_1964")
data <- read.csv("data.csv")
data<-tbl_df(data)
data <- mutate(data,VO2_mlkg = (VO2*1000)/weight, METs = VO2_mlkg/3.5, AV_diff = AV_diff/100, SV_L = SV/1000, SV_mlkg = SV/weight, Q_mlkg = (Q*1000)/weight)
data$stage <- as.factor(data$stage)
by_stage <- group_by(data,stage)
summarize(by_stage, mean(METs), mean(VO2_mlkg), mean(VO2), mean(Q), mean(Q_mlkg), mean(AV_diff), mean(HR), mean(SV), mean(SV_L), mean(SV_mlkg), mean(heartVolume))


par(mfrow = c(2, 3))
with(data, plot(stage, VO2_mlkg, xlab="Stage", ylab="VO2 (ml/kg/min)"))
with(data, plot(stage, METs, xlab = "Stage", ylab="METs"))
with(data, plot(stage, Q_mlkg, xlab="Stage", ylab="Cardiac Output (ml/kg/min)"))
with(data, plot(stage, AV_diff, xlab="Stage", ylab="(a-v)O2 difference"))
with(data, plot(stage, HR, xlab="Stage", ylab="Heart Rate"))
with(data, plot(stage, SV,xlab="Stage", ylab="Stroke Volume"))


dev.copy(png, file = "plot.png", width = 480, height = 480)
dev.off()

par(mfrow = c(1, 1))
with(data, plot(stage, VO2_mlkg, xlab="Stage", ylab="VO2 (ml/kg/min)"))
dev.copy(png, file = "VO2.png", width = 480, height = 480)
dev.off()

par(mfrow = c(1, 1))
with(data, plot(stage, Q_mlkg, xlab="Stage", ylab="Cardiac Output (ml/kg/min)"))
dev.copy(png, file = "Q.png", width = 480, height = 480)
dev.off()

par(mfrow = c(1, 1))
with(data, plot(stage, AV_diff, xlab="Stage", ylab="(a-v)O2 difference"))
dev.copy(png, file = "AV.png", width = 480, height = 480)
dev.off()


par(mfrow = c(1, 1))
with(data, plot(stage, HR, xlab="Stage", ylab="Heart Rate"))
dev.copy(png, file = "hr.png", width = 480, height = 480)
dev.off()

par(mfrow = c(1, 1))
with(data, plot(stage, SV,xlab="Stage", ylab="Stroke Volume"))
dev.copy(png, file = "sv.png", width = 480, height = 480)
dev.off()


write.csv(data,"AstrandData1964.csv")

rest <- filter(data,stage == 0)
hist(rest$heartVolume)
plot(data$stage,data$VO2)
hist(data$AV_diff)

#Confirm that VO2 in L/min is the same as Q * AV_diff in this data set
data <- mutate(data,calcVO2 = AV_diff * Q)
data$stage <- as.factor(data$stage)
by_stage <- group_by(data,stage)
summarize(by_stage, mean(VO2), mean(calcVO2))

summarize(by_stage, mean(Q), min(Q), max(Q))

#A function to calculate VO2Max_est
vo2_function <- function(Q, AV_diff){
	vo2<-Q*AV_diff
}


