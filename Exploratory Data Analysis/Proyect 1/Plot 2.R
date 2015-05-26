source("Load_Data.R")

Sys.setlocale("LC_TIME", "English")

png(filename = "Plot 2.png",width = 480,height = 480,bg = "transparent" )

plot(DataSet$DateTime,DataSet$Global_active_power,type = "l",
     ylab = "Global active power (kilowatts)",xlab = "")

dev.off()

