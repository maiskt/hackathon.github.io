* Encoding: UTF-8.
*Encoding: UTF-8.
*Dataset loading syntax.
cd "C:\Users\LENOVO\Intermedia Survey Institute\DA Team - General\Mitchell\ANONGPS data".
*Bangladesh.
get file = "FII Bangladesh 2013 (public+ANONGPS).sav".
    dataset name bng13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Bangladesh".
get file = "FII Bangladesh 2014 (public+ANONGPS).sav".
    dataset name bng14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file = "FII Bangladesh 2015 (public+ANONGPS).sav".
    dataset name bng15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh". 
get file = "FII Bangladesh 2016 (public+ANONGPS).sav".
    dataset name bng16.
    compute YEAR = 2016.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file =  "FII Bangladesh 2017 (public+ANONGPS).sav".
    dataset name bng17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
 get file = "FII Bangladesh 2018 (public+ANONGPS).sav".
    dataset name bng18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".
  *India.
 get file =  "FII India 2013 (public+ANONGPS).sav".
    dataset name ind13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
 get file = "FII India 2014 (public+ANONGPS).sav".
    dataset name ind14.
    compute YEAR = 2014.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "FII India 2015 (public+ANONGPS).sav".
    dataset name ind15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "FII India 2016 (public+ANONGPS).sav".
    dataset name ind16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
get file = "FII India 2017 (public+ANONGPS).sav".
    dataset name ind17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
 get file = "FII India 2018 (public+ANONGPS).sav".
    dataset name ind18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".
  *Indonesia.
 get file = "FII Indonesia 2014 (public+ANONGPS).sav".
    dataset name ida14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables ID = SBJNUM.
    compute COUNTRY = "Indonesia".              
 get file = "FII Indonesia 2015 (public+ANONGPS).sav".
    dataset name ida15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Indonesia".        
 get file = "FII Indonesia 2016 (public+ANONGPS).sav".
    dataset name ida16.
    compute YEAR = 2016.
    compute COUNTRY = "Indonesia".        
*Kenya.
get file = "FII Kenya 2013 (public+ANONGPS).sav".
    DATASET NAME ken13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "FII Kenya 2014 (public+ANONGPS).sav".
    dataset name ken14.
get file = "FII Kenya 2015 (public+ANONGPS).sav".
    dataset name ken15. 
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "FII Kenya 2016 (public+ANONGPS).sav".
    dataset name ken16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
get file = "FII Kenya 2017 (public+ANONGPS).sav".
    dataset name ken17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".
  *Nigeria.
 get file = "FII Nigeria 2013 (public+sbjnum).sav".
    dataset name nga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "FII Nigeria 2014 (public+ANONGPS).sav".
    dataset name nga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "FII Nigeria 2015 (public+ANONGPS).sav".
    dataset name nga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "FII Nigeria 2016 (public+ANONGPS).sav".
    dataset name nga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".
 get file = "FII Nigeria 2017 (public+ANONGPS).sav".
    dataset name nga17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables SbjNum = SBJNUM.
    compute COUNTRY = "Nigeria".
  *Pakistan.
 get file = "FII Pakistan 2013 (public+ANONGPS).sav".
    dataset name pak13.
    compute YEAR = 2013.
    string COUNTRY (A10).
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".        
 get file = "FII Pakistan 2014 (public+ANONGPS).sav".
    dataset name pak14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Pakistan".  
 get file = "FII Pakistan 2015 (public+ANONGPS).sav".
    dataset name pak15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".  
 get file = "FII Pakistan 2016 (public+ANONGPS).sav".
    dataset name pak16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 
 get file = "FII Pakistan 2017 (public+ANONGPS).sav".
    dataset name pak17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 
  *Tanzania.
 get file = "FII Tanzania 2013 (public+sbjnum).sav".
    dataset name tza13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "FII Tanzania 2014 (public+ANONGPS).sav".
    dataset name tza14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "FII Tanzania 2015 (public+ANONGPS).sav".
    dataset name tza15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "FII Tanzania 2016 (public+ANONGPS).sav".
    dataset name tza16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
 get file = "FII Tanzania 2017 (public+ANONGPS).sav".
    dataset name tza17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 
  *Uganda.
 get file = "FII Uganda 2013 (public+ANONGPS).sav".
    dataset name uga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "FII Uganda 2014 (public+ANONGPS).sav".
    dataset name uga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "FII Uganda 2015 (public+ANONGPS).sav".
    dataset name uga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "FII Uganda 2016 (public+ANONGPS).sav".
    dataset name uga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".
 get file = "FII Uganda 2017 (public+ANONGPS).sav".
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
