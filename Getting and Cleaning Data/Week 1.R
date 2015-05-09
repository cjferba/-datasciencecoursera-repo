## Carlos Jesús Fernandez Basso

#librarys
if(!require("xlsx")){
  install.packages ("xlsx")
  library("xlsx")
}

if(! file.exists('data')){
  dir.create('data')
}

############################################################################
## CSV format
############################################################################

##Download data
fileUrl<- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method="internal")
list.files("./data")

dataDownloaded<- date()

## Load with read.table
cameraData <-  read.table("./data/cameras.csv" , sep=",",header = T)
head(cameraData)


## Load with read.csv
cameraData <-  read.csv("./data/cameras.csv" )
head(cameraData)



############################################################################
## Excel format
############################################################################

##Download data
fileUrl<- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.xlsx", method="internal")
list.files("./data")

dataDownloaded<- date()

## Load with read.xlsx
if (!file.exists(".data/cameraData.xlsx")) {
  cameraData.xlsx <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, header = TRUE)
}

cameraData.xlsx <-  read.xlsx("./data/cameras.xlsx" ,rowIndex = 1:7 ,#colIndex = 2:3,
                         sheetIndex = 1,header = T)
head(cameraData.xlsx)
