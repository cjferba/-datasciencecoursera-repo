## Carlos Jesús Fernandez Basso

if(! file.exists('data')){
  dir.create('data')
}
download.file("data/")

fileUrl<- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./data/cameras.csv", method="internal")
list.files("./data")

dataDownloaded<- date()


cameraData <-  read.table("./data/cameras.csv" , sep=",",header = T)


head(cameraData)
