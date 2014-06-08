#read file
dat <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?")
#convert data
dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
#data filter
dat <- dat[dat$Date >= as.Date("2007-02-01")& dat$Date<=as.Date("2007-02-02"),]
#create graf
png(filename="plot1.png", width=480, height=480, units="px")
hist(dat$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
