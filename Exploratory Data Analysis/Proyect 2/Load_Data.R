library(ggplot2)
library(plyr)
#Load data if no exist
if (!"neiData" %in% ls()) {
  neiData <- readRDS("data/summarySCC_PM25.rds")
}
if (!"sccData" %in% ls()) {
  sccData <- readRDS("./data/Source_Classification_Code.rds")
}
#show neiData
head(neiData)
#show sccData
head(sccData)

print(paste("Dimension of NEI Data: ",dim(neiData)[1],dim(neiData)[2] ))
print(paste("Dimension of SCC Data: ",dim(sccData)[1],dim(sccData)[2] ))
