f<-read.table("household_power_consumption.txt", header = TRUE, sep = ';', dec=".", stringsAsFactors=F)
fs<-f[f$Date %in% c("1/2/2007", "2/2/2007"),]
DT <- strptime(paste(fs$Date, fs$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power<-as.numeric(fs$Global_active_power)
Sub_metering_1<-as.numeric(fs$Sub_metering_1)
Sub_metering_2<-as.numeric(fs$Sub_metering_2)
Sub_metering_3<-as.numeric(fs$Sub_metering_3)

#plot3
png("plot3.png", width=480, height=480)
plot(DT, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(DT, Sub_metering_2, type="l", col="red")
lines(DT, Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
