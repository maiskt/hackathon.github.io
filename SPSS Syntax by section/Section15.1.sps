* Encoding: UTF-8.
*Section 15.1.
dataset close all.
insert file = "C:/Users/shueym/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/shueym/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

*Is HAVE_PLAN derived from FH6?
*compute HAVE_PLAN = 0.
*if FH6 = 4 or FH6 = 5 HAVE_PLAN = 1.
numeric HAVE_PLAN.
numeric FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.

rename variables FH2 = FIN_HEA1.
rename variables FH3 = FIN_HEA2.
rename variables FH4 = FIN_HEA3.
rename variables FH5 = FIN_HEA4.
rename variables FH6 = FIN_HEA5.
rename variables FH7 = FIN_HEA6.
rename variables FH8 = FIN_HEA7.
rename variables FH9 = FIN_HEA8.
rename variables FH10 = FIN_HEA9.
rename variables FH11 = FIN_HEA10.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind18.

*Is HAVE_PLAN derived from FH6?
*compute HAVE_PLAN = 0.
*if FH6 = 4 or FH6 = 5 HAVE_PLAN = 1.
numeric HAVE_PLAN.
numeric FOLLOW_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.

rename variables FH2 = FIN_HEA1.
rename variables FH3 = FIN_HEA2.
rename variables FH4 = FIN_HEA3.
rename variables FH5 = FIN_HEA4.
rename variables FH6 = FIN_HEA5.
rename variables FH7 = FIN_HEA6.
rename variables FH8 = FIN_HEA7.
rename variables FH9 = FIN_HEA8.
rename variables FH10 = FIN_HEA9.
rename variables FH11 = FIN_HEA10.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

 
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind17.


numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

 
save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga17.

numeric HAVE_PLAN.
rename variables FL2 = FOLLOW_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
rename variables FL6.1 = FIN_HEA2.
rename variables FL6.2 = FIN_HEA3.
rename variables FL6.3 = FIN_HEA4.
rename variables FL6.4 = FIN_HEA5.
rename variables FL6.5 = FIN_HEA6.
rename variables FL6.6 = FIN_HEA7.
rename variables FL6.7 = FIN_HEA8.
rename variables FL6.8 = FIN_HEA9.
rename variables FL6.9 = FIN_HEA10.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

rename variables FL2 = FOLLOW_PLAN.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(SYSMIS=999) into BUDGET_STAY.

*FL6 section is asked "yes" and "no", need to compare.
rename variables FL8.3 = FIN_HEA8. *only difference is the word "heavily".
rename variables FL8.5 = FIN_HEA10.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(SYSMIS=999) into BUDGET_STAY.


save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga16.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga15.

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga14.

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind13.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken13.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga13.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak13.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza13.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10.


DATASET ACTIVATE uga13.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN FOLLOW_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*dataset close all.
