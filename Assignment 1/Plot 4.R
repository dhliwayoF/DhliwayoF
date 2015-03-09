#Reading in th data and subsetting
house<-read.csv('household_power_consumption.txt',sep=';',header=TRUE,na.strings="?")
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')>=as.Date('2007-02-01',format='%Y-%m-%d'))
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')<=as.Date('2007-02-02',format='%Y-%m-%d'))

#Plot 4 code
png(filename="house$Global_active_power")
par(mfrow=c(2,2))
plot.ts(house$Global_active_power)
plot.ts(house$Voltage)
plot3 <-c( {
         plot(sub1,xlab="DateTime",ylab="sub metering",type="n")
         lines(sub1,type="l", xlab="DateTime",ylab="sub metering")
         lines(sub2,type="l", xlab="DateTime",ylab="sub metering", col="red")
         lines(sub3,type="l", xlab="DateTime",ylab="sub metering", col="blue")
         legend("topright",legend=c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lty=c(1,1),lwd=c(2.5,2.5),col=c("black", "red","blue"))
})
plot.ts(house$Global_reactive_power)
dev.off()