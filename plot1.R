f<-read.table("household_power_consumption.txt", header = TRUE, sep = ';', dec=".", stringsAsFactors=F)
fs<-f[f$Date %in% c("1/2/2007", "2/2/2007"),] 
Global_active_power<-as.numeric(fs$Global_active_power)

#plot1
png("plot1.png", width=480, height=480)
hist(Global_active_power, main = "Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()
