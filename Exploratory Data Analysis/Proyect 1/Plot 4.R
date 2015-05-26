source("Load_Data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "plot4.png",width = 480, height = 480,
    units = "px", bg = "transparent")
par(mfrow = c(2, 2))

################################
#Top-left
################################
plot(DataSet$DateTime,DataSet$Global_active_power,type = "l",
     xlab = "", ylab = "Global Active Power")

## Top-right
plot(DataSet$DateTime, DataSet$Voltage,type = "l",
     xlab = "datetime", ylab = "Voltage")
## Bottom-left
plot(DataSet$DateTime, DataSet$Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(DataSet$DateTime, DataSet$Sub_metering_2, col = "red")
lines(DataSet$DateTime, DataSet$Sub_metering_3, col = "blue")
# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
## Bottom-right
plot(DataSet$DateTime, DataSet$Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(DataSet)[4])
dev.off()
