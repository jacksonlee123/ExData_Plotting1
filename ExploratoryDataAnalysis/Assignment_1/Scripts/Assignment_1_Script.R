###ASSIGNMENT 1 EXPLORATORY DATA ANALYSIS 

list.files()
setwd("~/Documents/Coursera")

list.files()
#READ DATA INTO DT 
dt<-read.table("ExploratoryDataAnalysis/Assignment_1/Data/household_power_consumption.txt",  sep=";", stringsAsFactors=FALSE, dec=".", header = TRUE)
setwd("~/Documents/Coursera/ExploratoryDataAnalysis/Assignment_1/Plots")

##SUBSET DATA FOR RELEVANT DATE RANGES 
dtSub <- dt[dt$Date %in% c("1/2/2007","2/2/2007") ,]

#SUBSET DATA FOR GRAPHS
dtSubActPower<- as.numeric(dtSub$Global_active_power)
dtSub_metering_1 <-as.numeric(dtSub$Sub_metering_1)
dtSub_metering_2 <-as.numeric(dtSub$Sub_metering_2)
dtSub_metering_3 <-as.numeric(dtSub$Sub_metering_3)
datetime <- strptime(paste(dtSub$Date, dtSub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dtSub$Global_active_power)
globalReactivePower <- as.numeric(dtSub$Global_reactive_power)
voltage <- as.numeric(dtSub$Voltage)



#GRAPHIC 1
##SUBSET DATA
##SET DESTINATION 
png("plot1.png", width=480, height=480)
##CREATE GRAPH
hist(dtSubActPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

#GRAPHIC 2 
datetime <- strptime(paste(dtSub$Date, dtSub$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(datetime, dtSubActPower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()



#GRAPHIC 3
png("plot3.png", width=480, height=480)
dtSub_metering_1 <-as.numeric(dtSub$Sub_metering_1)
dtSub_metering_2 <-as.numeric(dtSub$Sub_metering_2)
dtSub_metering_3 <-as.numeric(dtSub$Sub_metering_3)
plot(datetime, dtSub_metering_1, type="l", xlab="", ylab="Energy sub Metering")
lines(datetime, dtSub_metering_2, type="l", col="red")
lines(datetime, dtSub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()


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




