#Reading in th data and subsetting
house<-read.csv('household_power_consumption.txt',sep=';',header=TRUE,na.strings="?")
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')>=as.Date('2007-02-01',format='%Y-%m-%d'))
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')<=as.Date('2007-02-02',format='%Y-%m-%d'))

# Plot 2 code
png(filename="house$Global_active_power")
plot.ts(house$Global_active_power,xlab="DateTime",ylab="Global Active Power (kilowatts)")
dev.off()