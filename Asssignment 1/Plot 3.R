#Reading in th data and subsetting
house<-read.csv('household_power_consumption.txt',sep=';',header=TRUE,na.strings="?")
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')>=as.Date('2007-02-01',format='%Y-%m-%d'))
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')<=as.Date('2007-02-02',format='%Y-%m-%d'))

# Plot 3 code
png(filename="house$Sub_metering_1")
par(mfrow= c(1,1))
plot(house$Sub_metering_1,xlab="DateTime",ylab="Sub metering",type="n")
lines(house$Sub_metering_1,type="l", xlab="DateTime",ylab="Sub metering")
lines(house$Sub_metering_2,type="l", xlab="DateTime",ylab="Sub metering", col="red")
lines(house$Sub_metering_3,type="l", xlab="DateTime",ylab="sub metering", col="blue")
legend("topright",legend=c("Sub_metering_1","sub_metering_2","Sub_metering_3,))
dev.off()                          