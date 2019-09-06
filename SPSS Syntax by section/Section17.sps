* Encoding: UTF-8.
*Section 17.
dataset close all.
insert file = "C:/Users/shueym/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/shueym/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(-2=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(-2=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(-2=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(-2=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(-2=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(-2=99) into MFIKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(-2=99) into GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(-2=99) into INFMLKM.
recode IFI14_9(1 THRU 2=1)(3=2)(4=3)(-2=99) into POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind18.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(-2=99) into BBKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(-2=99) into ATMKM.
numeric MMKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(-2=99) into BAKM.
numeric RSKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(-2=99) into MFIKM.
numeric GRPKM.
numeric INFMLKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(-2=99) into POSTKM.
numeric SACCOKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(-2=99) into COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or BAKM = 99 or MFIKM = 99 or COOPKM = 99 or ifi14_7=-2 or ifi14_8=-2 or ifi14_9=-2 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or BAKM = 3 or MFIKM = 3 or COOPKM = 3 or ifi14_7=4 or ifi14_8=4 or ifi14_9=4 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or BAKM = 2 or MFIKM = 2 or COOPKM = 2 or ifi14_7=3 or ifi14_8=3 or ifi14_9=3 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or BAKM = 1 or MFIKM = 1 or COOPKM = 1 or ifi14_7=1 or ifi14_7=2 
   or ifi14_8=1 or ifi14_8=2 or ifi14_9=1 or ifi14_9=2 or POSTKM = 1) POS = 1.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
recode IFI14_9(1 THRU 2=1)(3=2)(4=3)(99=99) into POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
numeric BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into GRPKM.
numeric INFMLKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or ifi14_3= 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or ifi14_9 = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or ifi14_3 =4 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or ifi14_9=4 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or ifi14_3 =3 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or ifi14_9=3 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or ifi14_3=1 or ifi14_3=2 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or ifi14_9=1 or ifi14_9=2 or POSTKM = 1) POS = 1.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ken17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE nga17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE pak17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE tza17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE uga17.

recode IFI14_1(1 THRU 2=1)(3=2)(4=3)(99=99) into BBKM.
recode IFI14_2(1 THRU 2=1)(3=2)(4=3)(99=99) into ATMKM.
recode IFI14_3(1 THRU 2=1)(3=2)(4=3)(99=99) into MMKM.
recode IFI14_4(1 THRU 2=1)(3=2)(4=3)(99=99) into BAKM.
recode IFI14_5(1 THRU 2=1)(3=2)(4=3)(99=99) into RSKM.
recode IFI14_6(1 THRU 2=1)(3=2)(4=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 THRU 2=1)(3=2)(4=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 THRU 2=1)(3=2)(4=3)(99=99) into SACCOKM.
recode IFI14_9(1 THRU 2=1)(3=2)(4=3)(99=99) into  COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or COOPKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or COOPKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or COOPKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or COOPKM = 1) POS = 1.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ida16.
*Ask about BPR branches and Cooperatives/Venturas.
recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
numeric MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or ifi14_9 = 99 or COOPKM = 99 or INFMLKM = 99 or ifi14_9 = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or ifi14_6=4 or ifi14_6=5 or ifi14_6=6 or 
    COOPKM = 3 or INFMLKM = 3 or ifi14_9=4 or ifi14_9=5 or ifi14_9=6) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or ifi14_6=3 or COOPKM = 2 or INFMLKM = 2 or ifi14_9=3) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or ifi14_6=1 or ifi14_6=2 or COOPKM = 1 or INFMLKM = 1 or ifi14_9=1 or ifi14_9=2) POS = 1.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ken16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE nga16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE pak16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE tza16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE uga16.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into SACCOKM.
numeric COOPKM.


compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
numeric BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
numeric BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or ifi14_3=7 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or ifi14_3 =4 or ifi14_3 =5 or ifi14_3 =6 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or ifi14_3 =3 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or ifi14_3=1 or ifi14_3=2 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ida15.
*Ask about BPR branches and Cooperatives.
recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
numeric MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into INFMLKM.
recode IFI14_10(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into POSTKM.
numeric SACCOKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or ifi14_6=7 or COOPKM = 99 or INFMLKM = 99 or POSTKM = 99 or ifi14_9=7) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or ifi14_6 =4 or ifi14_6 =5 or ifi14_6 =6 or 
    COOPKM = 3 or INFMLKM = 3 or POSTKM = 3 or ifi14_9=4 or ifi14_9=5 or ifi14_9=6) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or ifi14_6 =3 or COOPKM = 2 or INFMLKM = 2 or POSTKM = 2 or ifi14_9 =3) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or ifi14_6=1 or ifi14_6=2 or COOPKM = 1 or INFMLKM = 1 or POSTKM = 1
    or ifi14_9=1 or ifi14_9=2) POS = 1.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ken15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE nga15.
