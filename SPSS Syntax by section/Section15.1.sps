* Encoding: UTF-8.
*Section 15.1.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

*Is HAVE_PLAN derived from FH6?
*compute HAVE_PLAN = 0.
*if FH6 = 4 or FH6 = 5 HAVE_PLAN = 1.
numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.

recode FH2 (4=1)(5=1)(else=0) into FIN_HEA1.
recode FH3 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FH4 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FH5 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FH6 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FH7 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FH8 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FH9 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FH10 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FH11 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind18.

*Is HAVE_PLAN derived from FH6?
*compute HAVE_PLAN = 0.
*if FH6 = 4 or FH6 = 5 HAVE_PLAN = 1.
numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.

recode FH2 (4=1)(5=1)(else=0) into FIN_HEA1.
recode FH3 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FH4 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FH5 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FH6 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FH7 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FH8 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FH9 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FH10 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FH11 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

 
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind17.


numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(SYSMIS=0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

 
save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken17.

numeric HAVE_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga17.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).

recode fl2(2 thru 4=1)(1=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak17.

numeric HAVE_PLAN.

numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza17.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga17.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(2 thru 4).
recode fl2(2 thru 4=1)(1=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
recode FL6_1 (4=1)(5=1)(else=0) into FIN_HEA2.
recode FL6_2 (4=1)(5=1)(else=0) into FIN_HEA3.
recode FL6_3 (4=1)(5=1)(else=0) into FIN_HEA4.
recode FL6_4 (4=1)(5=1)(else=0) into FIN_HEA5.
recode FL6_5 (4=1)(5=1)(else=0) into FIN_HEA6.
recode FL6_6 (4=1)(5=1)(else=0) into FIN_HEA7.
recode FL6_7 (4=1)(5=1)(else=0) into FIN_HEA8.
recode FL6_8 (4=1)(5=1)(else=0) into FIN_HEA9.
recode FL6_9 (4=1)(5=1)(else=0) into FIN_HEA10.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .
 

DATASET ACTIVATE tza16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga16.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK=dl26_1 dl26_2 dl26_3 dl26_4 dl26_5 dl26_6 dl26_7 dl26_8 dl26_9 dl26_10 dl26_96 (1).
recode FIN_SHOCK(1 thru highest = 1)(else = 0).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
recode FL6_1 (1=1)(2=0) into FIN_HEA3.
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

*Other included.
count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
numeric FIN_HEA3.
recode FL6_2 (1=1)(2=0) into FIN_HEA4. 
recode FL6_1 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL10_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL10_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
numeric FIN_HEA3.
recode FL6_2 (1=1)(2=0) into FIN_HEA4. 
recode FL6_1 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL10_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL10_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_10 dl26_12(1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL6_1 (1=1)(2=0) into FIN_HEA3. 
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
*only difference is the word "heavily".
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL6_1 (1=1)(2=0) into FIN_HEA3. 
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
*only difference is the word "heavily".
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL6_1 (1=1)(2=0) into FIN_HEA3. 
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
*only difference is the word "heavily".
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2. 
numeric FIN_HEA3.
recode FL6_2 (1=1)(2=1)(else=0) into FIN_HEA4. 
recode FL6_1 (1=1)(2=1)(else=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
recode FL10_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL10_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL6_1 (1=1)(2=0) into FIN_HEA3. 
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
*only difference is the word "heavily".
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga15.

count HAVE_PLAN=fl7_1 fl7_2 fl7_3 fl7_4 fl7_5 fl7_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3 dl25_4 dl25_5 dl25_6 dl25_7 dl25_8 (1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

count FIN_SHOCK= dl26_1 to dl26_11 (1).
recode FIN_SHOCK (1 thru highest = 1).

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL6_1 (1=1)(2=0) into FIN_HEA3. 
recode FL6_3 (1=1)(2=0) into FIN_HEA4. 
recode FL6_2 (1=1)(2=0) into FIN_HEA5. 
numeric FIN_HEA6. 
numeric FIN_HEA7. 
*only difference is the word "heavily".
recode FL8_3 (1=1)(2=1)(else=0) into FIN_HEA8. 
numeric FIN_HEA9.
recode FL8_5 (1=1)(2=1)(else=0) into FIN_HEA10.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind14.

count HAVE_PLAN=fl24_1 fl24_2 fl24_3 fl24_4 fl24_5 fl24_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ida14.

count HAVE_PLAN=fl24_1 fl24_2 fl24_3 fl24_4 fl24_5 fl24_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=0)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE uga14.

count HAVE_PLAN=fl23_1 fl23_2 fl23_3 fl23_4 fl23_5 fl23_6 (1).
recode HAVE_PLAN (1 thru highest=1) (else=0).

count ECO_VUL=dl25_1 dl25_2 dl25_3(1).
recode ECO_VUL(1 thru highest = 1)(else = 0).

numeric FIN_SHOCK.

count BUDGET_INCOME=fl1(1 thru 3).

recode fl2(1 thru 3=1)(4=2)(else = 0) into BUDGET_STAY.

*"Always" instead of "agree".
numeric FIN_HEA1.
numeric FIN_HEA2.
recode FL3_1 (1=1)(2=1)(else=0) into FIN_HEA3.
recode FL3_3 (1=1)(2=1)(else=0) into FIN_HEA4.
recode FL3_2 (1=1)(2=1)(else=0) into FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ind13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE ken13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE nga13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE pak13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


DATASET ACTIVATE tza13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10.


DATASET ACTIVATE uga13.

numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.
numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR HAVE_PLAN  ECO_VUL FIN_SHOCK BUDGET_INCOME BUDGET_STAY FIN_HEA1 FIN_HEA2 FIN_HEA3 FIN_HEA4 FIN_HEA5 FIN_HEA6 FIN_HEA7 FIN_HEA8 FIN_HEA9 FIN_HEA10 .


dataset close all.

*Labels.
variable labels 
HAVE_PLAN	"Have a financial plan for unexpected events"
ECO_VUL	"Economically vulnerable"
FIN_SHOCK	"Financial shock"
BUDGET_INCOME	"Have ever made budget income"
BUDGET_STAY	"Stay on budget "
FIN_HEA1	"Financial health: You have goals for the next few months for what you want to achieve with your money"
FIN_HEA2	"Financial health: You have enough money to pay for your living expenses"
FIN_HEA3	"Financial health: You spend less money than you make each month"
FIN_HEA4	"Financial health: You pay your bills on time and in full"
FIN_HEA5	"Financial health: You have an emergency fund that is large enough to cover unplanned expenses"
FIN_HEA6	"Financial health: You are confident that your income will grow in the future"
FIN_HEA7	"Financial health: You earn enough money to pay back debt and also pay for living expenses"
FIN_HEA8	"Financial health: Friends and family rely on you to help with their finances"
FIN_HEA9	"Financial health: You have savings or assets that will keep you financially secure in the future"
FIN_HEA10	"Financial health: You have the skills and knowledge to manage your finances well".

value labels HAVE_PLAN 1"Yes" 0"No".
value labels ECO_VUL 1"Yes" 0"No".
value labels FIN_SHOCK 1"Yes" 0"No".
value labels BUDGET_INCOME 1"Yes" 0"No".
value labels BUDGET_STAY 1"Stay on budget"2"Do not stay on budget"0"Never make budget".
value labels FIN_HEA1 1"Yes" 0"No".
value labels FIN_HEA2 1"Yes" 0"No".
value labels FIN_HEA3 1"Yes" 0"No".
value labels FIN_HEA4 1"Yes" 0"No".
value labels FIN_HEA5 1"Yes" 0"No".
value labels FIN_HEA6 1"Yes" 0"No".
value labels FIN_HEA7 1"Yes" 0"No".
value labels FIN_HEA8 1"Yes" 0"No".
value labels FIN_HEA9 1"Yes" 0"No".
value labels FIN_HEA10 1"Yes" 0"No".



