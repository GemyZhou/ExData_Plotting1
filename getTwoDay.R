#This script trimmed raw data on only two days and saved it to "twoDay.txt" 

#loadding raw data
myData<-read.table("household_power_consumption.txt",header=T,sep=";")

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


# extractting data only on 2007-02-01 and 2007-02-02
dateInd<-myData$Date=="1/2/2007" | myData$Date=="2/2/2007"
myData1<-myData[dateInd,]

write.table(myData1,file="twoDay.txt",row.names=F)
