library(foreign)


###### read section spss data into R
{#2018
  
  b18_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2018 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i18_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2018 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  #2017
  
  b17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  k17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Kenya 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  n17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Nigeria 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  p17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Pakistan 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  t17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Tanzania 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  u17_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Uganda 2017 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  #2016
  
  b16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  ido16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Indoensia 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  k16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Kenya 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  n16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Nigeria 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  p16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Pakistan 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  t16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Tanzania 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  u16_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Uganda 2016 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  #2015
  
  b15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  ido15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Indoensia 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  k15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Kenya 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  n15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Nigeria 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  p15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Pakistan 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  t15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Tanzania 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  u15_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Uganda 2015 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  #2014
  
  b14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  ido14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Indoensia 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  k14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Kenya 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  n14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Nigeria 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  p14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Pakistan 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  t14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Tanzania 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  u14_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Uganda 2014 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  #2013
  
  b13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Bangladesh 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  i13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/India 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  k13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Kenya 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  n13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Nigeria 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  p13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Pakistan 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  t13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Tanzania 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
  u13_5<-read.spss("Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Uganda 2013 datathon s5.sav",to.data.frame=TRUE,use.value.labels = T)
  
}

######combine datasets by year (easiler to track which data has problem)
S5_18<-rbind(b18_5,i18_5)

S5_17<-rbind(b17_5, i17_5, k17_5, n17_5, p17_5, t17_5, u17_5)

S5_16<-rbind(b16_5, i16_5, ido16_5, k16_5, n16_5, p16_5, t16_5, u16_5)

S5_15<-rbind(b15_5, i15_5, ido15_5, k15_5, n15_5, p15_5, t15_5, u15_5)

S5_14<-rbind(b14_5, i14_5, ido14_5, k14_5, n14_5, p14_5, t14_5, u14_5)

S5_13<-rbind(b13_5, i13_5, k13_5, n13_5, p13_5, t13_5, u13_5)

S5<-rbind(S5_18,S5_17,S5_16,S5_15,S5_14,S5_13)

###### output csv
write.csv(S5, "Z:/Ask permission from Xiaoyan/FII 2019/Datathon/Section 5 data/Section 5.csv")

###### check obs.
y<-c("b18", "i18",
     "b17",	 "i17",	"k17","n17", "p17", "t17",	 "u17",
     "b16",	"i16",	"ido16",	"k16",	"n16", "p16",	  "t16",	"u16",
     "b15",	"i15",	"ido15",	"k15",	"n15",	"p15",	"t15",	"u15",
     "b14",	"i14",	"ido14",	"k14",	"n14",	"p14",	 "t14",	 "u14",
     "b13",	"i13",	"k13",	"n13",	"p13",	"t13",	 "u13")

tobs<-0

for (j in 1:length(y))
{
  temp<-paste0(y[j],"_5")
  
dat<- eval(parse(text=temp))
 
 tobs<-tobs+dim(dat)[1]
 
}

print(tobs)

dim(S5)
