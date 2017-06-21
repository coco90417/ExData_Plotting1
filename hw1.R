
# set path ----------------------------------------------------------------

setwd("C:/Users/cd433676/Documents/Coursera/exploratoryDataAnalysis/")

# load packages -----------------------------------------------------------

library(tidyr)
library(readr)
library(dplyr)
library(lubridate)

# download files ----------------------------------------------------------

if(!file.exists("household_power_consumption.zip")) {
  download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip")
}

if(!file.exists("household_power_consumption.txt")) {
  unzip(zipfile = "household_power_consumption.zip", exdir = ".")
}

# read data and generate data for plotting --------------------------------

if(!exists("householdData")) {
  householdData <- read_delim("household_power_consumption.txt", col_names = TRUE, delim = ";")
}

if(!exists("plotData")) {
  plotData <- householdData %>%
    mutate(DateNew = dmy(Date)) %>%
    filter(DateNew == ymd("2007-02-01") | DateNew == ymd("2007-02-02")) %>%
    select(-Date)
  save(plotData, file = "plotData.RData")
}

