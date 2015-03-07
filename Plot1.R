## Plot 1
##
## Load Data
setwd("F:/Data Scientist/Data Science Track/Data Exploration/Project 1")
data<- read.table("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, header = TRUE)

datasub<- subset(data, Date %in% c("1/2/2007", "2/2/2007"))

datasub<-transform(datasub, Global_active_power=as.numeric(Global_active_power))

png("plot1.png", width=480, height=480)
hist(datasub$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()