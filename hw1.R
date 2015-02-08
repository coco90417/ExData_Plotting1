## load data
setwd("/Users/chengliangdong/Desktop/Coursera/exdata-011/hw1")
mydata = read.table("household_power_consumption.txt",skip=grep("1/1/2007;23:59:00;", readLines("household_power_consumption.txt")), sep = ";", nrows=1440)
names(mydata) = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
##
png(filename = "plot1.png", width = 480, height = 480)
hist(mydata$Global_active_power, main = "Global Active Power", col="red", breaks = 17, xlab = "Global Active Power (kilowatts)")
dev.off()

##
png(filename = "plot2.png", width = 480, height = 480)
plot(mydata$Time, mydata$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab="Time in a day")
lines(mydata$Time, mydata$Global_active_power)
dev.off()

##
png(filename = "plot3.png", width = 480, height = 480)
plot(mydata$Time, mydata$Sub_metering_1, ylim=c(0,25), ylab = "Energy sub metering", xlab="Time in a day")
lines(mydata$Time, mydata$Sub_metering_1, col="black")
lines(mydata$Time, mydata$Sub_metering_2, col="red")
lines(mydata$Time, mydata$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)
dev.off()

##
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(mydata$Time, mydata$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab="Time in a day")
lines(mydata$Time, mydata$Global_active_power)

plot(mydata$Time, mydata$Voltage, type = "n", ylab = "Voltage", xlab="Time in a day")
lines(mydata$Time, mydata$Voltage)

plot(mydata$Time, mydata$Sub_metering_1, ylim=c(0,35), ylab = "Energy sub metering", xlab="Time in a day")
lines(mydata$Time, mydata$Sub_metering_1, col="black")
lines(mydata$Time, mydata$Sub_metering_2, col="red")
lines(mydata$Time, mydata$Sub_metering_3, col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty = 1, cex=0.8)

plot(mydata$Time, mydata$Global_reactive_power, type = "n", ylab = "Global Reactive Power (kilowatts)", xlab="Time in a day")
lines(mydata$Time, mydata$Global_reactive_power)
dev.off()
