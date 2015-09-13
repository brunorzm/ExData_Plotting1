hh <-read.table("C:\\Users\\hp\\Documents\\teste2\\household_power_consumption.txt",sep=";", header = TRUE, stringsAsFactors=FALSE, colClasses = c("character","character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"), na.strings = "?" )

hh <- hh[hh$Date == ("2/2/2007") | hh$Date==("1/2/2007"),]
datetime <- strptime(paste(hh$Date,hh$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
par(mfrow=c(1,1))

#plot 1
png("plot1.png", width=480, height=480)
hist(hh$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
