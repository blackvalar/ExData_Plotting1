#read file
dat <- read.csv("~/household_power_consumption.txt", sep=";", na.strings="?")
#convert data
dat$Date <- as.Date(dat$Date, format="%d/%m/%Y")
#data filter
dat <- dat[dat$Date >= as.Date("2007-02-01")& dat$Date<=as.Date("2007-02-02"),]
#create graf
png(filename="plot3.png", width=480, height=480, units="px")
with(dat, {
  plot(Sub_metering_1,type="l", xaxt="n", xlab="", ylab="Energy sub metering")
  lines(x=Sub_metering_2, col="red")
  lines(x=Sub_metering_3, col="blue")
})
axis(1, at=c(1, as.integer(nrow(dat)/2), nrow(dat)), labels=c("Thu", "Fri", "Sat"))
legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()