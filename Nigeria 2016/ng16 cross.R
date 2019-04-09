#NG 16 Harmonization
library(haven)
ng16 <- read_sav("//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Nigeria 2016 (in house).sav")
bg18 <- read_sav("C:/Users/shueym/Documents/GitHub/Harmonization/Bangladesh 2018 Final w GPS 4-8.sav")
attr(ng16, "lat") <- "AA16_1"
attr(ng16, "long") <- "AA16_2"
attr(ng16, "clusterID") <- "AA15"
attr(ng16, "clusterType") <- "AA4"
attr(ng16, "countrycode") <- "NGA"
View(attributes(ng16))
cb_ng16 <- codebook_table(ng16)
cb_bg18 <- codebook_table(bg18)
cb_ng16$Category <- str_extract(cb_ng16$name, "^([[:alpha:]])*")
cb_bg18$Category <- str_extract(cb_bg18$name, "^([[:alpha:]])*")
cross_table <- merge(table(cb_ng16$Category), table(cb_bg18$Category), by="Var1", all=T)
