#function to merge all CSV's in one
library(gtools)
library(haven)
mypath<-"C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Final Data"
filenames<-list.files(path=mypath,full.names = TRUE)
filenames<-mixedsort(filenames)

##Initial
sec1 <- read_csv(file=filenames[[1]],col_types = cols(.default = col_character(),SBJNUM = col_number(),WEIGHT = col_number(),
                                                      LATITUDE = col_number(),LONGITUDE = col_number()))
sec2 <- read_csv(file=filenames[[2]],col_types = cols(.default = col_character(),SBJNUM = col_number(),PPI_PROB = col_number(), 
                                                      PPI_SCORE = col_number(), SBJNUM = col_number()))
sec1 <- sec1[order(sec1$COUNTRY,sec1$YEAR,sec1$SBJNUM),]
sec2 <- sec2[order(sec2$COUNTRY,sec2$YEAR,sec2$SBJNUM),]
fndata <- cbind(sec1,sec2[,4:7])

##Combine
for(i in 3:length(filenames)){
  show(i)
  tmpdata<-read_csv(file=filenames[[i]],col_types = cols(.default = col_character(),SBJNUM = col_number()))
  oddata<-tmpdata[order(tmpdata$COUNTRY,tmpdata$YEAR,tmpdata$SBJNUM),]
  fndata<-cbind(fndata,oddata)
}

finalData<-fndata[,unique(colnames(fndata))]

#write compressed sav and csv 
#write_sav(finalData, "C:/Users/hux/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata.sav",compress=TRUE)
#write.csv(finalData,gzfile("C:/Users/hux/OneDrive - Kantar/FII 2019/Datathon/merge final data/FIIdata.csv.gz"))

#read compressed csv
#rr<-read_csv("C:/Users/hux/OneDrive - Kantar/FII 2019/Datathon/merge final data/mydata.csv.gz")

#combine Indonesia data
ido18<-read_csv("~/GitHub/Codebook/Dataset/Indo_2018.csv",col_types = cols(.default = col_character(),SBJNUM = col_number(),PPI_PROB = col_number(),
                                                                           WEIGHT = col_number(),LATITUDE = col_number(),LONGITUDE = col_number(),
                                                                           PPI_SCORE = col_number(), SBJNUM = col_number()))
#ido18_m<-ido18[,colnames(finalData)]
FFIData<-rbind(finalData,ido18[,-1])
#dim(FFIData)
write_sav(FFIData, "C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/FIIdata.sav",compress=TRUE)
write.csv(finalData,gzfile("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/FIIdata.csv.gz"))







###delete latter
rr<-read_csv("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/FIIdata.csv.gz",
             col_types = cols(.default = col_character(),SBJNUM = col_number(),PPI_PROB = col_number(),
               WEIGHT = col_number(),LATITUDE = col_number(),LONGITUDE = col_number(),PPI_SCORE = col_number()))
rr<-read_csv("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/FIIdata.csv.gz")
rr<-rr[,-1]