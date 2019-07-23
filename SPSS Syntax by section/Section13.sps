* Encoding: UTF-8.
*Section 13.
dataset close all.
insert file = "C:/Users/mitchell.shuey/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/mitchell.shuey/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

compute INVEST = 0.
if ad10=1 invest=1.
compute INVEST_OWN = 0.
if ad10_1=1 invest_own=1.
compute INVEST_OTHER = 0.
if ad10_2=1 or ad10_3=1 or ad10_4=1 or ad10_5=1 or ad10_6=1 or ad10_7=1 or ad10_8=1 invest_other=1.
compute INVEST_INFORMAL = 0.
if ((FN5_2=2 or FN5_4=2) and ad10_23=1) or ((FN6_2=2 or FN6_4=2) and ad10_24=1)  invest_informal=1.
compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind18.

compute INVEST = 0.
if ad10=1 invest=1.
compute INVEST_OWN = 0.
if AD10_1=1 invest_own=1.
compute invest_other=0.
if AD10_2=1 or AD10_3=1 or AD10_4=1 or AD10_5=1 or AD10_6=1 or AD10_7=1 OR AD10_8=1 OR AD10_9=1 invest_other=1.
compute invest_informal=0.
if ((FN6_2=2 OR FN6_3=2) and AD10_28=1) invest_informal=1.
compute INVEST_INSURANCE = 0.
if INVEST = 1 or FB27_1=1 or FB27_2=1 or FB27_3=1 or FB27_4=1 or FB27_5=1 or FB27_6=1 or FB27_7=1 or FB27_8=1 INVEST_INSURANCE = 1.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.


count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

count invest_insurance=FB27_1 to FB27_7 FB29_1 to FB29_6(1).
recode  invest_insurance (1 THRU HIGHEST=1).

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind17.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6(1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.

count informal_invest=IFI20_7 IFI20_8(1).
RECODE informal_invest(1 THRU HIGHEST=1).

count insurance=FB27_1 FB27_2 FB27_3 FB27_4 FB27_5 FB27_6 FB27_7 FB27_8 FB27_9 FB27_10 FB27_11 FB27_12 FB27_96(1).
compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE ge 1 INVEST_INSURANCE = 1.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ken17.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6(1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).

count invest_insurance=FB27_1 to FB27_10 FB29_1 to FB29_6(1).
recode  invest_insurance (1 THRU HIGHEST=1).

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE nga17.


count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6(1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

compute INVEST_INFORMAL = 0.
if ifi20_7=1 or ifi20_8=1 invest_informal=1.

count invest_insurance=FB27_1 to FB27_9 FB29_1 to FB29_6(1).
recode  invest_insurance (1 THRU HIGHEST=1).

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE pak17.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6(1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE tza17.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

compute INVEST_INFORMAL = 0.
if ifi20_7=1 or ifi20_8=1 INVEST_INFORMAL=1.

count invest_insurance=FB27_1 to FB27_10 FB29_1 to FB29_6(1).
recode  invest_insurance (1 THRU HIGHEST=1).

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE uga17.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6(1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1  invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

count invest_insurance=FB27_1 to FB27_10 FB29_1 to FB29_6(1).
recode  invest_insurance (1 THRU HIGHEST=1).

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_4 (1).
*Only one variable here.

count insurance=FB27_1 FB27_2 FB27_3 FB27_4 FB27_5 FB27_6 FB27_7 FB27_96 (1).
recode insurance (1 thru highest=1)(else=0).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ida16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ken16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE nga16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE pak16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE tza16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE uga16.

count invest=FB29_1 FB29_2 FB29_3 FB29_4 FB29_5 FB29_6 FB29_96 (1).
recode invest (1 thru highest=1)(else=0).

compute INVEST_OWN = 0.
if fb29_1=1 invest_own=1.

compute INVEST_OTHER = 0.
if fb29_2=1 or fb29_3=1 or fb29_4=1 or fb29_5=1 or fb29_6=1 or fb29_96=1 invest_other=1.

count INVEST_INFORMAL=IFI20_7 IFI20_8(1).
recode INVEST_INFORMAL (1 thru highest = 1).

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*2015---------------------------------------------------------------------***.
*From here, INVEST_INFORMAL could be calculated, but with different variables than more recent surveys.
DATASET ACTIVATE bng15.

count INVEST FB28_1 to FB28_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if fb28_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FB28_2 to FB28_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ida15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ken15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE nga15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE pak15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE tza15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE uga15.

compute INVEST = 0.

compute INVEST_OWN = 0.

compute INVEST_OTHER = 0.

compute INVEST_INFORMAL = 0.
if IFI21.7 = 1 INVEST_INFORMAL = 1.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
IF FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL19_2 to FL19_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

compute INVEST_INFORMAL = 0.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind14.

count INVEST FL19_1 to FL19_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
IF FL19_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL19_2 to FL19_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ida14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ken14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE nga14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE pak14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE tza14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE uga14.

count INVEST FL18_1 to FL18_8 (1).
recode INVEST (1 thru highest = 1).

compute INVEST_OWN = 0.
if FL18_1 = 1 INVEST_OWN = 1.

count INVEST_OTHER FL18_2 to FL18_8 (1).
recode INVEST_OTHER (1 thru highest = 1).

numeric INVEST_INFORMAL.

compute INVEST_INSURANCE = 0.
if INVEST = 1 or INSURANCE = 1 INVEST_INSURANCE = 1.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ind13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE ken13.

numeric INVEST.
numeric INVEST_OWN.
numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE nga13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE pak13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


DATASET ACTIVATE tza13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.

DATASET ACTIVATE uga13.

compute INVEST = 0.

compute INVEST_OWN = 0.

numeric INVEST_OTHER.
numeric INVEST_INFORMAL.
numeric INVEST_INSURANCE.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR INVEST INVEST_OWN INVEST_OTHER INVEST_INFORMAL INVEST_INSURANCE.


*dataset close all.