source("Load_Data.R")

motor <- ddply(neiData[neiData$fips == "24510" 
                   & neiData$type == "ON-ROAD",],
               .(type,year), summarise, 
               TotalEmissions = sum(Emissions))

# Set the graphics device to png
png(filename = "./figure/plot5.png")

# Plot the data -- finding total emissions each year
ggplot(motor, aes(year, TotalEmissions)) +
    geom_line() + geom_point() +
    labs(title = "Total Emissions from Motor Vehicles in Baltimore City",
            x = "Year", y = "Total Emissions")

dev.off()
