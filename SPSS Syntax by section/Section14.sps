﻿* Encoding: UTF-8.
*Section 14.
dataset close all.
insert file = "C:/Users/mitchell.shuey/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/mitchell.shuey/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

INCOME_EARNER
MAIN_EARNER
FIN_SITUATION
FIN_ATT1
FIN_ATT2
FIN_ATT3
FIN_ATT4
FIN_ATT5
FIN_ATT6
FIN_ATT7
SCH_FEE_PRB1
SCH_FEE_PRB2
SCH_FEE_PRB3
SCH_FEE_PRB4
SCH_FEE_PRB5

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind18.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind17.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken17.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga17.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak17.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza17.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga17.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind16.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida16.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken16.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga16.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak16.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza16.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga16.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind15.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida15.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken15.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga15.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak15.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza15.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga15.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind14.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida14.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken14.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga14.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak14.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza14.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga14.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind13.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken13.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga13.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak13.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza13.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga13.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR INCOME_EARNER MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 FIN_ATT6 FIN_ATT7 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3  SCH_FEE_PRB4 SCH_FEE_PRB5.


*dataset close all.