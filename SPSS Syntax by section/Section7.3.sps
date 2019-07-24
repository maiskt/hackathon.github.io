* Encoding: UTF-8.
*Section 7.3.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.
*Need double check.
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

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

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

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.
*Need double check.
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


**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

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


**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

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


**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

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


**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

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


**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

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



**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

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

  

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.
*Need double check.
recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
recode mm38_9(1=1)(else=0) into EXP_MA7.
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

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.
*Need double check.
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

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.
*Need double check.
recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

recode mm38_1(1=1)(else=0) into EXP_MA1.
numeric EXP_MA2.
recode mm38_3(1=1)(else=0) into EXP_MA3.
recode mm38_5(1=1)(else=0) into EXP_MA4.
recode mm38_6(1=1)(else=0) into EXP_MA5.
recode mm38_7(1=1)(else=0) into EXP_MA6.
numeric EXP_MA7.
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
recode mm38_19(1=1)(else=0) into EXP_MA18.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.
*Need double check.
recode mm30_1(1=1)(else=0) into EXP_MA1.

recode mm30_3(1=1)(else=0) into EXP_MA3.
recode mm30_5(1=1)(else=0) into EXP_MA4.

recode mm30_2(1=1)(else=0) into EXP_MA11.
recode mm30_4(1=1)(else=0) into EXP_MA12.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

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


