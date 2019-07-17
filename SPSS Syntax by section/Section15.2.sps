* Encoding: UTF-8.
*Section 15.2.
dataset close all.
insert file = "C:/Users/shueym/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/shueym/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy) into MONEY_SOU1.
recode DL4_2 (2=0)(else=copy) into MONEY_SOU2.
recode DL4_3 (2=0)(else=copy) into MONEY_SOU3.
recode DL4_4 (2=0)(else=copy) into MONEY_SOU4.
recode DL4_5 (2=0)(else=copy) into MONEY_SOU5.
recode DL4_6 (2=0)(else=copy) into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.

recode DL4_7 (2=0)(else=copy) into MONEY_SOU7.
recode DL4_8 (2=0)(else=copy) into MONEY_SOU8.
recode DL4_9 (2=0)(else=copy) into MONEY_SOU9.
recode DL4_10 (2=0)(else=copy) into MONEY_SOU10.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.


save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind18.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy) into MONEY_SOU1.
recode DL4_2 (2=0)(else=copy) into MONEY_SOU2.
recode DL4_3 (2=0)(else=copy) into MONEY_SOU3.
recode DL4_4 (2=0)(else=copy) into MONEY_SOU4.
recode DL4_5 (2=0)(else=copy) into MONEY_SOU5.
recode DL4_6 (2=0)(else=copy) into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.

recode DL4_7 (2=0)(else=copy) into MONEY_SOU7.
recode DL4_8 (2=0)(else=copy) into MONEY_SOU8.
recode DL4_9 (2=0)(else=copy) into MONEY_SOU9.
recode DL4_10 (2=0)(else=copy) into MONEY_SOU10.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2. 
 numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.


save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2. 
 numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.


numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ken17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.


numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE nga17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE pak17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE tza17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.


numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.


save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE uga17.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

recode DL4_1 (2=0)(else=copy)into MONEY_SOU1.
*DL4_2 doesn't differentiate between in-country or out-of-country. 
numeric MONEY_SOU2.
*DL4_3 doesn't differentiate between scholarships/stipens and pensions/other assistance.
 numeric MONEY_SOU3.
 numeric MONEY_SOU4.
*MONEY_SOU5 doesn't differentiate between business income and property/asset income.
numeric MONEU_SOU5.
*DL4_5 doesn't discriminate between employer sizes.
recode DL4_6 (2=0)(else=copy)into MONEY_SOU6.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
numeric MONEY_SOU9.
numeric MONEY_SOU10.


numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

count MONEY_SOU1 = DL4_6 to DL4_9 (1).
recode MONEY_SOU1 (1 thru highest = 1).
recode DL4_3 (1=1) (2=0) into MONEY_SOU2.
*DL4_7 doesn't differentiate between in-country or out-of-country.
numeric MONEY_SOU3.
numeric MONEY_SOU4.
recode DL4_19 (1=1) (2=0) into MONEY_SOU5.
recode DL4_17 (1=1) (2=0) into MONEY_SOU6.
*DL4_18 doesn't discriminate between employer sizes.
numeric MONEY_SOU7.
numeric MONEY_SOU8.
recode DL4_1 (1=1) (2=0) into MONEY_SOU9.
compute MONEY_SOU10 = 0.
if DL4_2 = 1 or DL4_4 = 1 MONEY_SOU10 = 1.


recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ida16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.
save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ken16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.
save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE nga16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.
save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE pak16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.
save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE tza16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE uga16.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (96=SYSMIS)(else=copy) into EXPENSE1.
recode FL9B (96=SYSMIS)(else=copy) into EXPENSE2.
recode FL9C (96=SYSMIS)(else=copy) into EXPENSE3.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL11A (10=SYSMIS)(12 = 10)(else=copy) into EXPENSE1.
recode FL11B (10=SYSMIS)(12 = 10)(else=copy) into EXPENSE2.
recode FL11C (10=SYSMIS)(12 = 10)(else=copy) into EXPENSE3.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL11A (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL11B (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL11C (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ida15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL9B (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL9C (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ken15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL9B (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL9C (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE nga15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL9B (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL9C (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE pak15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

*Value 10 missing label.
recode FL11A (10=SYSMIS)(12 = 10)(13 thru 18 = SYSMIS)(else=copy) into EXPENSE1.
recode FL11B (10=SYSMIS)(12 = 10)(13 thru 18 = SYSMIS)(else=copy) into EXPENSE2.
recode FL11C (10=SYSMIS)(12 = 10)(13 thru 18 = SYSMIS)(else=copy) into EXPENSE3.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE tza15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL9B (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL9C (11=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE uga15.

recode DL25_1 (1=1) (2=0) into FIN_SHO1.
recode DL25_2 (1=1) (2=0) into FIN_SHO2.
recode DL25_3 (1=1) (2=0) into FIN_SHO3.
recode DL25_4 (1=1) (2=0) into FIN_SHO4.
recode DL25_5 (1=1) (2=0) into FIN_SHO5.
recode DL25_6 (1=1) (2=0) into FIN_SHO6.
recode DL25_7 (1=1) (2=0) into FIN_SHO7.
recode DL25_8 (1=1) (2=0) into FIN_SHO8.

recode FL9A (11=SYSMIS)(13=SYSMIS)(12 = 11)(else=copy) into EXPENSE1.
recode FL9B (11=SYSMIS)(13=SYSMIS)(12 = 11)(else=copy) into EXPENSE2.
recode FL9C (11=SYSMIS)(13=SYSMIS)(12 = 11)(else=copy) into EXPENSE3.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*2014---------------------------------------------------------------------***.
* EXPENSEs asked differently, see documentation.
DATASET ACTIVATE bng14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ida14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ken14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE nga14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE pak14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE tza14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE uga14.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ind13.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE ken13.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE nga13.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE pak13.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


DATASET ACTIVATE tza13.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3 .


DATASET ACTIVATE uga13.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR FIN_SHO1 FIN_SHO2 FIN_SHO3 FIN_SHO4 FIN_SHO5 FIN_SHO6 FIN_SHO7 FIN_SHO8 MONEY_SOU1 MONEY_SOU2 MONEY_SOU3 MONEY_SOU4 MONEY_SOU5 MONEY_SOU6 MONEY_SOU7 MONEY_SOU8 MONEY_SOU9 MONEY_SOU10 EXPENSE1 EXPENSE2 EXPENSE3  .


*dataset close all.