*IFI14_4 and _3 swap places accross datasets, use caution.
*Please check the places again.
recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE pak15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into ATMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into MFIKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(99=99) into GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE tza15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE uga15.

recode IFI14_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BBKM.
recode IFI14_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into ATMKM.
recode IFI14_3(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MMKM.
recode IFI14_4(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into BAKM.
recode IFI14_5(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into RSKM.
recode IFI14_6(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into MFIKM.
numeric GRPKM.
recode IFI14_8(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into INFMLKM.
numeric POSTKM.
recode IFI14_7(1 thru 2 = 1)(3=2)(4 thru 6=3)(7=99) into SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or SACCOKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or SACCOKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or SACCOKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or SACCOKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


*2014---------------------------------------------------------------------***.
*No DK option.
DATASET ACTIVATE bng14.
*Missing FF_16 options?.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind14.

recode FF16_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or MMKM = 99 or BAKM = 99 or RSKM = 99 or MFIKM = 99 or GRPKM = 99 or INFMLKM = 99 or POSTKM = 99) POS = 99.
if (BBKM = 3 or ATMKM = 3 or MMKM = 3 or BAKM = 3 or RSKM = 3 or MFIKM = 3 or GRPKM = 3 or INFMLKM = 3 or POSTKM = 3) POS = 3.
if (BBKM = 2 or ATMKM = 2 or MMKM = 2 or BAKM = 2 or RSKM = 2 or MFIKM = 2 or GRPKM = 2 or INFMLKM = 2 or POSTKM = 2) POS = 2.
if (BBKM = 1 or ATMKM = 1 or MMKM = 1 or BAKM = 1 or RSKM = 1 or MFIKM = 1 or GRPKM = 1 or INFMLKM = 1 or POSTKM = 1) POS = 1.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ida14.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ken14.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE nga14.
*DK coded as 7 here.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99 or ff16_1=7) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE pak14.
*MFI and bank are combined, therefore can't combine.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE tza14.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE uga14.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FF16_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
recode MM25(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

compute POS = 0.
if (BBKM = 99 or ATMKM = 99) POS = 99.
if (ATMKM = 3 or MMKM = 3 or ff16_1=4 or ff16_1=5 or ff16_1=6) POS = 3.
if (ATMKM = 2 or MMKM = 2 or ff16_1=3) POS = 2.
if (ATMKM = 1 or MMKM = 1 or ff16_1=1 or ff16_1=2) POS = 1.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.
*MFI and bank are combined, therefore can't combine.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ind13.
*Bank+MFI combined.
recode FFI12_1(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE ken13.

*Bank and MFI are combined.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE nga13.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7,missing=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM .


DATASET ACTIVATE pak13.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(99,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .


DATASET ACTIVATE tza13.
*labels not complete? going off of other 2013 dataset patterns.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(9,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM .


DATASET ACTIVATE uga13.
*MFI and bank are combined, therefore can't use.
numeric BBKM.
recode FFI12_2(1 thru 2 = 1)(3=2)(4 thru 6=3)(7,sysmis=99) into ATMKM.
numeric MMKM.
numeric BAKM.
numeric RSKM.
numeric MFIKM.
numeric GRPKM.
numeric INFMLKM.
numeric POSTKM.
numeric SACCOKM.
numeric COOPKM.

numeric POS.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR POS BBKM ATMKM MMKM BAKM RSKM MFIKM GRPKM INFMLKM POSTKM  .

dataset close all.

*Labels.
variable labels 
POS	"Distance to any POS from where you live"
BBKM	"Distance to Bank Branch from where you live"
ATMKM	"Distance to ATM from where you live"
MMKM	"Distance to Mobile Money Agent from where you live"
BAKM	"Distance to Banking Agent from where you live"
RSKM	"Distance to Retail store accepting mobile money payments from where you live"
MFIKM	"Distance to MFI from where you live"
GRPKM	"Distance to Village savings and loan association from where you live"
INFMLKM	"Distance to Informal self-help or savings group from where you live"
POSTKM	"Distance to Post office bank from where you live"
SACCOKM	"Distance to SACCO from where you live"
COOPKM	"Distance to Cooperative from where you live".

value labels POS 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels BBKM  1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels ATMKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels MMKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels BAKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels RSKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels MFIKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels GRPKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels INFMLKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels POSTKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels SACCOKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".
value labels COOPKM 1"Less than 1 km" 2"Between 1km and 5km" 3"More than 5km"  99"DK".

