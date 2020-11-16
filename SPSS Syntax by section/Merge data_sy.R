#Packages
library(foreign)
library(dplyr)
library(haven)
library(readxl)
library(tidyverse)

##Input data

{#Bangladesh
  b13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b18<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2018 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
 #India
  i13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i18<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/India 2013-2018/FII India 2018 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Indonesia
  ido14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  ido15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  ido16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Kenya
  k13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Kenya 2013-2017/FII Kenya 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Kenya 2013-2017/FII Kenya 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Kenya 2013-2017/FII Kenya 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Kenya 2013-2017/FII Kenya 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Kenya 2013-2017/FII Kenya 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Nigeria
  n13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2013 (public+sbjnum).sav",to.data.frame=T,use.value.labels = T)
  n14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Pakistan
  p13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Tanzania
  t13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2013 (public+sbjnum).sav",to.data.frame=T,use.value.labels = T)
  t14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Uganda
  u13<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Uganda 2013-2017/FII Uganda 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u14<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Uganda 2013-2017/FII Uganda 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u15<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Uganda 2013-2017/FII Uganda 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u16<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Uganda 2013-2017/FII Uganda 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u17<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Uganda 2013-2017/FII Uganda 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
}

##Merge data
##Input section number as sec_num
merge.FII.da <- function(sec_num){
  da_name <- c("i18",
               "b17","i17","k17","n17","p17","t17","u17",
               "b16","i16","ido16","k16","n16","p16","t16","u16",
               "b15","i15","ido15","k15","n15","p15","t15","u15",
               "b14","i14","ido14","k14","n14","p14","t14","u14",
               "b13", "i13","k13","n13","p13","t13","u13")
  key <- c("SBJNUM","COUNTRY","YEAR")
  var_list <- read_excel("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Documents/Variable list_2019.xlsx")
  var_list <- as.data.frame(var_list)[which(var_list$Section==sec_num),c(2,3)]
  sec <- as.character(var_list$`Variable name in Datathon`)
  sec <- c(key,sec)
  m_sec <- select(b18,sec)
  for(i in 1:length(da_name)){
    m_sec <- rbind(m_sec,select(eval(parse(text=da_name[i])),sec))
  }
  write.csv(m_sec,paste0("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Section ",sec_num,".csv")) 
  write_sav(m_sec,paste0("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Section ",sec_num,".sav"))
}

##Section 3
merge.FII.da(3)

##Section 6.1
merge.FII.da(6.1)

##Section 6.2
merge.FII.da(6.2)

##Section 6.3
merge.FII.da(6.3)

##Section 4
merge.FII.da(4)

##Section 2
merge.FII.da(2)

##Section 15.2
merge.FII.da(15.2)

##Section 15.1
merge.FII.da(15.1)

##Section 14
merge.FII.da(14)

##Section 16
merge.FII.da(16)

##Section 17
merge.FII.da(17)

##Section 13
merge.FII.da(13)

##Section 11
merge.FII.da(11)

##Section 12
merge.FII.da(12)

##Section 7.2
merge.FII.da(7.2)

##Section 7.3
merge.FII.da(7.3)

##Section 7.4
merge.FII.da(7.4)

##Section 7.1
merge.FII.da(7.1)

##Section 7.5
merge.FII.da(7.5)

##Section 8.2
merge.FII.da(8.2)

##Section 8.3
merge.FII.da(8.3)

##Section 9
merge.FII.da(9)

##Section 10
merge.FII.da(10)

##Section 8.1
merge.FII.da(8.1)

##Section 1
merge.FII.da(1)

##Indonesia 2018
var_list <- read_excel("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Documents/Variable list_2019.xlsx")
var_list <- as.character(as.data.frame(var_list)[,2])

ido18<-read.spss("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2018 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
ido18 <- select(ido18,var_list)
         
write.csv(ido18,"C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indo_2018.csv")
write_sav(ido18,"C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Indo_2018.sav")

###master data
{
sec1 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 1.csv",
                 col_types = cols(.default = col_character(),LONGITUDE = col_number(),LATITUDE = col_number(),
                                  WEIGHT = col_number(), SBJNUM = col_number()))
sec2 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 2.csv", 
                 col_types = cols(.default = col_character(),PPI_PROB = col_number(), 
                                  PPI_SCORE = col_number(), SBJNUM = col_number()))
