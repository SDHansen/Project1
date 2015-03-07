## Plot 3
##
## Load Data

setwd("F:/Data Scientist/Data Science Track/Data Exploration/Project 1")
data<- read.table("household_power_consumption.txt", sep=";", stringsAsFactors = FALSE, header = TRUE)

datasub<- subset(data, Date %in% c("1/2/2007", "2/2/2007"))

datasub<-transform(datasub, Global_active_power=as.numeric(Global_active_power), Sub_metering_1=as.numeric(Sub_metering_1), Sub_metering_2=as.numeric(Sub_metering_2), Sub_metering_3=as.numeric(Sub_metering_3))

datetime <- strptime(paste(datasub$Date, datasub$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

datasub<- cbind(datasub,datetime)

# plot(datasub$datetime, datasub$Sub_metering_1, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#  lines(datasub$datetime, datasub$Sub_metering_2, col="red")
#  lines(datasub$datetime, datasub$Sub_metering_3, col="blue")
#  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"))
  
# Create Plot

png("plot3.png", width=480, height=480)

plot(datasub$datetime, datasub$Sub_metering_1, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  lines(datasub$datetime, datasub$Sub_metering_2, col="red")
  lines(datasub$datetime, datasub$Sub_metering_3, col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2.5, col=c("black", "red", "blue"))

dev.off()