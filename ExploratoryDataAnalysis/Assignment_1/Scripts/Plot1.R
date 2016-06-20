#GRAPHIC 1
##SUBSET DATA
##SET DESTINATION 
png("plot1.png", width=480, height=480)
##CREATE GRAPH
hist(dtSubActPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()