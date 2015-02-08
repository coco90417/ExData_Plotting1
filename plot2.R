## load data
setwd("/Users/chengliangdong/Desktop/Coursera/exdata-011/hw1")
mydata = read.table("household_power_consumption.txt",skip=grep("1/1/2007;23:59:00;", readLines("household_power_consumption.txt")), sep = ";", nrows=1440)
names(mydata) = c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

## plot
png(filename = "plot2.png", width = 480, height = 480)
plot(mydata$Time, mydata$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab="Time in a day")
lines(mydata$Time, mydata$Global_active_power)
dev.off()

