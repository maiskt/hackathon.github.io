* Encoding: UTF-8.
rename variables SERIAL=Serial.
rename variables WEIGHT=weight.

compute ur=aa8.
value labels ur 1"Urban" 2"Rural".
variable labels ur"".

compute AA5=aa7.
variable labels AA5"".








SAVE DATA COLLECTION
  /OUTFILE='C:/Users/mais/Documents/GitHub/Harmonization/Kenya 2013/Kenya 2013.sav'
  /METADATA='C:/Users/mais/Documents/GitHub/Harmonization/Kenya 2013/Kenya 2013.MDD'
  /KEEP Serial weight ur .
