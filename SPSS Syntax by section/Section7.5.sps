* Encoding: windows-1252.

*Section 7.5.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

DATASET ACTIVATE bng18.

recode MM6_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM6_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM6_3 (sysmis=-2) (else=copy) into ACTION_MM3.
recode MM6_4 (sysmis=-2) (else=copy) into ACTION_MM4.
recode MM6_5 (sysmis=-2) (else=copy) into ACTION_MM5.
compute ACTION_MM6=-2.
if any(1, MM6_6, MM6_7) ACTION_MM6=1.
if any(2, MM6_6, MM6_7) ACTION_MM6=2.
if any(3, MM6_6, MM6_7) ACTION_MM6=3.
if any(4, MM6_6, MM6_7) ACTION_MM6=4.
if any(5, MM6_6, MM6_7) ACTION_MM6=5.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

DATASET ACTIVATE ind18.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

DATASET ACTIVATE bng17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

DATASET ACTIVATE ind17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_18 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

DATASET ACTIVATE ken17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_4 mmp1_5 mmp1_6 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_18(1).
recode ACCESS_MMP(1 thru highest=1). 
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

DATASET ACTIVATE nga17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

DATASET ACTIVATE pak17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

DATASET ACTIVATE tza17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

DATASET ACTIVATE uga17.

recode MM32_1 (sysmis=-2) (else=copy) into ACTION_MM1.
recode MM32_2 (sysmis=-2) (else=copy) into ACTION_MM2.
recode MM32_4 (sysmis=-2) (else=copy) into ACTION_MM3.
numeric ACTION_MM4.
recode MM32_5 (sysmis=-2) (else=copy) into ACTION_MM5.
recode MM32_6 (sysmis=-2) (else=copy) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

DATASET ACTIVATE bng16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

DATASET ACTIVATE ind16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10
                                   mmp3_11 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

DATASET ACTIVATE ida16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).


**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

DATASET ACTIVATE ken16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10 
                                   mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10 
                                          mmp3_11 mmp3_12 mmp3_13 mmp3_14 mmp3_15 mmp3_16 mmp3_17 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

DATASET ACTIVATE nga16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

DATASET ACTIVATE pak16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

DATASET ACTIVATE tza16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

