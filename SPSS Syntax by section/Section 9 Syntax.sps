﻿* Encoding: UTF-8.
*IFG Syntax*
** 2014-2017 for BELONG_INFML, IFI18/19 only. 
*.
*Bangladesh***.
*2013.
*2014.
*2015.
*2016.
dataset activate bng16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 3  R_NOINFML = 2.
if IFI25 = 3 or IFI25 = 6 R_NOINFML =  3.
if IFI25 = 1 or IFI25 = 4 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2017.
dataset activate bng17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.

save outfile = "data/bng17.sav"
/KEEP= SBJNUM COUNTRY YEAR BELONG_INFML.
*2018.

*India***.
*2013.
*2014.
*2015.
dataset activate ind15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI22 = 1 R_INFML = 1.
if IFI22 = 3 or IFI22 = 4 R_INFML = 2.
if IFI22 = 11 R_INFML = 3.
if IFI22 = 12 R_INFML = 4.
missing values R_INFML (0).

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 4  R_NOINFML = 2.
if IFI25 = 3 or IFI25 = 6 R_NOINFML =  3.
if IFI25 = 1 or IFI25 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*2016.
dataset activate ind16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 4  R_NOINFML = 2.
if IFI24 = 3 or IFI24 = 6 R_NOINFML =  3.
if IFI24 = 1 or IFI24 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2017.
dataset activate ind17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.
*2018.

*Indonesia***.
*2014.
*2015.
dataset activate ida15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI22 = 1 R_INFML = 1.
if IFI22 = 3 or IFI22 = 4 R_INFML = 2.
if IFI22 = 11 R_INFML = 3.
if IFI22 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 4  R_NOINFML = 2.
if IFI25 = 3 or IFI25 = 6 R_NOINFML =  3.
if IFI25 = 1 or IFI25 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2016.
dataset activate ida16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFL = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 3  R_NOINFML = 2.
if IFI24 = 5 R_NOINFML =  3.
if IFI24 = 1 or IFI24 = 4 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*Kenya***.
*2013 N/A.
*2014.
*2015.
dataset activate ken15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 3 or IFI21 = 4 R_INFML = 2.
if IFI21 = 11 R_INFML = 3.
if IFI21 = 12 R_INFL = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 4 R_NOINFML = 2.
if IFI24 = 3 or IFI24 = 6 R_NOINFML = 3.
if IFI24 = 1 or IFI24 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2016.
dataset activate ken16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 3 R_NOINFML = 2.
if IFI24 = 5 R_NOINFML = 3.
if IFI24 = 1 or IFI24 = 4 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2017.
dataset activate ken17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*Nigeria***.
*2013.
dataset activate nga13.

compute R_NOINFML = 0.
if IFI3 = 1 R_NOINFML = 1.
if IFI3 = 2 or IFI3 = 3 or IFI3 = 7.

save outfile = "data/nga13.sav"
/keep = SBJNUM COUNTRY YEAR R_NOINFML.

*2014.

*2015.
dataset activate nga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 3 or IFI21 = 4 R_INFML = 2.
if IFI21 = 11 R_INFML = 3.
if IFI21 = 12 R_INFL = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 4 R_NOINFML = 2.
if IFI24 = 3 or IFI24 = 6 R_NOINFML = 3.
if IFI24 = 1 or IFI24 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML.

*2016.
dataset activate nga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 3  R_NOINFML = 2.
if IFI25 = 5 R_NOINFML =  3.
if IFI25 = 4 or IFI21 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*2017.
dataset activate nga17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML .

*Pakistan***.
*2013.
*2014.
*2015.
dataset activate pak15.
compute R_INFML = 0.
if ifi22 = 1 R_INFML = 1.
if ifi22 = 3 or ifi22 = 4 R_INFML = 2.
if ifi22 = 12 R_INFML = 3.
if ifi22 = 11 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if ifi25 = 2 R_NOINFML = 1.
if ifi25 = 4 R_NOINFML = 2.
if ifi25 = 3 or ifi25 = 6 R_NOINFML = 3.
if ifi25 = 1 or ifi25 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

missing values R_NOINFML 0.
save outfile = "data/pak15.sav"
/keep = SBJNUM COUNTRY YEAR R_INFML R_NOINFML.

*2016.
dataset activate pak16.
compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 3  R_NOINFML = 2.
if IFI25 = 5 R_NOINFML =  3.
if IFI25 = 4 or IFI21 = 5 R_NOINFML = 4.
save outfile = "data/pak16.sav"
/keep = SBJNUM COUNTRY YEAR R_INFML R_NOINFML.

*2017.

*Tanzania***.
*2013.
*2014.
*2015.
dataset activate tza15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 3 or IFI21 = 4 R_INFML = 2.
if IFI21 = 12 R_INFML = 3.
if IFI21 = 11 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 4 R_NOINFML = 2.
if IFI24 = 3 or IFI24 = 6 R_NOINFML = 3.
if IFI24 = 1 or IFI24 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*2016.
dataset activate tza16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 3  R_NOINFML = 2.
if IFI25 = 5 R_NOINFML =  3.
if IFI25 = 4 or IFI21 = 5 R_NOINFML = 4.
save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*2017.
dataset activate tza17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

*Uganda***.
*2013.
*2014.
*2015.
dataset activate uga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 3 or IFI21 = 4 R_INFML = 2.
if IFI21 = 12 R_INFML = 3.
if IFI21 = 11 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI24 = 2 R_NOINFML = 1.
if IFI24 = 4 R_NOINFML = 2.
if IFI24 = 3 or IFI24 = 6 R_NOINFML = 3.
if IFI24 = 1 or IFI24 = 5 R_NOINFML = 4.
missing values R_NOINFML 0.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.
*2016.
dataset activate uga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

compute R_INFML = 0.
if IFI21 = 1 R_INFML = 1.
if IFI21 = 4 R_INFML = 2.
if IFI21 = 3 R_INFML = 3.
if IFI21 = 12 R_INFML = 4.
missing values R_INFML 0.

compute R_NOINFML = 0.
if IFI25 = 2 R_NOINFML = 1.
if IFI25 = 3  R_NOINFML = 2.
if IFI25 = 5 R_NOINFML =  3.
if IFI25 = 4 or IFI21 = 5 R_NOINFML = 4.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.
*2017.
dataset activate uga17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML.

dataset close ALL.







