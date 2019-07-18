* Encoding: UTF-8.
*Section 14.
dataset close all.
insert file = "C:/Users/mitchell.shuey/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/mitchell.shuey/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

recode DL24 (1=1) (else = copy) into FIN_SITUATION.
numeric MAIN_EARNER.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind18.
recode DL24 (1=1) (else = copy) into FIN_SITUATION.
numeric MAIN_EARNER.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.


numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.


save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga17.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.


save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL10_1 (1=1) (else=copy) into FIN_ATT1.
recode FL10_2 (1=1) (else=copy) into FIN_ATT2.
recode FL10_4 (1=1) (else=copy) into FIN_ATT3.
recode FL10_6 (1=1) (else=copy) into FIN_ATT4.
recode FL10_7 (1=1) (else=copy) into FIN_ATT5.

recode DG12_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL10_1 (1=1) (else=copy) into FIN_ATT1.
recode FL10_2 (1=1) (else=copy) into FIN_ATT2.
recode FL10_4 (1=1) (else=copy) into FIN_ATT3.
recode FL10_6 (1=1) (else=copy) into FIN_ATT4.
recode FL10_7 (1=1) (else=copy) into FIN_ATT5.

recode DG12_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL10_1 (1=1) (else=copy) into FIN_ATT1.
recode FL10_2 (1=1) (else=copy) into FIN_ATT2.
recode FL10_4 (1=1) (else=copy) into FIN_ATT3.
recode FL10_6 (1=1) (else=copy) into FIN_ATT4.
recode FL10_7 (1=1) (else=copy) into FIN_ATT5.

recode DG12_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2=0) into SCH_FEE_PRB5.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.

*No variables for 2013.
*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ida14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga14.

numeric MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.


save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ken13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE nga13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE tza13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE uga13.

numeric MAIN_EARNER.
numeric FIN_SITUATION.
numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


*dataset close all.