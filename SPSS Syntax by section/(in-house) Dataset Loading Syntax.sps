* Encoding: UTF-8.
*Dataset loading syntax.

*Bangladesh.
get file = "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Bangladesh-FII-wave 1_Jane-3-2014(in-house).sav".
    dataset name bng13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Bangladesh".
get file = "//ARCHIVE/Sundries$/2016 and before/2014 In House/FSP_Final_Bangladesh_w2_10162014(in-house).sav".
    dataset name bng14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Bangaldesh/Year 2015/Raw-Bangladesh DFS study_Wave 3-10192015.sav".
    dataset name bng15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh". 
get file = "W:/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/ASIA/BANGLADESH GATES-16-1-BAN-QNT/DATA/Bangladesh DFS study_Wave 4 Final data (Revised)_weight(not final).sav".
    dataset name bng16.
    compute YEAR = 2016.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file = "W:/GATES FII PROJECT FOLDERS/GATES FII Wave 5/Data/Final data/Public data with original GPS/FII Bangladesh 2017 final (public)_new DV+GPS.SAV".
    dataset name bng17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file = "W:/GATES FII PROJECT FOLDERS/GATES FII Wave 6/BANGLADESH/DATA/FII Bangladesh 2018 Final (public).sav".
    dataset name bng18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
  *India.
 get file = "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_FII-India-wave1_05-30-2014(in-house).sav".
    dataset name ind13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
 get file = "//ARCHIVE/Sundries$/2016 and before/2014 In House/FSP_Final_India_w2_02242015(in-house).sav".
    dataset name ind14.
    compute YEAR = 2014.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_India_W3 (in house).sav".
    dataset name ind15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII India 2016 (in house).sav".
    dataset name ind16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "//ARCHIVE/Sundries$/2017/FII final data/FII India 2017 final.sav".
    dataset name ind17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
 get file = "//ARCHIVE/Sundries$/2018/FII India 2018 Final (public).sav".
    dataset name ind18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
  *Indonesia.
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Indonesia/Indonesia DFS Study 2014.sav".
    dataset name ida14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables ID = SBJNUM.
    compute COUNTRY = "Indonesia".              
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Indonesia/SPSS_DFS 2015_Final_6060_19012016.sav".
    dataset name ida15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Indonesia".        
 get file = "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII Indonesia 2016 (in house).sav".
    dataset name ida16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Indonesia".        
*Kenya.
get file = "W:/GATES FII PROJECT FOLDERS/DATATHON/Data/Public data with GPS/FII Kenya 2013 (public+GPS).sav".
    DATASET NAME ken13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "//archive/Sundries$/2016 and before/FII Kenya/Year 2014/FSP-Kenya-w2-12092014.sav" .
    dataset name ken14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Kenya_W3 (in house).sav".
    dataset name ken15. 
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "//archive/Sundries$/2016 and before/2016 final data/FII Kenya 2016 (in house).sav".
    dataset name ken16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "//ARCHIVE/Sundries$/2017/FII final data/FII Kenya 2017 final.sav".
    dataset name ken17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
  *Nigeria.
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Nigeria/Year 2014/Ng_xi/WAVE 1/Final Data/Final_Nigeria-FII-wave 1-7-29-2014(in-house).sav".
    dataset name nga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Nigeria/Year 2014/FSP_Final_Nigeria_W2-11082014.sav".
    dataset name nga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Nigeria_W3 (in house).sav".
    dataset name nga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Nigeria 2016 (in house).sav".
    dataset name nga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "//ARCHIVE/Sundries$/2017/FII final data(not public)/FII 2017 Nigeria final(not apply weight ppi...).sav".
    dataset name nga17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables SbjNum = SBJNUM.
    compute COUNTRY = "Nigeria".
  *Pakistan.
 get file = "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Pakistan-FII-wave 1_June-3-2014(in-house).sav".
    dataset name pak13.
    compute YEAR = 2013.
    string COUNTRY (A10).
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".        
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Pakistan/Pakistan 2014/FSP_Final_Pakistan_W2_1072015.sav".
    dataset name pak14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Pakistan".  
 get file = "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Pakistan_W3 (in house).sav".
    dataset name pak15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".  
 get file = "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Pakistan 2016 (in house).sav".
    dataset name pak16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 
 get file = "//ARCHIVE/Sundries$/2017/FII final data/FII 2017 Pakistan final.sav".
    dataset name pak17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 
  *Tanzania.
 get file = "//ARCHIVE/Sundries$/2016 and before/2013 In House/Final_Tanzania-FII-wave1-2014-06-09(in house).sav".
    dataset name tza13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables NEWSERIAL = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Tanzania/TZ_XI/W2/FSP-Tanzania-W2-Final-12182014(in house)_XI.sav".
    dataset name tza14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "//ARCHIVE/Sundries$/2016 and before/2015 final data/in house/FSP_Final_Tanzania_W3 (in house).sav".
    dataset name tza15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Tanzania 2016 (in house).sav".
    dataset name tza16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "//ARCHIVE/Sundries$/2017/FII final data/FII Tanzania 2017 final.SAV".
    dataset name tza17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
  *Uganda.
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2014/Final_Uganda-FII-wave 1_7-8-2014(in-house)_location.sav".
    dataset name uga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables fserial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2014/FSP_Final_Uganda_W2_10312014(in house).sav".
    dataset name uga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "//ARCHIVE/Sundries$/2016 and before/FII Uganda/Year 2015/Final_FII_Wave3_Uganda_09172015.sav".
    dataset name uga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "//ARCHIVE/Sundries$/2016 and before/2016 final data/FII Uganda 2016 (in house).sav".
    dataset name uga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "//ARCHIVE/Sundries$/2017/FII final data(not public)/FII Uganda 2017 final.sav".
    dataset name uga17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

execute.
*It will take a minute. Then run your syntax of choice.
* When finished, run:
        dataset close ALL.
*and DO NOT save the data.