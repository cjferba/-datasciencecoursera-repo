

DataSet<-read.table(file = "Data//household_power_consumption.txt",na.strings = "?",
                    header = T,sep = ";",
                    colClasses = c("character","character",rep("numeric",7)))

#only be using data from the dates 2007-02-01 and 2007-02-02

DataSet<-DataSet[DataSet$Date == "1/2/2007" | DataSet$Date=="2/2/2007",]
datos1<-DataSet

DataSet$DateTime<-paste(DataSet$Date,DataSet$Time,sep = "-")
DataSet$DateTime<-strptime(DataSet$DateTime,format = "%d/%m/%Y-%H:%M:%S")

#DataSet$DateTime<-as.Date(DataSet$Date)
#newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")