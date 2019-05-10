# Dataton Dataset Wrangling
# Hit alt + o to shrink everything!
#
savlist <- data.frame(
                      path = c(#---- 
                        #Bangladesh
                        "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Bangladesh-FII-wave 1_Jane-3-2014(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/2014 In House/FSP_Final_Bangladesh_w2_10162014(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Bangaldesh/Year 2015/Raw-Bangladesh DFS study_Wave 3-10192015.sav",
                        "W:/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/ASIA/BANGLADESH GATES-16-1-BAN-QNT/DATA/Bangladesh DFS study_Wave 4 Final data (Revised)_weight(not final).sav",
                        "W:/GATES FII PROJECT FOLDERS/GATES FII Wave 5/Data/Final data/Public data with original GPS/FII Bangladesh 2017 final (public)_new DV+GPS.SAV",
                        "W:/GATES FII PROJECT FOLDERS/GATES FII Wave 6/BANGLADESH/DATA/FII Bangladesh 2018 Final (public).sav",
                        #India
                        "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_FII-India-wave1_05-30-2014(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/2014 In House/FSP_Final_India_w2_02242015(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_India_W3 (in house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII India 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data/FII India 2017 final.sav",
                        "//ARCHIVE/Sundries$/2018/FII India 2018 Final (public).sav",
                        #Indonesia
                        "//ARCHIVE/Sundries$/2016 and before/FII Indonesia/Indonesia DFS Study 2014.sav",              
                        "//ARCHIVE/Sundries$/2016 and before/FII Indonesia/SPSS_DFS 2015_Final_6060_19012016.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII Indonesia 2016 (in house).sav",
                        #Kenya
                        "W:/GATES FII PROJECT FOLDERS/DATATHON/Data/Public data with GPS/FII Kenya 2013 (public+GPS).sav",
                        "//archive/Sundries$/2016 and before/FII Kenya/Year 2014/FSP-Kenya-w2-12092014.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Kenya_W3 (in house).sav",
                        "//archive/Sundries$/2016 and before/2016 final data/FII Kenya 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data/FII Kenya 2017 final.sav",
                        #Nigeria
                        "//ARCHIVE/Sundries$/2016 and before/FII Nigeria/Year 2014/Ng_xi/WAVE 1/Final Data/Final_Nigeria-FII-wave 1-7-29-2014(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Nigeria/Year 2014/FSP_Final_Nigeria_W2-11082014.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Nigeria_W3 (in house).sav",
                        "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Nigeria 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data(not public)/FII 2017 Nigeria final(not apply weight ppi...).sav",
                        #Pakistan
                        "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Pakistan-FII-wave 1_June-3-2014(in-house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Pakistan/Pakistan 2014/FSP_Final_Pakistan_W2_1072015.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Pakistan_W3 (in house).sav",
                        "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Pakistan 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data/FII 2017 Pakistan final.sav",
                        #Tanzania
                        "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Tanzania-FII-wave1-2014-06-09(in house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Tanzania/TZ_XI/W2/FSP-Tanzania-W2-Final-12182014(in house)_XI.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Tanzania_W3 (in house).sav",
                        "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Tanzania 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data/FII Tanzania 2017 final.SAV",
                        #Uganda
                        "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2014/Final_Uganda-FII-wave 1_7-8-2014(in-house)_location.sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2014/FSP_Final_Uganda_W2_10312014(in house).sav",
                        "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2015/Final_FII_Wave3_Uganda_09172015.sav",
                        "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII Uganda 2016 (in house).sav",
                        "//ARCHIVE/Sundries$/2017/FII final data(not public)/FII Uganda 2017 final.sav"
                      ),
                      country = c(rep("Bangladesh", 6), #----
                                  rep("India", 6),
                                  rep("Indonesia", 3),
                                  rep("Kenya", 5),
                                  rep("Nigeria", 5),
                                  rep("Pakistan", 5),
                                  rep("Tanzania", 5),
                                  rep("Uganda", 5)),
                      
                      year = c(2013:2018, #----
                               2013:2018,
                               2014:2016,
                               2013:2017,
                               2013:2017,
                               2013:2017,
                               2013:2017,
                               2013:2017),
                      
                      serials = c("SERIAL", #----
                                  "QN",
                                  "QN",
                                  "Serial",
                                  "Serial",
                                  "Serial",
                                  #
                                  "serial",
                                  "Serial",
                                  "Serial",
                                  "Serial",
                                  "Serial",
                                  "Serial",
                                  #
                                  "ID",
                                  "Serial",
                                  "Serial",
                                  #
                                  "SERIAL",
                                  "QN",
                                  "serial",
                                  "Serial",
                                  "Serial",
                                  #
                                  "SERIAL",
                                  "QN",
                                  "QN",
                                  "Serial",
                                  "SbjNum",
                                  #
                                  "SERIAL",
                                  "QN",
                                  "Serial",
                                  "Serial",
                                  "Serial",
                                  #
                                  "NEWSERIAL",
                                  "serial",
                                  "SERIAL",
                                  "Serial",
                                  "Serial",
                                  #
                                  "SERIAL",
                                  "serial",
                                  "serial",
                                  "Serial",
                                  "Serial"
                      ),
                      stringsAsFactors = FALSE
)
#----
#loads datasets as a list into the variable you name
loaddatasets <- function(){z <- lapply(savlist$path, function(x) {
  print(which(savlist$path == x))
  op <-  data.frame(read_sav(x), stringsAsFactors = F)
  op$COUNTRY <-  savlist$country[which(savlist$path == x)]
  op$YEAR  <-  savlist$year[which(savlist$path == x)]
  op})
names(z) <- c(sapply(13:18, function(x) paste0("bng", x)),
              sapply(13:18, function(x) paste0("ind", x)),
              sapply(14:16, function(x) paste0("ida", x)),
              sapply(13:17, function(x) paste0("ken", x)),
              sapply(13:17, function(x) paste0("nga", x)),
              sapply(13:17, function(x) paste0("pak", x)),
              sapply(13:17, function(x) paste0("tza", x)),
              sapply(13:17, function(x) paste0("uga", x)))
z
}

dsets <- loaddatasets()

#One dataset selected (just the head)
dsets$bng15 %>% head

#One variable in one dataset selected (just the head)
dsets$bng13$SERIAL %>% head

#One observation selected
dsets$tza15$AA10[1]
