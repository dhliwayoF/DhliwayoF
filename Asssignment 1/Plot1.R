#Reading in th data and subsetting
house<-read.csv('household_power_consumption.txt',sep=';',header=TRUE,na.strings="?")
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')>=as.Date('2007-02-01',format='%Y-%m-%d'))
house<- subset(house,as.Date(house$Date,format='%d/%m/%Y')<=as.Date('2007-02-02',format='%Y-%m-%d'))

# Plot1 code
png(filename="house$Global_active_power")
hist(house$Global_active_power,col="red", xlab="Global Active Power (kilowatts", main= " Global Power Active")
dev.off()