sec3 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 3.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec4 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 4.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec5 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 5.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec6.1 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 6.1.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec6.2 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 6.2.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec6.3 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 6.3.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec7.1 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 7.1.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec7.2 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 7.2.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec7.3 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 7.3.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec7.4 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 7.4.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec7.5 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 7.5.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec8.1 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 8.1.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec8.2 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 8.2.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec8.3 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 8.3.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec9 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 9.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec10 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 10.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec11 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 11.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec12 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 12.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec13 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 13.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec14 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 14.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec15.1 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 15.1.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec15.2 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 15.2.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec16 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 16.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
sec17 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/all/Section 17.csv",col_types = cols(.default = col_character(),SBJNUM = col_number()))
}

#da_master <- inner_join(sec1,sec2,sec3,sec4,sec5,sec6.1,sec6.2,sec6.3,sec7.1,
#                        sec7.2,sec7.3,sec7.4,sec7.5,sec8.1,sec8.2,sec8.3,sec9,
#                        sec10,sec11,sec12,sec13,sec14,sec15.1,sec15.2,sec6,sec17,
#                        by=c("COUNTRY","YEAR","SBJNUM"))

da_master <- inner_join(sec1,sec2,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec3,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec4,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec5,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec6.1,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec6.2,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec6.3,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec7.1,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec7.2,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec7.3,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec7.4,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec7.5,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec8.1,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec8.2,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec8.3,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec9,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec10,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec11,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec12,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec13,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec14,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec15.1,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec15.2,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec16,by=c("COUNTRY","YEAR","SBJNUM")) %>%
  inner_join(.,sec17,by=c("COUNTRY","YEAR","SBJNUM"))

indonesia18 <- read_csv("C:/Users/maish.KTPDCLHB1JQV2/Kantar/Financial Inclusion Insights - Datathon/Codebook/Dataset/Indo_2018.csv", col_types = cols(.default = col_character(),LONGITUDE = col_number(),LATITUDE = col_number(),
                                         WEIGHT = col_number(), SBJNUM = col_number(),PPI_PROB = col_number(), 
                                         PPI_SCORE = col_number()))
da_master <- bind_rows(da_master,indonesia18)
write.csv(da_master,gzfile("C:/Users/maish.KTPDCLHB1JQV2/OneDrive - Kantar/2019/Datathon/FIIdata_1126.csv.gz"),row.names = FALSE)


rr<-read.csv("C:/Users/maish.KTPDCLHB1JQV2/OneDrive - Kantar/2019/Datathon/FIIdata_1126.csv.gz")


t13$CLUSTER <- as.numeric(t13$CLUSTER)
u13$CLUSTER <- as.numeric(u13$CLUSTER)
n14$CLUSTER <- as.numeric(n14$CLUSTER)
u14$CLUSTER <- as.numeric(u14$CLUSTER)
n15$CLUSTER <- as.numeric(n15$CLUSTER)
##10/25 New section 1 with new cluster
  da_name <- c("u14","u13","n14","n15")
  key <- c("SBJNUM","COUNTRY","YEAR")
  sec <- c(key,"CLUSTER")
  m_sec <- select(t13,sec)
  for(i in 1:length(da_name)){
    m_sec <- rbind(m_sec,select(eval(parse(text=da_name[i])),sec))
  }
  write.csv(m_sec,paste0("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Sec1_fix.csv")) 
 
  
  #m_sec <- read.csv("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Sec1_fix.csv", stringsAsFactors=FALSE)
                                                                                                                                                       
  
  m_sec$COUNTRY <- as.character(m_sec$COUNTRY)
  m_sec$CLUSTER <- as.character(m_sec$CLUSTER)
  new_sec1 <- left_join(sec1,m_sec,by=c("COUNTRY","YEAR","SBJNUM"))
  new_sec1$a <- coalesce(new_sec1$CLUSTER.y,new_sec1$CLUSTER.x)
  new_sec1[which(new_sec1$COUNTRY=="Nigeria" & new_sec1$YEAR=="2015"),10] <- NA

  write.csv(new_sec1,paste0("C:/Users/maish.KTPDCLHB1JQV2/Intermedia Survey Institute/DA Team - General/Shiyun/2019/Datathon/Data/Sec1_update.csv"))
  
  
  temp <-  select(m_sec, SBJNUM, COUNTRY, YEAR, CLUSTER) %>%
    filter(COUNTRY=="Uganda" & YEAR=="2014" &  SBJNUM==120 )
  view(temp)