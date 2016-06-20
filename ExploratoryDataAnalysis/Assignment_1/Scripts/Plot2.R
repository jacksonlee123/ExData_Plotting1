
#GRAPHIC 2 
datetime <- strptime(paste(dtSub$Date, dtSub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, dtSubActPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