DATASET ACTIVATE uga16.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(else=-2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2)(else=-2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2)(else=-2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2)(else=-2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2)(else=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(else=-2) into OPN_MM6.

numeric AWARE_MMP.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

DATASET ACTIVATE bng15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

DATASET ACTIVATE ind15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(9,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(9,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(9,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(9,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(9,SYSMIS=-2) into ACTION_MM6. 

recode mm42_1(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9
                                  mmp1_10 mmp1_11 mmp1_12 mmp1_13(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9
                                   mmp2_10 mmp2_11 mmp2_12 mmp2_13(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

DATASET ACTIVATE ida15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9 mmp2_10(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp4_1 mmp4_2 mmp4_3 mmp4_4 mmp4_5 mmp4_6 mmp4_7 mmp4_8 mmp4_9 mmp4_10(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

DATASET ACTIVATE ken15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                  mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9 mmp2_10
                                   mmp2_11 mmp2_12 mmp2_13 mmp2_14 mmp2_15(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp4_1 mmp4_2 mmp4_3 mmp4_4 mmp4_5 mmp4_6 mmp4_7 mmp4_8 mmp4_9 mmp4_10
                                          mmp4_11 mmp4_12 mmp4_13 mmp4_14 mmp4_15(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

DATASET ACTIVATE nga15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp4_1 mmp4_2(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

DATASET ACTIVATE pak15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5(1).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

DATASET ACTIVATE tza15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp4_1 mmp4_2 mmp4_3 mmp4_4 mmp4_5 mmp4_6 mmp4_7(1).
recode REGISTERED_MMP(1 thru highest=1).
**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

DATASET ACTIVATE uga15.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5,SYSMIS=-2) into OPN_MM6.

count AWARE_MMP=mmp1_1 mmp1_2(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mmp2_1 mmp2_2(1).
recode ACCESS_MMP(1 thru highest=1).
count REGISTERED_MMP=mmp4_1 mmp4_2(1).
recode REGISTERED_MMP(1 thru highest=1).
**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

DATASET ACTIVATE bng14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

DATASET ACTIVATE ind14.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

DATASET ACTIVATE ida14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

DATASET ACTIVATE ken14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

count AWARE_MMP=mm44_1 mm44_2 mm44_3 mm44_4 mm44_5 mm44_6 mm44_7 mm44_8 mm44_9 mm44_10
                                  mm44_11 mm44_12 mm44_13 mm44_14 mm44_15
                                  mm45_1 mm45_2 mm45_3 mm45_4 mm45_5 mm45_6 mm45_7 mm45_8 mm45_9 mm45_10
                                  mm45_11 mm45_12 mm45_13 mm45_14 mm45_15(1).
recode AWARE_MMP(1 thru highest=1).
count ACCESS_MMP=mm46_1 mm46_2 mm46_3 mm46_4 mm46_5 mm46_6 mm46_7 mm46_8 mm46_9 mm46_10
                                   mm46_11 mm46_12 mm46_13 mm46_14 mm46_15(1 thru 5).
recode ACCESS_MMP(1 thru highest=1).
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

DATASET ACTIVATE nga14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

DATASET ACTIVATE pak14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

DATASET ACTIVATE tza14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

DATASET ACTIVATE uga14.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

DATASET ACTIVATE bng13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

DATASET ACTIVATE ind13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

DATASET ACTIVATE ken13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

DATASET ACTIVATE nga13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

DATASET ACTIVATE pak13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

DATASET ACTIVATE tza13.

recode TI3_1(4=1)(3=2)(2=4)(1=5)(5,6,SYSMIS=-2) into ACTION_MM1.
recode TI3_2(4=1)(3=2)(2=4)(1=5)(5,6,SYSMIS=-2) into ACTION_MM2.
recode TI3_4(4=1)(3=2)(2=4)(1=5)(5,6,SYSMIS=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode TI3_6(4=1)(3=2)(2=4)(1=5)(5,6,SYSMIS=-2) into ACTION_MM5.
recode TI3_7(4=1)(3=2)(2=4)(1=5)(5,6,SYSMIS=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

DATASET ACTIVATE uga13.

numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

*****************************************************************************************************************************.
*Labels.
variable labels
ACTION_MM1	"Difficulty or ease to perform the action without assistance: Open the mobile money menu"
ACTION_MM2	"Difficulty or ease to perform the action without assistance: Find a particular menu option, such as send money"
ACTION_MM3	"Difficulty or ease to perform the action without assistance: Complete a transaction"
ACTION_MM4	"Difficulty or ease to perform the action without assistance: Correct an error in the amount of money to send"
ACTION_MM5	"Difficulty or ease to perform the action without assistance: Correct an error in the amount or phone number for a transaction recipient"
ACTION_MM6	"Difficulty or ease to perform the action without assistance: Reverse or cancel a transaction"
OPN_MM1	"Mobile money allows you to keep money on your phone"
OPN_MM2	"Mobile money allows you to get a loan"
OPN_MM3	"You can deposit and withdraw in cash using mobile money"
OPN_MM4	"You can send money to someone using mobile money"
OPN_MM5	"You can save money on a mobile phone"
OPN_MM6	"You can pay for goods and services through your mobile phone"
AWARE_MMP	"Aware of non-MM mobile-based financial pruducts"
ACCESS_MMP	"Eved used non-MM mobile-based financial products"
REGISTERED_MMP	"Have account of non-MM mobile-based financial pruducts".

value labels ACTION_MM1 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels ACTION_MM2 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels ACTION_MM3 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels ACTION_MM4 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels ACTION_MM5 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels ACTION_MM6 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK/NA".
value labels OPN_MM1 1"Yes" 2"No" -2"DK".
value labels OPN_MM2 1"Yes" 2"No" -2"DK".
value labels OPN_MM3 1"Yes" 2"No" -2"DK".
value labels OPN_MM4 1"Yes" 2"No" -2"DK".
value labels OPN_MM5 1"Yes" 2"No" -2"DK".
value labels OPN_MM6 1"Yes" 2"No" -2"DK".
value labels AWARE_MMP 1"Yes" 0"No".
value labels ACCESS_MMP 1"Yes" 0"No".
value labels REGISTERED_MMP 1"Yes" 0"No".


