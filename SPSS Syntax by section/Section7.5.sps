* Encoding: UTF-8.

*Section 7.5.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.
*Need double check.
compute ACTION_MM1=mm6_1.
compute ACTION_MM2=mm6_2.
compute ACTION_MM3=mm6_3.
compute ACTION_MM4=mm6_4.
compute ACTION_MM5=mm6_5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.
*Need double check.
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
*Need double check.
numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.
*Need double check.
compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_18 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_18(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute ACTION_MM1=mm32_1.
compute ACTION_MM2=mm32_2.
compute ACTION_MM3=mm32_4.
numeric ACTION_MM4.
compute ACTION_MM5=mm32_5.
compute ACTION_MM6=mm32_6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.
**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                   mmp1_11 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10
                                   mmp3_11 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).


**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10 
                                   mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15 mmp1_16 mmp1_17 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_9 mmp3_10 
                                          mmp3_11 mmp3_12 mmp3_13 mmp3_14 mmp3_15 mmp3_16 mmp3_17 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_8 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_96(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5 mmp3_6 mmp3_7 mmp3_96(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

recode mm32_1(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(99=-2) into ACTION_MM6.

recode mm42_1(1,2=1)(3,4=2) into OPN_MM1.
recode mm42_2(1,2=1)(3,4=2) into OPN_MM2.
recode mm42_3(1,2=1)(3,4=2) into OPN_MM3.
recode mm42_4(1,2=1)(3,4=2) into OPN_MM4.
recode mm42_5(1,2=1)(3,4=2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2) into OPN_MM6.
*Need double check.
numeric AWARE_MMP.
*Need double check.
count ACCESS_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp3_1 mmp3_2 mmp3_3 mmp3_4 mmp3_5(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1=1)(2=2)(9=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9=-2) into OPN_MM6.
*Need double check.
count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9(1).
recode AWARE_MMP(1 thru highest=1).
*Need double check.
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(9=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(9=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(9=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(9=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(9=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1=1)(2=2)(9=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9=-2) into OPN_MM6.
*Need double check.
count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9
                                  mmp1_10 mmp1_11 mmp1_12 mmp1_13(1).
recode AWARE_MMP(1 thru highest=1).
*Need double check.
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9
                                   mmp2_10 mmp2_11 mmp2_12 mmp2_13(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
numeric REGISTERED_MMP.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2)(5=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5=-2) into OPN_MM6.
*Need double check.
count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10(1).
recode AWARE_MMP(1 thru highest=1).
*Need double check.
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9 mmp2_10(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp4_1 mmp4_2 mmp4_3 mmp4_4 mmp4_5 mmp4_6 mmp4_7 mmp4_8 mmp4_9 mmp4_10(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2)(5=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5=-2) into OPN_MM6.
*Need double check.
count AWARE_MMP=mmp1_1 mmp1_2 mmp1_3 mmp1_4 mmp1_5 mmp1_6 mmp1_7 mmp1_8 mmp1_9 mmp1_10
                                  mmp1_11 mmp1_12 mmp1_13 mmp1_14 mmp1_15(1).
recode AWARE_MMP(1 thru highest=1).
*Need double check.
count ACCESS_MMP=mmp2_1 mmp2_2 mmp2_3 mmp2_4 mmp2_5 mmp2_6 mmp2_7 mmp2_8 mmp2_9 mmp2_10
                                   mmp2_11 mmp2_12 mmp2_13 mmp2_14 mmp2_15(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp4_1 mmp4_2 mmp4_3 mmp4_4 mmp4_5 mmp4_6 mmp4_7 mmp4_8 mmp4_9 mmp4_10
                                          mmp4_11 mmp4_12 mmp4_13 mmp4_14 mmp4_15(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2)(5=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5=-2) into OPN_MM6.
*Need double check.
count AWARE_MMP=mmp1_1 mmp1_2(1).
recode AWARE_MMP(1 thru highest=1).
*Need double check.
count ACCESS_MMP=mmp2_1 mmp2_2(1).
recode ACCESS_MMP(1 thru highest=1).
*Need double check.
count REGISTERED_MMP=mmp4_1 mmp4_2(1).
recode REGISTERED_MMP(1 thru highest=1).

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1=1)(2=2)(9=-2) into OPN_MM1.
recode mm42_5(1=1)(2=2)(9=-2) into OPN_MM2.
recode mm42_2(1=1)(2=2)(9=-2) into OPN_MM3.
recode mm42_3(1=1)(2=2)(9=-2) into OPN_MM4.
recode mm42_4(1=1)(2=2)(9=-2) into OPN_MM5.
recode mm42_6(1=1)(2=2)(9=-2) into OPN_MM6.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2)(5=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5=-2) into OPN_MM6.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.
*Need double check.
recode mm32_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode mm32_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode mm32_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode mm32_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode mm32_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.
*Need double check.
recode mm42_1(1,2=1)(3,4=2)(5=-2) into OPN_MM1.
recode mm42_5(1,2=1)(3,4=2)(5=-2) into OPN_MM2.
recode mm42_2(1,2=1)(3,4=2)(5=-2) into OPN_MM3.
recode mm42_3(1,2=1)(3,4=2)(5=-2) into OPN_MM4.
recode mm42_4(1,2=1)(3,4=2)(5=-2) into OPN_MM5.
recode mm42_6(1,2=1)(3,4=2)(5=-2) into OPN_MM6.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.
*Need double check.
recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.
*Need double check.
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

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

recode tdl8_1(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM1.
recode tdl8_2(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM2.
recode tdl8_4(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM3.
numeric ACTION_MM4.
recode tdl8_6(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM5.
recode tdl8_7(4=1)(3=2)(2=4)(1=5)(5=-2) into ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.
*Need double check.
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

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.
*Need double check.
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

*****************************************************************************************************************************.
*Labels.

