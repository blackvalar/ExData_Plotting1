#read file
dat <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?")
#convert data
dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
#data filter
dat <- dat[dat$Date >= as.Date("2007-02-01")& dat$Date<=as.Date("2007-02-02"),]
png(filename="plot2.png", width=480, height=480, units="px")
plot(dat$Global_active_power, type="l",xaxt="n",xlab="", ylab="Global Active Power (kilowatts)")
axis(1, at=c(1, as.integer(nrow(dat)/2), nrow(dat)), labels=c("Thu", "Fri", "Sat"))
dev.off()