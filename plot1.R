
# load data --------------------------------------------------------------

source("hw1.R")
load("plotData.RData")

png(filename = "plot1.png", 
    width = 480, 
    height = 480)

hist(plotData$Global_active_power, 
     main = "Global Active Power", 
     col = "red", 
     breaks = 20, 
     xlab = "Global Active Power (kilowatts)")

dev.off()





