* Encoding: UTF-8.
*Section 7.3.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

DATASET ACTIVATE bng18.

recode ma1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma4(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma5(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma6(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma7(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma8(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma9(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma10(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

DATASET ACTIVATE ind18.

recode ma1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma4(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma5(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma6(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma7(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma8(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma9(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma10(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

DATASET ACTIVATE bng17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

DATASET ACTIVATE ind17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

DATASET ACTIVATE ken17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

DATASET ACTIVATE nga17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

DATASET ACTIVATE pak17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

DATASET ACTIVATE tza17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.

**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

DATASET ACTIVATE uga17.

recode ma2_1(2,3,4,5=1)(else=0) into EXP_MA1.
recode ma2_2(2,3,4,5=1)(else=0) into EXP_MA2.
recode ma2_3(2,3,4,5=1)(else=0) into EXP_MA3.
recode ma2_5(2,3,4,5=1)(else=0) into EXP_MA4.
recode ma2_6(2,3,4,5=1)(else=0) into EXP_MA5.
recode ma2_7(2,3,4,5=1)(else=0) into EXP_MA6.
recode ma2_8(2,3,4,5=1)(else=0) into EXP_MA7.
recode ma2_13(2,3,4,5=1)(else=0) into EXP_MA8.
recode ma2_15(2,3,4,5=1)(else=0) into EXP_MA9.
recode ma2_16(2,3,4,5=1)(else=0) into EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

DATASET ACTIVATE bng16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

DATASET ACTIVATE ind16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
count EXP_MA7=MM38_8,mm38_9 (1).
recode EXP_MA7 (1 thru hi=1)(else=0).
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
recode mm38_15(1=1)(else=0) into EXP_MA17.
recode mm38_18(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if MM40_8=1 or MM40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
recode mm40_15(1=1)(else=0) into EXPSV_MA14.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_18(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

DATASET ACTIVATE ida16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

DATASET ACTIVATE ken16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

DATASET ACTIVATE nga16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

DATASET ACTIVATE pak16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

DATASET ACTIVATE tza16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

DATASET ACTIVATE uga16.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_8(1=1)(else=0) into EXP_MA7.
recode mm38_13(1=1)(else=0) into EXP_MA8.
recode mm38_15(1=1)(else=0) into EXP_MA9.
recode mm38_16(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_9(1=1)(else=0) into EXP_MA13.
recode mm38_10(1=1)(else=0) into EXP_MA14.
recode mm38_11(1=1)(else=0) into EXP_MA15.
recode mm38_12(1=1)(else=0) into EXP_MA16.
recode mm38_14(1=1)(else=0) into EXP_MA17.
recode mm38_17(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
recode mm40_8(1=1)(else=0) into EXPSV_MA8.
recode mm40_9(1=1)(else=0) into EXPSV_MA9.
recode mm40_10(1=1)(else=0) into EXPSV_MA10.
recode mm40_11(1=1)(else=0) into EXPSV_MA11.
recode mm40_12(1=1)(else=0) into EXPSV_MA12.
recode mm40_13(1=1)(else=0) into EXPSV_MA13.
recode mm40_14(1=1)(else=0) into EXPSV_MA14.
recode mm40_15(1=1)(else=0) into EXPSV_MA15.
recode mm40_16(1=1)(else=0) into EXPSV_MA16.
recode mm40_17(1=1)(else=0) into EXPSV_MA17.
 
**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

DATASET ACTIVATE bng15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

DATASET ACTIVATE ind15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

DATASET ACTIVATE ida15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

DATASET ACTIVATE ken15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.


**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

DATASET ACTIVATE nga15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

DATASET ACTIVATE pak15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

DATASET ACTIVATE tza15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.
**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

DATASET ACTIVATE uga15.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm38_8=1 or mm38_9=1 EXP_MA7=1.
recode mm38_14(1=1)(else=0) into EXP_MA8.
recode mm38_16(1=1)(else=0) into EXP_MA9.
recode mm38_17(1=1)(else=0) into EXP_MA10.
recode mm38_2(1=1)(else=0) into EXP_MA11.
recode mm38_4(1=1)(else=0) into EXP_MA12.
recode mm38_10(1=1)(else=0) into EXP_MA13.
recode mm38_11(1=1)(else=0) into EXP_MA14.
recode mm38_12(1=1)(else=0) into EXP_MA15.
recode mm38_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM38_15=1 or MM38_18=1 EXP_MA17=1.
recode mm38_19(1=1)(else=0) into EXP_MA18.

recode mm40_1(1=1)(else=0) into EXPSV_MA1.
recode mm40_2(1=1)(else=0) into EXPSV_MA2.
recode mm40_3(1=1)(else=0) into EXPSV_MA3.
recode mm40_4(1=1)(else=0) into EXPSV_MA4.
recode mm40_5(1=1)(else=0) into EXPSV_MA5.
recode mm40_6(1=1)(else=0) into EXPSV_MA6.
recode mm40_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm40_8=1 or mm40_9=1 EXPSV_MA8=1.
recode mm40_10(1=1)(else=0) into EXPSV_MA9.
recode mm40_11(1=1)(else=0) into EXPSV_MA10.
recode mm40_12(1=1)(else=0) into EXPSV_MA11.
recode mm40_13(1=1)(else=0) into EXPSV_MA12.
recode mm40_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM40_15=1 or MM40_18=1 EXPSV_MA14=1.
recode mm40_16(1=1)(else=0) into EXPSV_MA15.
recode mm40_17(1=1)(else=0) into EXPSV_MA16.
recode mm40_19(1=1)(else=0) into EXPSV_MA17.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

DATASET ACTIVATE bng14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

DATASET ACTIVATE ind14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

DATASET ACTIVATE ida14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

DATASET ACTIVATE ken14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

DATASET ACTIVATE nga14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

DATASET ACTIVATE pak14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

DATASET ACTIVATE tza14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.


**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

DATASET ACTIVATE uga14.

recode mm30_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.
recode mm30_6(1=1)(else=0) into EXP_MA5.
recode mm30_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm30_8=1 or mm30_9=1 EXP_MA7=1.
recode mm30_14(1=1)(else=0) into EXP_MA8.
recode mm30_16(1=1)(else=0) into EXP_MA9.
recode mm30_17(1=1)(else=0) into EXP_MA10.
recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.
recode mm30_10(1=1)(else=0) into EXP_MA13.
recode mm30_11(1=1)(else=0) into EXP_MA14.
recode mm30_12(1=1)(else=0) into EXP_MA15.
recode mm30_13(1=1)(else=0) into EXP_MA16.
compute EXP_MA17=0.
if MM30_15=1 or MM30_18=1 EXP_MA17=1.
numeric EXP_MA18.

recode mm33_1(1=1)(else=0) into EXPSV_MA1.
recode mm33_2(1=1)(else=0) into EXPSV_MA2.
recode mm33_3(1=1)(else=0) into EXPSV_MA3.
recode mm33_4(1=1)(else=0) into EXPSV_MA4.
recode mm33_5(1=1)(else=0) into EXPSV_MA5.
recode mm33_6(1=1)(else=0) into EXPSV_MA6.
recode mm33_7(1=1)(else=0) into EXPSV_MA7.
compute EXPSV_MA8=0.
if mm33_8=1 or mm33_9=1 EXPSV_MA8=1.
recode mm33_10(1=1)(else=0) into EXPSV_MA9.
recode mm33_11(1=1)(else=0) into EXPSV_MA10.
recode mm33_12(1=1)(else=0) into EXPSV_MA11.
recode mm33_13(1=1)(else=0) into EXPSV_MA12.
recode mm33_14(1=1)(else=0) into EXPSV_MA13.
compute EXPSV_MA14=0.
if MM33_15=1 or MM33_18=1 EXPSV_MA14=1.
recode mm33_16(1=1)(else=0) into EXPSV_MA15.
recode mm33_17(1=1)(else=0) into EXPSV_MA16.
numeric EXPSV_MA17.
**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

DATASET ACTIVATE bng13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm29_3(1=1)(else=0) into EXP_MA3.
recode mm29_5(1=1)(else=0) into EXP_MA4.
recode mm29_6(1=1)(else=0) into EXP_MA5.
recode mm29_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_8=1 or mm29_9=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_4(1=1)(else=0) into EXP_MA12.
recode mm29_10(1=1)(else=0) into EXP_MA13.
recode mm29_11(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

DATASET ACTIVATE ind13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
compute EXP_MA3=0.
if mm29_3=1 or mm29_4=1 EXP_MA3=1.
recode mm29_6(1=1)(else=0) into EXP_MA4.
recode mm29_7(1=1)(else=0) into EXP_MA5.
recode mm29_8(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_9=1 or mm29_10=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_5(1=1)(else=0) into EXP_MA12.
recode mm29_11(1=1)(else=0) into EXP_MA13.
recode mm29_12(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

DATASET ACTIVATE ken13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
compute EXP_MA3=0.
if mm29_3=1 or mm29_4=1 EXP_MA3=1.
recode mm29_6(1=1)(else=0) into EXP_MA4.
recode mm29_7(1=1)(else=0) into EXP_MA5.
recode mm29_8(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_9=1 or mm29_10=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_5(1=1)(else=0) into EXP_MA12.
recode mm29_11(1=1)(else=0) into EXP_MA13.
recode mm29_12(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

DATASET ACTIVATE nga13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm29_3(1=1)(else=0) into EXP_MA3.
recode mm29_5(1=1)(else=0) into EXP_MA4.
recode mm29_6(1=1)(else=0) into EXP_MA5.
recode mm29_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_8=1 or mm29_9=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_4(1=1)(else=0) into EXP_MA12.
recode mm29_10(1=1)(else=0) into EXP_MA13.
recode mm29_11(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

DATASET ACTIVATE pak13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm29_3(1=1)(else=0) into EXP_MA3.
recode mm29_5(1=1)(else=0) into EXP_MA4.
recode mm29_6(1=1)(else=0) into EXP_MA5.
recode mm29_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_8=1 or mm29_9=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_4(1=1)(else=0) into EXP_MA12.
recode mm29_10(1=1)(else=0) into EXP_MA13.
recode mm29_11(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

DATASET ACTIVATE tza13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm29_3(1=1)(else=0) into EXP_MA3.
recode mm29_5(1=1)(else=0) into EXP_MA4.
recode mm29_6(1=1)(else=0) into EXP_MA5.
recode mm29_7(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_8=1 or mm29_9=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_4(1=1)(else=0) into EXP_MA12.
recode mm29_10(1=1)(else=0) into EXP_MA13.
recode mm29_11(1=1)(else=0) into EXP_MA14.
recode mm29_12(1=1)(else=0) into EXP_MA15.
recode mm29_13(1=1)(else=0) into EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

DATASET ACTIVATE uga13.

recode mm29_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
compute EXP_MA3=0.
if mm29_3=1 or mm29_4=1 EXP_MA3=1.
recode mm29_6(1=1)(else=0) into EXP_MA4.
recode mm29_7(1=1)(else=0) into EXP_MA5.
recode mm29_8(1=1)(else=0) into EXP_MA6.
compute EXP_MA7=0.
if mm29_9=1 or mm29_10=1 EXP_MA7=1.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
recode mm29_2(1=1)(else=0) into EXP_MA11.
recode mm29_5(1=1)(else=0) into EXP_MA12.
recode mm29_11(1=1)(else=0) into EXP_MA13.
recode mm29_12(1=1)(else=0) into EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17. 


*****************************************************************************************************************************.
*Labels.
variable labels EXP_MA1	"Experience with MM agent: Agent was absent"
EXP_MA2	"Experience with MM agent: Agent provided poor service"
EXP_MA3	"Experience with MM agent: Agent did not have enough money to complete the transaction"
EXP_MA4	"Experience with MM agent: Agent did not know how to perform the transaction"
EXP_MA5	"Experience with MM agent: Agent overcharged for the transaction"
EXP_MA6	"Experience with MM agent: Agent did not give all the cash that was owed"
EXP_MA7	"Experience with MM agent: Agent system or mobile network was down"
EXP_MA8	"Experience with MM agent: Agent was dismissive of women"
EXP_MA9	"Experience with MM agent: Agent’s place was not secure or there were suspicious people at agent’s place"
EXP_MA10	"Experience with MM agent: Agent shared your personal or account information with other people without your knowledge or permission"
EXP_MA11	"Experience with MM agent: Agent was rude"
EXP_MA12	"Experience with MM agent: Agent refused to perform the transaction for no reason"
EXP_MA13	"Experience with MM agent: It was very time-consuming/it took you a lot of time to do the transaction"
EXP_MA14	"Experience with MM agent: You did not get a receipt"
EXP_MA15	"Experience with MM agent: Agent charged you for depositing money"
EXP_MA16	"Experience with MM agent: Agent asked for your PIN number"
EXP_MA17	"Experience with MM agent: Agent committed fraud"
EXP_MA18	"Experience with MM agent: Agent refused to do the transaction because you did not have your ID"
EXPSV_MA1	"Issue with MM agent solved: Agent was absent"
EXPSV_MA2	"Issue with MM agent solved: Agent was rude"
EXPSV_MA3	"Issue with MM agent solved: Agent did not have enough cash or e-float and could not perform the transaction"
EXPSV_MA4	"Issue with MM agent solved: Agent refused to perform the transaction for no reason"
EXPSV_MA5	"Issue with MM agent solved: Agent did not know how to perform the transaction"
EXPSV_MA6	"Issue with MM agent solved: Agent overcharged for the transaction or asked you to pay a deposit"
EXPSV_MA7	"Issue with MM agent solved: Agent did not give all the cash that was owed"
EXPSV_MA8	"Issue with MM agent solved: Agent system or mobile network was down"
EXPSV_MA9	"Issue with MM agent solved: It was very time-consuming/it took you a lot of time to do the transaction"
EXPSV_MA10	"Issue with MM agent solved: You did not get a receipt"
EXPSV_MA11	"Issue with MM agent solved: Agent charged you for depositing money"
EXPSV_MA12	"Issue with MM agent solved: Agent asked for your PIN number"
EXPSV_MA13	"Issue with MM agent solved: Agent was dismissive of women"
EXPSV_MA14	"Issue with MM agent solved: Agent committed fraud"
EXPSV_MA15	"Issue with MM agent solved: Agent’s place was not secure/there were suspicious people at agent’s place"
EXPSV_MA16	"Issue with MM agent solved: Agent shared your personal/account information with other people without your knowledge/permission"
EXPSV_MA17	"Issue with MM agent solved: Agent refused to do the transaction because you did not have your ID".

value labels EXP_MA1 1"Yes" 0"No".
value labels EXP_MA2	1"Yes" 0"No".
value labels EXP_MA3	1"Yes" 0"No".
value labels EXP_MA4	1"Yes" 0"No".
value labels EXP_MA5	1"Yes" 0"No".
value labels EXP_MA6	1"Yes" 0"No".
value labels EXP_MA7	1"Yes" 0"No".
value labels EXP_MA8	1"Yes" 0"No".
value labels EXP_MA9	1"Yes" 0"No".
value labels EXP_MA10	1"Yes" 0"No".
value labels EXP_MA11	1"Yes" 0"No".
value labels EXP_MA12	1"Yes" 0"No".
value labels EXP_MA13	1"Yes" 0"No".
value labels EXP_MA14	1"Yes" 0"No".
value labels EXP_MA15	1"Yes" 0"No".
value labels EXP_MA16	1"Yes" 0"No".
value labels EXP_MA17	1"Yes" 0"No".
value labels EXP_MA18	1"Yes" 0"No".
value labels EXPSV_MA1	1"Yes" 0"No".
value labels EXPSV_MA2	1"Yes" 0"No".
value labels EXPSV_MA3	1"Yes" 0"No".
value labels EXPSV_MA4	1"Yes" 0"No".
value labels EXPSV_MA5	1"Yes" 0"No".
value labels EXPSV_MA6	1"Yes" 0"No".
value labels EXPSV_MA7	1"Yes" 0"No".
value labels EXPSV_MA8	1"Yes" 0"No".
value labels EXPSV_MA9 1"Yes" 0"No".
value labels EXPSV_MA10	1"Yes" 0"No".
value labels EXPSV_MA11	1"Yes" 0"No".
value labels EXPSV_MA12	1"Yes" 0"No".
value labels EXPSV_MA13	1"Yes" 0"No".
value labels EXPSV_MA14	1"Yes" 0"No".
value labels EXPSV_MA15	1"Yes" 0"No".
value labels EXPSV_MA16	1"Yes" 0"No".
value labels EXPSV_MA17	1"Yes" 0"No".


