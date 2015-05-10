## Carlos Jesús Fernandez Basso

#librarys
if(!require("xlsx")){
  install.packages ("xlsx")
  library("xlsx")
}

if(!require("XML")){
  install.packages ("XML")
  library("XML")
}

if(!require("jsonlite")){
  install.packages ("jsonlite")
  library("jsonlite")
}
if(!require("data.table")){
  install.packages ("data.table")
  library("data.table")
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
download.file(fileUrl, destfile = "./data/cameras.xlsx", method="internal",mode='wb')
list.files("./data")

dataDownloaded<- date()

## Load with read.xlsx
if (!file.exists(".data/cameraData.xlsx")) {
  cameraData.xlsx <- read.xlsx("./data/cameras.xlsx", sheetIndex=1, header = TRUE)
}

cameraData.xlsx <-  read.xlsx("./data/cameras.xlsx" ,rowIndex = 1:7 ,#colIndex = 2:3,
                         sheetIndex = 1)
head(cameraData.xlsx)

############################################################################
## XML format
############################################################################

fileURL <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileURL,useInternalNodes = T)
rootNode <- xmlRoot(doc)
xmlName(rootNode)

names(rootNode)

rootNode[[1]]

##Xpath
xpathSApply(rootNode,"//name",xmlValue)

xpathSApply(rootNode,"//price",xmlValue)

##Extract content by attributes

fileUrl<- "http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc <- htmlTreeParse(fileUrl,useInternal = T)
score<-xpathSApply(doc,"//li[@class='score']",xmlValue)
team <-xpathSApply(doc,"//li[@class='team-name']",xmlValue)



############################################################################
## JSON format
############################################################################

jsonData <- fromJSON("https://api.github.com/users/jtleek/repos")
names(jsonData)

############################################################################
## dara table 
############################################################################

dataFrame<- data.frame(x=rnorm(9),y=rep(c("a","b","c"), each=3),z=rnorm(9))


dataTable<- data.table(x=rnorm(9),y=rep(c("a","b","c"), each=3),z=rnorm(9))


tables()
dataTable[c(2,3)]

dataTable[c(2,3),]
{
  x=1
  y=2
}
k={print(10);5}
print(k)

dataTable[,list(mean(x),sum(z))]

dataTable[,list(table(y))]

dataTable[,w:=z^2]


dataTable[,m:={tmp<-(x+z);log2(tmp+5)}]

dataTable[,a:=x>0]

dataTable[,b:=mean(x+w),by=a]


set.seed(123)

DT<-data.table(x=sample(letters[1:3],1E5,T))
DT[,.N,by=x]

DT<- data.table(x=rep(c("a","b","c"), each=100),y=rnorm(300))
setkey(DT,x)
DT['a']

DT1<- data.table(x=rep(c("a","b","c"), each=100),y=rnorm(300))
DT2<- data.table(x=rep(c("a","b","c"), each=100),y=rnorm(300))
setkey(DT,x)
DT['a']
