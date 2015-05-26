source("Load_Data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "Plot 3.png",width = 480,height = 480,units = "px",bg = "transparent" )



plot(DataSet$DateTime,DataSet$Sub_metering_1,type = "l",col = "black",
     ylab = "Global active power (kilowatts)",xlab = "")

lines(DataSet$DateTime, DataSet$Sub_metering_2, col = "red")
lines(DataSet$DateTime, DataSet$Sub_metering_3, col = "blue")

legend("topright",col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),       lwd = 1)

dev.off()
