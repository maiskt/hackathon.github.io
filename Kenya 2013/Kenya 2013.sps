* Encoding: UTF-8.
******Kenya 2013 datathon******.
compute Year=2013.
formats Year (f4.0).

string Country (a12).
compute country="Kenya".

rename variables SERIAL=Serial.
rename variables WEIGHT=weight.

compute ur=aa8.

compute AA5=aa7.

******.
*ppi_score ppi_prob ppi_cutoff.

compute access_phone=0.
if mt1=1 or mt2=1 access_phone=1.

compute own_phone=0.
if mt1=1 own_phone=1.







SAVE DATA COLLECTION
  /OUTFILE='C:/Users/mais/Documents/GitHub/Harmonization/Kenya 2013/Kenya 2013.sav'
  /METADATA='C:/Users/mais/Documents/GitHub/Harmonization/Kenya 2013/Kenya 2013.MDD'
  /KEEP Serial weight ur .
