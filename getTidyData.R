getTidyData <- function() {
#Because the original raw dataset is too big, script "getTwoDay.R" filtered the data on only two days
#and saved it to a txt file "twoDay.txt"

#This script loads "twoDay.txt" and processes it into a tidy set

#loadding data
myData<-read.table("twoDay.txt",header=T)

#myData has 9 variables:
# Date: Date in format dd/mm/yyyy
# Time: time in format hh:mm:ss
# Global_active_power: household global minute-averaged active power (in kilowatt)
# Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# Voltage: minute-averaged voltage (in volt)
# Global_intensity: household global minute-averaged current intensity (in ampere)
# Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

# convertting Date and Time variables into one date/time class varible
dateTime<-strptime(paste(myData1$Date,myData1$Time,sep=" "),"%d/%m/%Y %H:%M:%S")
myData2<-cbind(dateTime,myData1[,3:9])

 # convertting factor variables to numeric
     for(k in 2:7){
         myData2[[k]]<-as.numeric(as.character(myData2[[k]]))
     }
    tidy<-myData2
}