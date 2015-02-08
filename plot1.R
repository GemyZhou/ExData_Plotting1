#get tidy data set
source("getTidyData.R")
tidy<-getTidyData()

#first plotting, outputting to png file with resolution of 480x480
png(file="plot1.png",width=480,height=480)

old<-par("mfrow")
par(mfrow=c(1,1))
hist(tidy$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")

#restore mfrow setting
par(mfrow=old)

#closing graphics file device 
dev.off()