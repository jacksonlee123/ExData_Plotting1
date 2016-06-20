
#Graphic 4 
png("ExploratoryDataAnalysis/Assignment_1/Plots/plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
#GRAPH4.1
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)
#GRAPH4.2
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")
#GRAPH4.3
plot(datetime, dtSub_metering_1, type="l", xlab="", ylab="Energy sub Metering")
lines(datetime, dtSub_metering_2, type="l", col="red")
lines(datetime, dtSub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")
#GRAPH4.4
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()

