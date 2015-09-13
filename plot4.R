hh <-read.table("C:\\Users\\hp\\Documents\\teste2\\household_power_consumption.txt",sep=";", header = TRUE, stringsAsFactors=FALSE, colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?" )

hh <- hh[hh$Date == ("2/2/2007") | hh$Date==("1/2/2007"),]
datetime <- strptime(paste(hh$Date,hh$Time,sep=" "), "%d/%m/%Y %H:%M:%S")

#plot4
png("plot4.png", width=480, height =480)
par(mfcol=c(2,2), mar=c(4,4,1,1), oma=c(0,0,2,0))

plot(datetime, hh$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)",  type="l")

plot(datetime, hh$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
lines(datetime, hh$Sub_metering_2, type="l", col="red")
lines(datetime, hh$Sub_metering_3, type="l", col="blue")
legend("topright", lwd = 1, lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3" ), cex=0.8, bty="n")

plot(datetime,hh$Voltage, type="l", ylab="Voltage", xlab="datetime")

plot(datetime,hh$Global_reactive_power, type="l", ylab="Global_reactive_Power", xlab="datetime")


dev.off()
