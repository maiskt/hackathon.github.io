* Encoding: UTF-8.

*Section 7.4.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

DATASET ACTIVATE bng18.

recode mm13_1(1=1)(else=0) into R_NOTUSE_MM1.
recode mm13_2(1=1)(else=0) into R_NOTUSE_MM2.
recode mm13_3(1=1)(else=0) into R_NOTUSE_MM3.
recode mm13_4(1=1)(else=0) into R_NOTUSE_MM4.
recode mm13_5(1=1)(else=0) into R_NOTUSE_MM5.
recode mm13_6(1=1)(else=0) into R_NOTUSE_MM6.
recode mm13_7(1=1)(else=0) into R_NOTUSE_MM7.
recode mm13_8(1=1)(else=0) into R_NOTUSE_MM8.

recode mm14_1(1=1)(else=0) into R_NOTREG_MM1.
recode mm14_2(1=1)(else=0) into R_NOTREG_MM2.
recode mm14_3(1=1)(else=0) into R_NOTREG_MM3.
recode mm14_4(1=1)(else=0) into R_NOTREG_MM4.
recode mm14_5(1=1)(else=0) into R_NOTREG_MM5.
recode mm14_6(1=1)(else=0) into R_NOTREG_MM6.
recode mm14_7(1=1)(else=0) into R_NOTREG_MM7.
recode mm14_8(1=1)(else=0) into R_NOTREG_MM8.
recode mm14_9(1=1)(else=0) into R_NOTREG_MM9.
recode mm14_10(1=1)(else=0) into R_NOTREG_MM10.
recode mm14_11(1=1)(else=0) into R_NOTREG_MM11.

