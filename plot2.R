f<-read.table("household_power_consumption.txt", header = TRUE, sep = ';', dec=".", stringsAsFactors=F)
fs<-f[f$Date %in% c("1/2/2007", "2/2/2007"),]
DT <- strptime(paste(fs$Date, fs$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
Global_active_power<-as.numeric(fs$Global_active_power)

#plot2
png("plot2.png", width=480, height=480)
plot(DT, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
