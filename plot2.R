
# load data ---------------------------------------------------------------

source("hw1.R")
load("plotData.RData")


# plot --------------------------------------------------------------------

png(filename = "plot2.png",
    width = 480,
    height = 480)

plot(as_datetime(paste(plotData$DateNew, plotData$Time)),
     plotData$Global_active_power,
     type = "l", 
     ylab = "Gloabl Active Power (kilowatts)")






