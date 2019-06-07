#Packages
library(foreign)
library(dplyr)
library(haven)

##Input data

{#Bangladesh
  b13<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b14<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b15<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b16<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b17<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  b18<-read.spss("Z:/Wave 6/Datathon/Data/Bangladesh 2013-2018/FII Bangladesh 2018 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
 #India
  i13<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i14<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i15<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i16<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i17<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  i18<-read.spss("Z:/Wave 6/Datathon/Data/India 2013-2018/FII India 2018 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Indonesia
  ido14<-read.spss("Z:/Wave 6/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  ido15<-read.spss("Z:/Wave 6/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  ido16<-read.spss("Z:/Wave 6/Datathon/Data/Indonesia 2014-2016/FII Indonesia 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Kenya
  k13<-read.spss("Z:/Wave 6/Datathon/Data/Kenya 2013-2017/FII Kenya 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k14<-read.spss("Z:/Wave 6/Datathon/Data/Kenya 2013-2017/FII Kenya 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k15<-read.spss("Z:/Wave 6/Datathon/Data/Kenya 2013-2017/FII Kenya 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k16<-read.spss("Z:/Wave 6/Datathon/Data/Kenya 2013-2017/FII Kenya 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  k17<-read.spss("Z:/Wave 6/Datathon/Data/Kenya 2013-2017/FII Kenya 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Nigeria
  n13<-read.spss("Z:/Wave 6/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2013 (public+sbjnum).sav",to.data.frame=T,use.value.labels = T)
  n14<-read.spss("Z:/Wave 6/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n15<-read.spss("Z:/Wave 6/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n16<-read.spss("Z:/Wave 6/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  n17<-read.spss("Z:/Wave 6/Datathon/Data/Nigeria 2013-2017/FII Nigeria 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Pakistan
  p13<-read.spss("Z:/Wave 6/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p14<-read.spss("Z:/Wave 6/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p15<-read.spss("Z:/Wave 6/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p16<-read.spss("Z:/Wave 6/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  p17<-read.spss("Z:/Wave 6/Datathon/Data/Pakistan 2013-2017/FII Pakistan 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Tanzania
  t13<-read.spss("Z:/Wave 6/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2013 (public+sbjnum).sav",to.data.frame=T,use.value.labels = T)
  t14<-read.spss("Z:/Wave 6/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t15<-read.spss("Z:/Wave 6/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t16<-read.spss("Z:/Wave 6/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  t17<-read.spss("Z:/Wave 6/Datathon/Data/Tanzania 2013-2017/FII Tanzania 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  #Uganda
  u13<-read.spss("Z:/Wave 6/Datathon/Data/Uganda 2013-2017/FII Uganda 2013 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u14<-read.spss("Z:/Wave 6/Datathon/Data/Uganda 2013-2017/FII Uganda 2014 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u15<-read.spss("Z:/Wave 6/Datathon/Data/Uganda 2013-2017/FII Uganda 2015 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u16<-read.spss("Z:/Wave 6/Datathon/Data/Uganda 2013-2017/FII Uganda 2016 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
  u17<-read.spss("Z:/Wave 6/Datathon/Data/Uganda 2013-2017/FII Uganda 2017 (public+ANONGPS).sav",to.data.frame=T,use.value.labels = T)
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
  var_list <- read_excel("GitHub/Harmonization1/Variable list_2019.xlsx")
  var_list <- as.data.frame(var_list)[which(var_list$Section==sec_num),c(2,3)]
  sec <- as.character(var_list$`Variable name in Datathon`)
  sec <- c(key,sec)
  m_sec <- select(b18,sec)
  for(i in 1:length(da_name)){
    m_sec <- rbind(m_sec,select(eval(parse(text=da_name[i])),sec))
  }
  write.csv(m_sec,paste0("Z:/Wave 6/Datathon/Data/Section ",sec_num,".csv")) 
  write_sav(m_sec,paste0("Z:/Wave 6/Datathon/Data/Section ",sec_num,".sav"))
}

##Section 3
merge.FII.da(3)

##Section 6.1
merge.FII.da(6.1)

##Section 6.1
merge.FII.da(6.2)