recode mm5_1(1=1)(else=0) into R_USE_MM1.
recode mm5_2(1=1)(else=0) into R_USE_MM2.
recode mm5_3(1=1)(else=0) into R_USE_MM3.
recode mm5_4(1=1)(else=0) into R_USE_MM4.
recode mm5_5(1=1)(else=0) into R_USE_MM5.
recode mm5_6(1=1)(else=0) into R_USE_MM6.
recode mm5_7(1=1)(else=0) into R_USE_MM7.
recode mm5_8(1=1)(else=0) into R_USE_MM8.
recode mm5_9(1=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

DATASET ACTIVATE ind18.

recode mm12_1(1=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(1=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(1=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(1=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(1=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
recode mm12_7(1=1)(else=0) into R_NOTUSE_MM7.
recode mm12_8(1=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

numeric R_USE_MM1.
numeric R_USE_MM2.
numeric R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
numeric R_USE_MM9.


**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

DATASET ACTIVATE bng17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

DATASET ACTIVATE ind17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

DATASET ACTIVATE ken17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

DATASET ACTIVATE nga17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

DATASET ACTIVATE pak17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
recode mm13_8(4,5=1)(else=0) into R_NOTREG_MM8.
recode mm13_5(4,5=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
numeric R_USE_MM7.
recode mm14_6(4,5=1)(else=0) into R_USE_MM8.
recode mm14_7(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

DATASET ACTIVATE tza17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

DATASET ACTIVATE uga17.

recode mm12_1(4,5=1)(else=0) into R_NOTUSE_MM1.
recode mm12_2(4,5=1)(else=0) into R_NOTUSE_MM2.
recode mm12_3(4,5=1)(else=0) into R_NOTUSE_MM3.
recode mm12_4(4,5=1)(else=0) into R_NOTUSE_MM4.
recode mm12_5(4,5=1)(else=0) into R_NOTUSE_MM5.
recode mm12_6(4,5=1)(else=0) into R_NOTUSE_MM6.
recode mm12_7(4,5=1)(else=0) into R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

recode mm13_1(4,5=1)(else=0) into R_NOTREG_MM1.
recode mm13_2(4,5=1)(else=0) into R_NOTREG_MM2.
recode mm13_3(4,5=1)(else=0) into R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

recode mm14_1(4,5=1)(else=0) into R_USE_MM1.
recode mm14_2(4,5=1)(else=0) into R_USE_MM2.
recode mm14_2A(4,5=1)(else=0) into  R_USE_MM3.
recode mm14_3(4,5=1)(else=0) into R_USE_MM4.
recode mm14_4(4,5=1)(else=0) into R_USE_MM5.
recode mm14_5(4,5=1)(else=0) into R_USE_MM6.
recode mm14_6(4,5=1)(else=0) into R_USE_MM7.
recode mm14_7(4,5=1)(else=0) into R_USE_MM8.
recode mm14_8(4,5=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

DATASET ACTIVATE bng16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

DATASET ACTIVATE ind16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

DATASET ACTIVATE ida16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

DATASET ACTIVATE ken16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

DATASET ACTIVATE nga16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

DATASET ACTIVATE pak16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

DATASET ACTIVATE tza16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

DATASET ACTIVATE uga16.

recode mm12(1,2=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(13=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(15=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
numeric R_NOTREG_MM8.
recode mm13(13=1)(else=0) into R_NOTREG_MM9.
numeric R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

DATASET ACTIVATE bng15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

DATASET ACTIVATE ind15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

DATASET ACTIVATE ida15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.


**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

DATASET ACTIVATE ken15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.


**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

DATASET ACTIVATE nga15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.


**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

DATASET ACTIVATE pak15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

DATASET ACTIVATE tza15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

DATASET ACTIVATE uga15.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

recode mm13(17=1)(else=0) into R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
recode mm13(14=1)(else=0) into R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm14(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm14(11=1)(else=0) into R_USE_MM2.
recode mm14(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm14(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

DATASET ACTIVATE bng14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

DATASET ACTIVATE ind14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

DATASET ACTIVATE ida14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

DATASET ACTIVATE ken14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

DATASET ACTIVATE nga14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

DATASET ACTIVATE pak14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

DATASET ACTIVATE tza14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

DATASET ACTIVATE uga14.

recode mm16(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm16(5=1)(else=0) into R_NOTUSE_MM2.
recode mm16(3=1)(else=0) into R_NOTUSE_MM3.
recode mm16(10=1)(else=0) into R_NOTUSE_MM4.
recode mm16(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm16(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm17(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm17(6=1)(else=0) into R_NOTREG_MM7.
recode mm17(12=1)(else=0) into R_NOTREG_MM8.
recode mm17(14=1)(else=0) into R_NOTREG_MM9.
recode mm17(13=1)(else=0) into R_NOTREG_MM10.
recode mm17(5,10=1)(else=0) into R_NOTREG_MM11.

recode mm18(1,2,4,5=1)(else=0) into R_USE_MM1.
recode mm18(11=1)(else=0) into R_USE_MM2.
recode mm18(12=1)(else=0) into R_USE_MM3.
NUMERIC R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
recode mm18(13,14=1)(else=0) into R_USE_MM9.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

DATASET ACTIVATE bng13.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
numeric R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14a=1 or mm14b=1 or mm14d=1 or mm14e=1 R_USE_MM1=1.
numeric R_USE_MM2.
numeric R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14k=1 or mm14l=1 R_USE_MM9=1.

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

DATASET ACTIVATE ind13.

numeric R_NOTUSE_MM1.
numeric R_NOTUSE_MM2.
numeric R_NOTUSE_MM3.
numeric R_NOTUSE_MM4.
numeric R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14_1=1 or mm14_2=1 or mm14_4=1 or mm14_5=1 R_USE_MM1=1.
numeric R_USE_MM2.
numeric R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14_11=1 or mm14_12=1 R_USE_MM9=1.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

DATASET ACTIVATE ken13.

numeric R_NOTUSE_MM1.
numeric R_NOTUSE_MM2.
numeric R_NOTUSE_MM3.
numeric R_NOTUSE_MM4.
numeric R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14a=1 or mm14b=1 or mm14d=1 or mm14e=1 R_USE_MM1=1.
recode mm14k(1=1)(else=0) into R_USE_MM2.
recode mm14l(1=1)(else=0) into R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14m=1 or mm14n=1 R_USE_MM9=1.


**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

DATASET ACTIVATE nga13.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
numeric R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14a=1 or mm14b=1 or mm14d=1 or mm14e=1 R_USE_MM1=1.
recode mm14k(1=1)(else=0) into R_USE_MM2.
recode mm14l(1=1)(else=0) into R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14m=1 or mm14n=1 R_USE_MM9=1.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

DATASET ACTIVATE pak13.

recode mm12(1,2,12=1)(else=0) into R_NOTUSE_MM1.
recode mm12(5=1)(else=0) into R_NOTUSE_MM2.
recode mm12(3=1)(else=0) into R_NOTUSE_MM3.
recode mm12(10=1)(else=0) into R_NOTUSE_MM4.
recode mm12(14=1)(else=0) into R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
recode mm12(7,9=1)(else=0) into R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
recode mm13(1=1)(else=0) into R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
recode mm13(6=1)(else=0) into R_NOTREG_MM7.
recode mm13(12=1)(else=0) into R_NOTREG_MM8.
numeric R_NOTREG_MM9.
recode mm13(13=1)(else=0) into R_NOTREG_MM10.
recode mm13(5,10=1)(else=0) into R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14a=1 or mm14b=1 or mm14d=1 or mm14e=1 R_USE_MM1=1.
recode mm14k(1=1)(else=0) into R_USE_MM2.
recode mm14l(1=1)(else=0) into R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14m=1 or mm14n=1 R_USE_MM9=1.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

DATASET ACTIVATE tza13.

numeric R_NOTUSE_MM1.
numeric R_NOTUSE_MM2.
numeric R_NOTUSE_MM3.
numeric R_NOTUSE_MM4.
numeric R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

compute R_USE_MM1=0.
if any(MM14,1,2,4,5) R_USE_MM1=1.
recode MM14 (11=1)(else=0) into R_USE_MM2.
recode MM14 (12=1)(else=0) into  R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if any(MM14,13,14) R_USE_MM9=1.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

DATASET ACTIVATE uga13.

numeric R_NOTUSE_MM1.
numeric R_NOTUSE_MM2.
numeric R_NOTUSE_MM3.
numeric R_NOTUSE_MM4.
numeric R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

compute R_USE_MM1=0.
if mm14a=1 or mm14b=1 or mm14d=1 or mm14e=1 R_USE_MM1=1.
numeric R_USE_MM2.
numeric R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
compute R_USE_MM9=0.
if mm14k=1 or mm14l=1 R_USE_MM9=1.

*****************************************************************************************************************************.
*Labels.
variable labels
R_NOTUSE_MM1	"Reason to NOT use MM: You don't know enough about mobile money services"
R_NOTUSE_MM2	"Reason to NOT use MM: You don't need to use a mobile money service"
R_NOTUSE_MM3	"Reason to NOT use MM: You don't have the required documents"
R_NOTUSE_MM4	"Reason to NOT use MM: You don't have enough money to use mobile money services"
R_NOTUSE_MM5	"Reason to NOT use MM: You don't trust mobile money"
R_NOTUSE_MM6	"Reason to NOT use MM: You feel at risk of losing money"
R_NOTUSE_MM7	"Reason to NOT use MM: You prefer to use cash"
R_NOTUSE_MM8	"Reason to NOT use MM: Fees and expenses to using mobile money services are too high"
R_NOTREG_MM1	"Reason to NOT register MM: A friend or family member has an account that you can use"
R_NOTREG_MM2	"Reason to NOT register MM: You do not have the required identification documents"
R_NOTREG_MM3	"Reason to NOT register MM: You do not use products and services that require a registered account"
R_NOTREG_MM4	"Reason to NOT register MM: You do not know how to register an account"
R_NOTREG_MM5	"Reason to NOT register MM: You had an account previously but not anymore"
R_NOTREG_MM6	"Reason to NOT register MM: You prefer to use a different financial account instead of mobile money"
R_NOTREG_MM7	"Reason to NOT register MM: You don't have enough money to use a registered account"
R_NOTREG_MM8	"Reason to NOT register MM: You don't trust mobile money"
R_NOTREG_MM9	"Reason to NOT register MM: You feel at rist of losing money"
R_NOTREG_MM10	"Reason to NOT register MM: You prefer to use cash"
R_NOTREG_MM11	"Reason to NOT register MM: Fees and expenses to using a mobile money account are too high"
R_USE_MM1	"Reason to start use MM: To send or receive money"
R_USE_MM2	"Reason to start use MM: To save money"
R_USE_MM3	"Reason to start use MM: To have a secure place to store money"
R_USE_MM4	"Reason to start use MM: You were registered to a mobile money account by someone else"
R_USE_MM5	"Reason to start use MM: To borrow money"
R_USE_MM6	"Reason to start use MM: To make a purchase"
R_USE_MM7	"Reason to start use MM: To make an investment"
R_USE_MM8	"Reason to start use MM: To pay a bill "
R_USE_MM9	"Reason to start use MM: You got an incentive from the mobile money service during a promotion ".

value labels R_NOTUSE_MM1 1"Yes" 0"No".
value labels R_NOTUSE_MM2 1"Yes" 0"No".
value labels R_NOTUSE_MM3 1"Yes" 0"No".
value labels R_NOTUSE_MM4 1"Yes" 0"No".
value labels R_NOTUSE_MM5 1"Yes" 0"No".
value labels R_NOTUSE_MM6 1"Yes" 0"No".
value labels R_NOTUSE_MM7 1"Yes" 0"No".
value labels R_NOTUSE_MM8 1"Yes" 0"No".
value labels R_NOTREG_MM1 1"Yes" 0"No".
value labels R_NOTREG_MM2 1"Yes" 0"No".
value labels R_NOTREG_MM3 1"Yes" 0"No".
value labels R_NOTREG_MM4 1"Yes" 0"No".
value labels R_NOTREG_MM5 1"Yes" 0"No".
value labels R_NOTREG_MM6 1"Yes" 0"No".
value labels R_NOTREG_MM7 1"Yes" 0"No".
value labels R_NOTREG_MM8 1"Yes" 0"No".
value labels R_NOTREG_MM9 1"Yes" 0"No".
value labels R_NOTREG_MM10 1"Yes" 0"No".
value labels R_NOTREG_MM11 1"Yes" 0"No".
value labels R_USE_MM1 1"Yes" 0"No".
value labels R_USE_MM2 1"Yes" 0"No".
value labels R_USE_MM3 1"Yes" 0"No".
value labels R_USE_MM4 1"Yes" 0"No".
value labels R_USE_MM5 1"Yes" 0"No".
value labels R_USE_MM6 1"Yes" 0"No".
value labels R_USE_MM7 1"Yes" 0"No".
value labels R_USE_MM8 1"Yes" 0"No".
value labels R_USE_MM9 1"Yes" 0"No".

