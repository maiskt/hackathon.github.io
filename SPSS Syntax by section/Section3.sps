* Encoding: windows-1252.

*Section 3.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

compute AGE=2018-dg1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 13=4)(-2,14 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_7=1) ID=1.

compute LITERACY=0.
if ((LN1<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,-2=0) into a1.
recode fl15(2=1)(1,3,-2=0) into a2.
recode fl16(2=1)(1,-2=0) into a3.
recode fl17(2=0.5)(1,-2=0) into a4.
recode fl18(2=0.5)(1,3,-2=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9(1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.

count HAVE_CHILDREN=I_1_D3 I_2_D3 I_3_D3 I_4_D3 I_5_D3 I_6_D3 I_7_D3 I_8_D3 I_9_D3 I_10_D3 I_11_D3 I_12_D3
I_13_D3 I_14_D3 I_15_D3 I_16_D3 I_17_D3 I_18_D3 I_19_D3 I_20_D3 I_21_D3 (0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

compute SCHOOL_FEE=0.
if ad4=1 SCHOOL_FEE=1.

compute EMPLOYMENT=dl1.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

compute AGE=2018-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3,4=2)(5 thru 7=3)(8 thru 11=4)(96,-2=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_10=1) ID=1.

compute LITERACY=0.
if LN1<=3 and (LN2_1>=3 or LN2_2>=3) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,-2=0) into a1.
recode fl15(2=1)(1,3,-2=0) into a2.
recode fl16(2=1)(1,-2=0) into a3.
recode fl17(2=0.5)(1,-2=0) into a4.
recode fl18(2=0.5)(1,3,-2=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9(1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.

count HAVE_CHILDREN=I_1_D3 I_2_D3 I_3_D3 I_4_D3 I_5_D3 I_6_D3 I_7_D3 I_8_D3 I_9_D3 I_10_D3 I_11_D3 I_12_D3
I_13_D3 I_14_D3 I_15_D3 I_16_D3 I_17_D3 I_18_D3 I_19_D3 I_20_D3 I_21_D3 I_22_D3 I_23_D3 I_24_D3 I_25_D3(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

compute SCHOOL_FEE=0.
if ad4=1 SCHOOL_FEE=1.

compute EMPLOYMENT=dl1.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 13=4)(14 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_9=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).
recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11 (1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(96=96)(99=-2).

count HAVE_CHILDREN=I_1_HH2_2 I_2_HH2_2 I_3_HH2_2 I_4_HH2_2 I_5_HH2_2 I_6_HH2_2 
I_7_HH2_2 I_8_HH2_2 I_9_HH2_2 I_10_HH2_2(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3,4=2)(5,6,7=3)(8 thru 11=4)(96,99=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_8=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11(1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

count HAVE_CHILDREN=I_1_HH2_2 I_2_HH2_2 I_3_HH2_2 I_4_HH2_2 I_5_HH2_2 I_6_HH2_2 
I_7_HH2_2 I_8_HH2_2 I_9_HH2_2 I_10_HH2_2 I_11_HH2_2 I_12_HH2_2 
I_13_HH2_2 I_14_HH2_2 I_15_HH2_2 I_16_HH2_2 I_17_HH2_2 I_18_HH2_2
I_19_HH2_2 I_20_HH2_2 I_21_HH2_2 I_22_HH2_2 I_23_HH2_2 I_24_HH2_2 I_25_HH2_2(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_9=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11 (1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

count HAVE_CHILDREN=I_1_HH2_2 I_2_HH2_2 I_3_HH2_2 I_4_HH2_2 I_5_HH2_2 I_6_HH2_2 
I_7_HH2_2 I_8_HH2_2 I_9_HH2_2 I_10_HH2_2 I_11_HH2_2 I_12_HH2_2 (0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_5=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11 (1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

*changed.
numeric HAVE_CHILDREN.

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and max(LN2_1 to LN2_18)>=3) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11(1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(96=96)(99=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_8=1 or DG5_9=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_3>=3 or LN2_4>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode FL14(2=1)(1,99=0) into a1.
recode FL15(2=1)(1,3,99=0) into a2.
recode FL16(2=1)(1,99=0) into a3.
recode FL17(2=0.5)(1,99=0) into a4.
recode FL18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11 (1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

count HAVE_CHILDREN=I_1_HH2_2 I_2_HH2_2 I_3_HH2_2 I_4_HH2_2 I_5_HH2_2 I_6_HH2_2 
I_7_HH2_2 I_8_HH2_2 I_9_HH2_2 I_10_HH2_2 I_11_HH2_2 I_12_HH2_2 
I_13_HH2_2 I_14_HH2_2 I_15_HH2_2 I_16_HH2_2 I_17_HH2_2 I_18_HH2_2
I_19_HH2_2 I_20_HH2_2 I_21_HH2_2 I_22_HH2_2 I_23_HH2_2 I_24_HH2_2 I_25_HH2_2(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute AGE=2017-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_8=1 or DG5_9=1 or DG5_11=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 or LN1B<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=2).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(2=0.5)(1,99=0) into a4.
recode fl18(2=0.5)(1,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 6).
count digital_text=mt17_3 (1 thru 6).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_9 mt17_11 (1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

count HAVE_CHILDREN=I_1_HH2_2 I_2_HH2_2 I_3_HH2_2 I_4_HH2_2 I_5_HH2_2 I_6_HH2_2 
I_7_HH2_2 I_8_HH2_2 I_9_HH2_2 I_10_HH2_2 I_11_HH2_2 I_12_HH2_2 
I_13_HH2_2 I_14_HH2_2 I_15_HH2_2 I_16_HH2_2 I_17_HH2_2 I_18_HH2_2
I_19_HH2_2 I_20_HH2_2(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

compute AGE=2016-DG1.
if dg1=99 AGE=$sysmis.
if HH2_5=1 age1=HH2_2_1.
if HH2_5=2 age1=HH2_2_2.
if HH2_5=3 age1=HH2_2_3.
if HH2_5=4 age1=HH2_2_4.
if HH2_5=5 age1=HH2_2_5.
if HH2_5=6 age1=HH2_2_6.
if HH2_5=7 age1=HH2_2_7.
if HH2_5=8 age1=HH2_2_8.
if HH2_5=9 age1=HH2_2_9.
if HH2_5=10 age1=HH2_2_10.
if HH2_5=11 age1=HH2_2_11.
if HH2_5=12 age1=HH2_2_12.
if HH2_5=13 age1=HH2_2_13.
if HH2_5=14 age1=HH2_2_14.
if HH2_5=15 age1=HH2_2_15.
if sysmis(AGE) AGE=age1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 14=4)(96 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_5=1 or  DG5_6=1 or DG5_7=1 or DG5_96=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_6)>=3) or (LN1B<=3 and max(LN2_1 to LN2_6)>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

compute AGE=2016-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3 thru 4=2)(5 thru 7=3)(8 thru 11=4)(96 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_5=1 or DG5_6=1 or DG5_7=1 or DG5_8=1 or DG5_9=1 or DG5_10=1 or DG5_11=1 or DG5_96=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_4)>=3) or (LN1B<=3 and max(LN2_1 to LN2_4)>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_10 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7,8=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if DG12B_2=1 or DG12C_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

 * compute AGE=2016-DG1.
 * if dg1=99 AGE=$sysmis.
 * if HH5=1 age1=HH2_4_1.
 * if HH5=2 age1=HH2_4_2.
 * if HH5=3 age1=HH2_4_3.
 * if HH5=4 age1=HH2_4_4.
 * if HH5=5 age1=HH2_4_5.
 * if HH5=6 age1=HH2_4_6.
 * if HH5=7 age1=HH2_4_7.
 * if HH5=8 age1=HH2_4_8.
 * if HH5=9 age1=HH2_4_9.
 * if sysmis(AGE) AGE=age1. 
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2,3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_3=1 or DG5_4=1 or DG5_12=1 or DG5_13=1 or DG5_15=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_6)>=3) or (LN1B<=3 and max(LN2_1 to LN2_6)>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

 * compute AGE=2016-DG1.
 * if DG1=99 AGE=99.
 * if HH3=1 age1=HH2_2_1.
 * if HH3=2 age1=HH2_2_2.
 * if HH3=3 age1=HH2_2_3.
 * if HH3=4 age1=HH2_2_4.
 * if HH3=5 age1=HH2_2_5.
 * if HH3=6 age1=HH2_2_6.
 * if HH3=7 age1=HH2_2_7.
 * if HH3=8 age1=HH2_2_8.
 * if HH3=9 age1=HH2_2_9.
 * if HH3=10 age1=HH2_2_10.
 * if AGE=99 AGE=age1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_9=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_16)>=3) or (LN1B<=3 and max(LN2_1 to LN2_16)>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

 * compute AGE=2016-DG1.
 * if DG1=99 AGE=99.
 * if HH4=1 age1=HH2_2_1.
 * if HH4=2 age1=HH2_2_2.
 * if HH4=3 age1=HH2_2_3.
 * if HH4=4 age1=HH2_2_4.
 * if HH4=5 age1=HH2_2_5.
 * if HH4=6 age1=HH2_2_6.
 * if HH4=7 age1=HH2_2_7.
 * if HH4=8 age1=HH2_2_8.
 * if HH4=9 age1=HH2_2_9.
 * if HH4=10 age1=HH2_2_10.
 * if AGE=99 AGE=age1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1) ID=1.

compute LITERACY=0.
loop i=3 to 5.
if ( (LN1A<=3 and any(i,LN2_1 to LN2_12)) or (LN1B<=3 and any(i,LN2_1 to LN2_12)) ) LITERACY=1.
end loop.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

compute AGE=2016-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 13=4)(14 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_7=1 or DG5_8=1 or DG5_9=1 or DG5_96=1) ID=1.

compute LN2=max(LN2_1 to LN2_18, ln2_19, ln2_20).
compute LITERACY=0.
if (((Ln1_1<=3 or ln1a_1<=3 or ln1b_1<=3) and ln2>=3) or ((Ln1_2<=3 or ln1a_2<=3 or ln1b_2<=3) and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

compute AGE=2016-DG1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_6=1 or DG5_8=1 or DG5_9=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_6)>=3) or (LN1B<=3 and max(LN2_1 to LN2_6)>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

 * compute AGE=2016-DG1.
 * if DG1=99 AGE=99.
 * if HH3_1=1 age1=HH2_2_1.
 * if HH3_1=2 age1=HH2_2_2.
 * if HH3_1=3 age1=HH2_2_3.
 * if HH3_1=4 age1=HH2_2_4.
 * if HH3_1=5 age1=HH2_2_5.
 * if HH3_1=6 age1=HH2_2_6.
 * if HH3_1=7 age1=HH2_2_7.
 * if HH3_1=8 age1=HH2_2_8.
 * if HH3_1=9 age1=HH2_2_9.
 * if HH3_1=10 age1=HH2_2_10.
 * if AGE=99 AGE=age1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 14=4)(96 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or Dg5_5=1 or DG5_6=1 or DG5_8=1 or DG5_9=1 or DG5_11=1) ID=1.

compute LITERACY=0.
if ((LN1A<=3 and max(LN2_1 to LN2_6)>=3) or (LN1B<=3 and max(LN2_1 to LN2_6)>=3)) LITERACY=1.

compute NUMERACY=(FL12=1 OR FL13=1 OR FL16=2 OR FL18=1).

recode fl14(2=1)(1,99=0) into a1.
recode fl15(2=1)(1,3,99=0) into a2.
recode fl16(2=1)(1,99=0) into a3.
recode fl17(1=0.5)(2,99=0) into a4.
recode fl18(1=0.5)(2,3,99=0) into a5.
compute FINANCIAL_LITERACY=sum(a1,a2,a3,a4,a5).
recode FINANCIAL_LITERACY (3 thru highest=1) (else=0).

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

compute MARRIAGE=dg3.
recode MARRIAGE(1=1)(2,3=2)(4=3)(5=4)(6=5)(96=96)(99=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1 thru 2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 13=4)(15 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_11 (1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL14=1 OR FL15=1 OR FL16=1 OR FL17=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt22_1 mt22_2 (1 thru 5).
count digital_text=mt22_3 (1 thru 5).
count digital_adv=mt22_4 mt22_5 mt22_6 mt22_7 mt22_8 mt22_9 mt22_10 mt22_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<999) or (dg8c>0 and dg8c<999) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg11d_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or  DL4_15=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1 thru 2=1)(3,4=2)(5 thru 7=3)(8 thru 11=4)(12 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_12(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL14=1 OR FL15=1 OR FL16=1 OR FL17=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<99) or (dg8c>0 and dg8c<99) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg11d_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE(sysmis=-2).
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode AGE_GROUP(999=-2).
recode dg4 (1 =1)(2 thru 3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_3 to dg5_5 dg5_12 dg5_13 dg5_15 (1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_10).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL14=1 OR FL15=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0) or (dg8c>0) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

compute AGE=2015-DG1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_3 dg5_9(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_10).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL14=1 OR FL15=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<999) or (dg8c>0 and dg8c<999) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE(999=sysmis).
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode AGE(sysmis=-2).
recode AGE_GROUP(999=-2).
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_4 dg5_6(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_10).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL14=1 OR FL15=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<999) or (dg8c>0 and dg8c<999) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 13=4)(14 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_10 (1).
RECODE ID(1 THRU HIGHEST=1).

compute  LN2=max(LN3_1 to LN3_18).
compute LITERACY=0.
if (((Ln1_1<=3 or ln1a_1<=3 or ln1b_1<=3) and ln2>=3) or ((Ln1_2<=3 or ln1a_2<=3 or ln1b_2<=3) and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL14=1 OR FL15=1 OR FL16=1 OR FL17=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt22_1 mt22_2 (1 thru 5).
count digital_text=mt22_3 (1 thru 5).
count digital_adv=mt22_4 mt22_5 mt22_6 mt22_7 mt22_8 mt22_9 mt22_10 mt22_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<999) or (dg8c>0 and dg8c<999) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg11d_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(99=-2)(13,97=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL2=109 or DL2=110 or DL2=119 or DL2=120 or 
DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode AGE(sysmis=-2).
recode AGE_GROUP(999=-2).
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_4 dg5_6 dg5_8 dg5_11 (1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL14=1 OR FL15=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0 and dg8b<999) or (dg8c>0 and dg8c<999) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

compute AGE=2015-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_11 (1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_16).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.
compute NUMERACY=(FL12=1 OR FL13=1 OR FL14=1 OR FL15=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt17_1 mt17_2 (1 thru 5).
count digital_text=mt17_3 (1 thru 5).
count digital_adv=mt17_4 mt17_5 mt17_6 mt17_7 mt17_8 mt17_9 mt17_11 mt17_13(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

compute HAVE_CHILDREN=0.
if (dg8b>0) or (dg8c>0) HAVE_CHILDREN=1.

compute SCHOOL_FEE=0.
if dg12_2=1 SCHOOL_FEE=1.

rename variables dl1=EMPLOYMENT.
recode EMPLOYMENT(12=-2)(11=96).

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or 
DL4_6=1 or DL4_7=1 or DL4_8=1 or DL4_9=1 or DL4_10=1 or 
DL4_11=1 or DL4_12=1 or DL4_13=1 or DL4_14=1 or DL4_15=1 or DL4_16=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.




**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

count ID=DG5_1 DG5_2 DG5_3 DG5_4 DG5_5 DG5_6 DG5_7 DG5_8 DG5_9 DG5_10(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1 or
DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1 thru 2=1)(3,4=2)(5 thru 7=3)(8 thru 11=4)(12 thru HIGHEST=5) into EDU.

count ID=dg5_1 to dg5_12(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL20=1 OR FL21=1 OR FL22=1 OR FL23=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_10(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1 =1)(2 thru 3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_3 DG5_4 DG5_5 DG5_12 DG5_14(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_10).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL20=1 OR FL21=1 OR FL22=1 OR FL23=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_8(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to LN2_12).
compute LITERACY=0.
if ((Ln1<=3 and ln1b<=4 and ln2>=3) or (ln1<=4 and ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_5 dg5_3 (1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_10).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 13=4)(14 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_3 DG5_4 DG5_5 DG5_6 DG5_7 DG5_8 DG5_9 DG5_10(1).
RECODE ID(1 THRU HIGHEST=1).

compute  LN2=max(LN2_1 to LN2_18).
compute LITERACY=0.
if (((Ln1_1<=3) and ln2>=3) or ((ln1_1b<=3) and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

compute AGE=2014-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_3 DG5_5 DG5_7 DG5_10(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_4).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_12=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

recode dg1(999=sysmis).
compute AGE=2014-dg1.
recode AGE(sysmis=-2).
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_3 dg5_4 dg5_5 dg5_6 dg5_7 dg5_8 dg5_9 dg5_10 dg5_11(1).
RECODE ID(1 THRU HIGHEST=1).

compute LN2=max(LN2_1 to Ln2_20).
compute LITERACY=0.
if ((Ln1<=3 and ln2>=3) or (Ln1b<=3 and ln2>=3)) LITERACY=1.

compute NUMERACY=(FL19=1 OR FL20=1 OR FL21=1 OR FL22=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt10_1 mt10_2 (1 thru 5).
count digital_text=mt10_3 (1 thru 5).
count digital_adv=mt10_4 mt10_5 mt10_6 mt10_7 mt10_8 mt10_9 mt10_11(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.

recode dl1(4=5)(5=6)(6=7)(7=8)(8=9)(9=10)(11=-2)(10=96)(else=copy) into EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL7_1=1 or DL7_2=1 or DL7_3=1 or DL7_4=1 or DL7_5=1 or DL7_6=1 or DL7_7=1 or DL7_8=1 or DL7_9=1 or 
DL4_15=1 or DL6_15=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.



**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 5=2)(6 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_5=1 or DG5_6=1 or DG5_7=1 or DG5_8=1 or DG5_9=1 or DG5_10=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt11_1 mt11_2 (1).
count digital_text=mt11_3 (1).
count digital_adv=mt11_4 mt11_5 mt11_6 mt11_7 mt11_8(1).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2=2)(3,4=3)(5=4)(6=96)(7=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3A=1 or DL3B=1
or DL6=12 or DL6=13 or DL6=14 or DL7L=1 or DL7M=1 or DL7N=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1 thru 2=1)(3,4=2)(5 thru 7=3)(8 thru 11=4)(12 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_5=1 or DG5_6=1 or DG5_7=1 or DG5_8=1 or DG5_9=1 or DG5_10=1 or DG5_11=1 or DG5_12=1
 or DG5_13=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

numeric DIGITAL_LITERACY_INDEX.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL6=11 or DL6=12 or DL6=13 or DL7_11=1 or DL7_12=1 or DL7_13=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_8=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

numeric DIGITAL_LITERACY_INDEX.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3A=1 or DL3B=1
or DL6=12 or DL6=13 or DL6=14 or DL7L=1 or DL7M=1 or DL7N=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5A=1 or DG5B=1 or DG5C=1 or DG5E=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt11a mt11b (1 thru 5).
count digital_text=mt11c (1 thru 5).
count digital_adv=mt11d mt11e mt11f mt11g mt11h(1 thru 5).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3A=1 or DL3B=1
or DL6=12 or DL6=13 or DL6=14 or DL7L=1 or DL7M=1 or DL7N=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1,2=1)(3 thru 4=2)(5 thru 8=3)(9 thru 13=4)(14 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_4=1 or DG5_5=1 or DG5_6=1 or DG5_7=1 or DG5_8=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

count digital_call=mt11_1 mt11_2 (1).
count digital_text=mt11_3 (1).
count digital_adv=mt11_4 mt11_5 mt11_6 mt11_7 mt11_8(1).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL2=43 or DL2=47 or DL2=57 or DL2=58 or DL2=60 or DL2=67 or 
DL3A=1 or DL3B=1 or DL6=12 or DL6=13 or DL6=14 or DL6=21 or DL7L=1 or DL7M=1 or DL7N=1 or DL7R=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

 * compute AGE=2013-dg1a.
rename variables iage=AGE.
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 9=3)(10 thru 14=4)(15 thru HIGHEST=5) into EDU.

compute ID=0.
if (DG5_1=1 or DG5_2=1 or DG5_3=1 or DG5_5=1 or DG5_7=1) ID=1.

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

numeric DIGITAL_LITERACY_INDEX.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3_1=1 or DL3_2=1
or DL6=12 or DL6=13 or DL6=14 or DL7_12=1 or DL7_13=1 or DL7_14=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

compute AGE=2013-dg1.
recode AGE(sysmis=-2).
recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.
recode dg4 (1=1)(2 thru 3=2)(4 thru 7=3)(8 thru 12=4)(13 thru HIGHEST=5) into EDU.

count ID=dg5_1 dg5_2 dg5_3 dg5_4 dg5_5 dg5_6 dg5_7 dg5_8 dg5_9(1).
recode ID (1 THRU HIGHEST=1).

compute LITERACY=0.
if (LN1<=3 and LN1B<=3) or LN1<=2 or LN1B<=2 LITERACY=1.

compute NUMERACY=(LN2=1 OR LN3=1 OR LN4=1).

numeric FINANCIAL_LITERACY.

numeric DIGITAL_LITERACY_INDEX.

compute GENDER=dg2.

rename variables dg3=MARRIAGE.
recode MARRIAGE(1=1)(2,3=2)(4,5=3)(6=4)(7=5)(8=96)(9=-2).

numeric HAVE_CHILDREN.
numeric SCHOOL_FEE.
numeric EMPLOYMENT.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL3A=1 or DL3B=1
or DL6=12 or DL6=13 or DL6=14 or DL7L=1 or DL7M=1 or DL7N=1 INVOL_AGRI=1.

numeric OWN_FARM.
numeric WORK_FARM.

*****************************************************************************************************************************.
*Labels.
value labels AGE -2"DK".

value labels AGE_GROUP 1"15-24" 2"25-34" 3"35-44" 4"45-54" 5"55 and over" -2"DK".

value labels EDU 1"No formal education" 2"Primary education" 3"Secondary education" 4"Higher education" 5"Other".

value labels ID 1"Yes" 0"No".

value labels LITERACY 1"Basic literacy" 0"lack of basic literacy".

value labels NUMERACY 1"Basic numeracy" 0"Lack of basic numeracy".

value labels FINANCIAL_LITERACY 0"No" 1"Yes".

value labels DIGITAL_LITERACY_INDEX 0"Not applicable" 1"Low" 2"Moderate" 3"High".

value labels GENDER 1"Male" 2"Female".

value labels MARRIAGE 1"Single/never married" 2"Married" 3"Divorced/Separated" 4"Widowed" 5"Living together/Cohabiting " 96"Other" -2"DK".

value labels HAVE_CHILDREN 1"Yes"0"No".

value labels SCHOOL_FEE 1"Yes"0"No".

value labels EMPLOYMENT  96"Other"
10"Not working because of sickness, disability, etc."
9"Not working because of retirement"
8"Full-time student"
7"Housewife or stay-at-home husband doing household chores"
6"Not working but looking for a job"
5"Self-employed, working for yourself"
4"Working per season (e.g., only during the harvest season)"
3"Working occasionally, irregular pay (whenever the work is available)"
2"Working part-time for a regular salary"
1"Working full-time for a regular salary"
-2"DK".

value labels INVOL_AGRI 1"Yes" 0"No".

value labels OWN_FARM 1"Yes" 0"No".

value labels WORK_FARM 1"Yes" 0"No".


variable labels AGE"Age"
AGE_GROUP"Age groups"
EDU"Education"
ID"Have required ID for registration financial account"
LITERACY"Literacy"
NUMERACY"Basic numeracy"
FINANCIAL_LITERACY"Financial literacy"
DIGITAL_LITERACY_INDEX"Digital literacy index"
GENDER"Gender"
MARRIAGE"Marital status"
HAVE_CHILDREN"Have children"
SCHOOL_FEE"Have ever paid a school fee"
EMPLOYMENT"Mainly doing for work in past 12 months"
INVOL_AGRI"Involved in agriculture"
OWN_FARM"Someone in your household own or lease a farm/farmland"
WORK_FARM"Work on the farm that someone in your household owned or leased yourself".


