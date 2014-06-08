#read file
dat <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?")
#convert data
dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
#data filter
dat <- dat[dat$Date >= as.Date("2007-02-01")& dat$Date<=as.Date("2007-02-02"),]
#create graf