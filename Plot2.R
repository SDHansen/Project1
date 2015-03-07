## Plot 2
##
## Load Data
setwd("F:/Data Scientist/Data Science Track/Data Exploration/Project 1")
data<- read.table("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, header = TRUE)

datasub<- subset(data, Date %in% c("1/2/2007", "2/2/2007"))

datasub<-transform(datasub, Global_active_power=as.numeric(Global_active_power))

datetime <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

datasub<- cbind(datasub,datetime)

## plot(datasub$datetime, datasub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
## Create Plot

png("plot2.png", width=480, height=480)
plot(datasub$datetime, datasub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()