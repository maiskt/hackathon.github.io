* Encoding: UTF-8.
*Section XX.
dataset close all.
insert file = "C:/Users/shueym/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/shueym/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

recode GN1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN4 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN5 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
recode GN6 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
recode GN7 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
recode GN8 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP8.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind18.

recode GN1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN4 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN5 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
recode GN6 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
recode GN7 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
recode GN8 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP8.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE uga17.

recode GN2_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN3_2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
numeric ECO_EMP6.
recode GN7_1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.
*GN10 asks the question from a different perspective.
numeric ECO_EMP8.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ida16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE uga16.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ida15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE uga15.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ida14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE uga14.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8 .


DATASET ACTIVATE uga13.

numeric ECO_EMP1.
numeric ECO_EMP2.
numeric ECO_EMP3.
numeric ECO_EMP4.
numeric ECO_EMP5.
numeric ECO_EMP6.
numeric ECO_EMP7.
numeric ECO_EMP8.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


dataset close all.
