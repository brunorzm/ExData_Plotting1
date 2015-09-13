hh <-read.table("C:\\Users\\hp\\Documents\\teste2\\household_power_consumption.txt",sep=";", header = TRUE, stringsAsFactors=FALSE, colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?" )

hh <- hh[hh$Date == ("2/2/2007") | hh$Date==("1/2/2007"),]
datetime <- strptime(paste(hh$Date,hh$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow=c(1,1))


#plot3
png("plot3.png", width=480, height =480)
plot(datetime, hh$Sub_metering_1, type="l", ylab="Energy sub metering")
lines(datetime, hh$Sub_metering_2, type="l", col="red")
lines(datetime, hh$Sub_metering_3, type="l", col="blue")
legend("topright", lwd = 2, lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ), cex=0.8)
dev.off()
