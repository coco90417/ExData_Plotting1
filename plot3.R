

# load data ---------------------------------------------------------------

source("hw1.R")
load("plotData.RData")


# plot --------------------------------------------------------------------

png(filename = "plot3.png",
    width = 480,
    height = 480)

plot(as_datetime(paste(plotData$DateNew, plotData$Time)),
     plotData$Sub_metering_1,
     type = "l", 
     ylab = "Energy sub metering", 
     xlab = "")
lines(as_datetime(paste(plotData$DateNew, plotData$Time)),
      plotData$Sub_metering_2,
      col = "red")
lines(as_datetime(paste(plotData$DateNew, plotData$Time)),
      plotData$Sub_metering_3,
      col = "blue")
legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lwd = 2)
dev.off()


