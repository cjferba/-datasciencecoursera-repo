
source("Load_Data.R")

png(filename = "Plot 1.png",width = 480,height = 480,bg = "transparent"  )

hist(DataSet$Global_active_power,col="red",xlab = "Global active power (kilowatts)",main="Global active power")

dev.off()