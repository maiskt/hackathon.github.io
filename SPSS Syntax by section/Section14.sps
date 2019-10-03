* Encoding: UTF-8.
*Section 14.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.


save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind16.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (99,9 = -2) (else = copy) into FIN_SITUATION.

recode FL8_1 (1=1) (else=copy) into FIN_ATT1.
recode FL8_2 (1=1) (else=copy) into FIN_ATT2.
recode FL8_4 (1=1) (else=copy) into FIN_ATT3.
recode FL8_6 (1=1) (else=copy) into FIN_ATT4.
recode FL8_7 (1=1) (else=copy) into FIN_ATT5.

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,3,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG12_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE ind15.

recode DL0 (1=1)(else=copy) into MAIN_EARNER.
recode DL24 (9 = -2) (else = copy) into FIN_SITUATION.

recode FL10_1 (1=1) (else=copy) into FIN_ATT1.
recode FL10_2 (1=1) (else=copy) into FIN_ATT2.
recode FL10_4 (1=1) (else=copy) into FIN_ATT3.
recode FL10_6 (1=1) (else=copy) into FIN_ATT4.
recode FL10_7 (1=1) (else=copy) into FIN_ATT5.

recode DG12_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.


DATASET ACTIVATE pak15.

recode DL0 (99=-2)(else=copy) into MAIN_EARNER.
recode DL24 (6 = -2) (else = copy) into FIN_SITUATION.

recode FL10_1 (1=1) (else=copy) into FIN_ATT1.
recode FL10_2 (1=1) (else=copy) into FIN_ATT2.
recode FL10_4 (1=1) (else=copy) into FIN_ATT3.
recode FL10_6 (1=1) (else=copy) into FIN_ATT4.
recode FL10_7 (1=1) (else=copy) into FIN_ATT5.

recode DG12_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG12_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG12_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG12_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG12_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

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

recode DG13_1 (1=1)(2,sysmis=0) into SCH_FEE_PRB1.
recode DG13_2 (1=1)(2,sysmis=0) into SCH_FEE_PRB2.
recode DG13_3 (1=1)(2,sysmis=0) into SCH_FEE_PRB3.
recode DG13_4 (1=1)(2,sysmis=0) into SCH_FEE_PRB4.
recode DG13_5 (1=1)(2,sysmis=0) into SCH_FEE_PRB5.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR MAIN_EARNER FIN_SITUATION FIN_ATT1 FIN_ATT2 FIN_ATT3 FIN_ATT4 FIN_ATT5 SCH_FEE_PRB1 SCH_FEE_PRB2 SCH_FEE_PRB3 SCH_FEE_PRB4 SCH_FEE_PRB5.

*No variables for 2013.
*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

numeric MAIN_EARNER.
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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
recode DL21 (6 = -2) (else = copy) into FIN_SITUATION.

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

*Labels.
variable labels
MAIN_EARNER	"Main income earner in the household"
FIN_SITUATION	"Respondent's family's financial situation"
FIN_ATT1	"I am highly satisfied with my present financial condition"
FIN_ATT2	"I have too much debt right now"
FIN_ATT3	"I am comfortable having some debt if it allows me to accomplish my goals"
FIN_ATT4	"When I have some money it’s better to use or invest it right away. Just keeping it sitting there is wasteful  "
FIN_ATT5	"I buy from several different shopkeepers so that they know me and will give me credit when I need it"
SCH_FEE_PRB1	"Problem to pay school fee: Lack of funds, could not pay at all"
SCH_FEE_PRB2	"Problem to pay school fee: Lack of funds, could only pay a portion"
SCH_FEE_PRB3	"Problem to pay school fee: Bank issues (high fees or long lines)"
SCH_FEE_PRB4	"Problem to pay school fee: Had to deliver cash but failed because of long distance to school"
SCH_FEE_PRB5	"Problem to pay school fee: Don’t know the full amount".

value labels MAIN_EARNER 1"Myself" 2"Somebody else" 3"Equally contribute" -2"DK".
value labels FIN_SITUATION 1"We don't have enough money for food"
2"We have enough money for food, but buying clothes is difficult"
3"We have enough money for food and clothes, and can save a bit, but not enough to buy expensive goods such as a TV set"
4"We can afford to buy certain expensive goods such as a TV set or a refrigerator"
5"We can afford to buy whatever we want"
-2"DK".
value labels FIN_ATT1 1"Strongly agree" 2"Agree" 3"Neither agree nor disagree" 4"Disagree" 5"Strongly disagree".
value labels FIN_ATT2 1"Strongly agree" 2"Agree" 3"Neither agree nor disagree" 4"Disagree" 5"Strongly disagree".
value labels FIN_ATT3 1"Strongly agree" 2"Agree" 3"Neither agree nor disagree" 4"Disagree" 5"Strongly disagree".
value labels FIN_ATT4 1"Strongly agree" 2"Agree" 3"Neither agree nor disagree" 4"Disagree" 5"Strongly disagree".
value labels FIN_ATT5 1"Strongly agree" 2"Agree" 3"Neither agree nor disagree" 4"Disagree" 5"Strongly disagree".
value labels SCH_FEE_PRB1 1"Yes" 0"No".
value labels SCH_FEE_PRB2 1"Yes" 0"No".
value labels SCH_FEE_PRB3 1"Yes" 0"No".
value labels SCH_FEE_PRB4 1"Yes" 0"No".
value labels SCH_FEE_PRB5 1"Yes" 0"No".


