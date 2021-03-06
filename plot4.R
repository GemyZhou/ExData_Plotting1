#get tidy data set
source("getTidyData.R")
tidy<-getTidyData()

#fourth plotting, outputting to png file with resolution of 480x480
png(file="plot4.png",width=480,height=480)

old<-par("mfrow")
par(mfrow=c(2,2))
plot(tidy$dateTime,tidy$Global_active_power,type="l",xlab="",ylab="Global Active Power")

plot(tidy$dateTime,tidy$Voltage,type="l",xlab="datetime",ylab="Voltage")

plot(tidy$dateTime,tidy$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(tidy$dateTime,tidy$Sub_metering_2,type="l",col="red")
lines(tidy$dateTime,tidy$Sub_metering_3,type="l",col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,bty="n")

plot(tidy$dateTime,tidy$Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power")

#restore mfrow setting
par(mfrow=old)

#closing graphics file device 
dev.off()
