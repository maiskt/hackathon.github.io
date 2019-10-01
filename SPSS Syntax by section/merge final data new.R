#function to merge all CSV's in one
library(gtools)
library(haven)
library(tidyverse)

mypath<-"C:/Users/xiaoyan.hu/Documents/GitHub/Codebook/Dataset/all"
filenames<-list.files(path=mypath,full.names = TRUE)
filenames<-mixedsort(filenames)
mydata<-read.csv(file=filenames[[1]],header=T,sep=",")
fndata<-mydata[order(mydata$COUNTRY,mydata$YEAR,mydata$SBJNUM),]
for(i in 2:length(filenames)){
  show(i)
  tmpdata<-read.csv(file=filenames[[i]],header=T,sep=",")
  oddata<-tmpdata[order(tmpdata$COUNTRY,tmpdata$YEAR,tmpdata$SBJNUM),]
  fndata<-cbind(fndata,oddata)
}
finalData<-fndata[,unique(colnames(fndata))]
dim(finalData)
colnames(finalData)

#write compressed sav and csv 
#write_sav(finalData, "C:/Users/xiaoyan.hu/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata.sav",compress=TRUE)
write.csv(finalData,gzfile("C:/Users/xiaoyan.hu/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata.csv.gz"),row.names = FALSE)

#read compressed csv
rr1<-read_csv("C:/Users/xiaoyan.hu/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata.csv.gz",
          col_types = cols(.default = col_character(),SBJNUM = col_number(),PPI_PROB = col_number(),
                           WEIGHT = col_number(),LATITUDE = col_number(),LONGITUDE = col_number(),PPI_SCORE = col_number()))

#combine Indonesia data
ido18<-read.csv("C:/Users/xiaoyan.hu/Documents/GitHub/Codebook/Dataset/Indo_2018.csv",header=T)
ido18_m<-ido18[,colnames(finalData)]
FFIData<-rbind(finalData,ido18_m)
dim(FFIData)

#write_sav(FFIData, "C:/Users/hux/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata2.sav")
write.csv(finalData,gzfile("C:/Users/xiaoyan.hu/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata_indo.csv.gz"),row.names = FALSE)
rr2<-read_csv("C:/Users/xiaoyan.hu/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata_indo.csv.gz",
              col_types = cols(.default = col_character(),SBJNUM = col_number(),PPI_PROB = col_number(),
                               WEIGHT = col_number(),LATITUDE = col_number(),LONGITUDE = col_number(),PPI_SCORE = col_number()))