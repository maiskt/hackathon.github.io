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
recode GN7 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
recode GN8 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind18.

recode GN1 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN3 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN4 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN5 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
recode GN7 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
recode GN8 (-3 thru -2 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP7.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ind17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE ken17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE nga17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE pak17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE tza17.

recode GN2_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


DATASET ACTIVATE uga17.

recode GN2_1 (98,99= 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP1.
recode GN2_2 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP2.
recode GN2_3 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP3.
recode GN3_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP4.
recode GN4(98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP5.
*Gn6 was asked "to what extent do you typically agree with the final decisions about how your household's income is usually spent.".
recode GN7_1 (98,99 = 99)(1=1)(2=2)(3=3)(4=4)(5=5) into ECO_EMP6.
*GN10 asks the question from a different perspective.
recode GN10(97,98,99 = 99)(1=5)(2=4)(3=3)(4=2)(5=1) into ECO_EMP7.

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

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR ECO_EMP1 ECO_EMP2 ECO_EMP3 ECO_EMP4 ECO_EMP5 ECO_EMP6 ECO_EMP7 ECO_EMP8  .


dataset close all.

*Labels.
variable labels ECO_EMP1	"Your typical involvement in deciding how to spend your household’s income"
ECO_EMP2	"Your typical involvement in deciding how your household’s income is spent on basic needs like food and clothing"
ECO_EMP3	"Your typical involvement in deciding how your household’s income is spent on other things beyond basic needs"
ECO_EMP4	"Influences you have on the final decision to spend your household's income"
ECO_EMP5	"Likeliness you voice disagreement if you happened to disagree with a typical decision about how your household’s income is spent"
ECO_EMP6	"You make the final decision on how your money is spent or saved"
ECO_EMP7	"You trust financial service providers to keep your personal information private unless you allow it to be shared".

value labels ECO_EMP1 1"Very uninvolved" 2"Somewhat uninvolved" 3"Neither uninvolved, nor involved" 4"Somewhat involved" 5"Very involved" 99"DK/REF".
value labels ECO_EMP2  1"Very uninvolved" 2"Somewhat uninvolved" 3"Neither uninvolved, nor involved" 4"Somewhat involved" 5"Very involved" 99"DK/REF".
value labels ECO_EMP3  1"Very uninvolved" 2"Somewhat uninvolved" 3"Neither uninvolved, nor involved" 4"Somewhat involved" 5"Very involved" 99"DK/REF".
value labels ECO_EMP4 1"None"  2"A little" 3"About half" 4"Most" 5"Almost all" 99"DK/REF".
value labels ECO_EMP5 1"Very unlikely" 2"Somewhat unlikely" 3"Neither unlikely, nor likely" 4"Somewhat likely" 5"Very likely" 99"DK/REF".
value labels ECO_EMP6 1"Strongly disagree" 2"Somewhat disagree" 3"Neither disagree, nor agree" 4"Somewhat agree" 5"Strongly agree" 99"DK/REF".
value labels ECO_EMP7 1"Strongly disagree" 2"Somewhat disagree" 3"Neither disagree, nor agree" 4"Somewhat agree" 5"Strongly agree" 99"DK/REF".


