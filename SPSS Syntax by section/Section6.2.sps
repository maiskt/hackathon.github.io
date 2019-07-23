* Encoding: windows-1252.

*Section 6.2.
*******************************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

count BANK_TRANSFER=AD1_1 AD1_2 AD1_3(1).
recode BANK_TRANSFER (1 thru highest=1).

count BANK_MERCHANT=AD2_1 AD2_2 AD2_3 AD2_10(1).
recode BANK_MERCHANT (1 thru highest=1).

count BANK_BILL=AD3_1 AD3_2 AD3_3 AD3_10 AD4_1 AD4_2 AD4_3 AD4_10 AD5_1 AD5_2 AD5_3 AD5_10(1).
recode BANK_BILL (1 thru highest=1).

count BANK_GOV=AD6_1 AD6_2 AD6_3(1).
recode BANK_GOV (1 thru highest=1).

count BANK_WAGE=AD7_1 AD7_2 AD7_3(1).
recode BANK_WAGE (1 thru highest=1).

count BANK_INSURANCE=AD8_1 AD8_2 AD8_3 AD8_10(1).
recode BANK_INSURANCE (1 thru highest=1).

count BANK_SAVE=AD9_1 AD9_2 AD9_3(1).
recode BANK_SAVE (1 thru highest=1).

count BANK_INVEST=AD10_17 AD10_18 AD10_19 AD10_26(1).
recode BANK_INVEST (1 thru highest=1).

count BANK_LOAN=AD11_2 AD11_3 AD11_4 AD11_5(1).
recode BANK_LOAN (1 thru highest=1).

numeric BANK_AIRTIME.

count ACTIVE_BANK_TRANSFER=AD1_12 AD1_13 AD1_14(1).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=AD2_11 AD2_12 AD2_13 AD2_20(1 thru 4).
recode ACTIVE_BANK_MERCHANT (1 thru highest=1).

count ACTIVE_BANK_BILL=AD3_11 AD3_12 AD3_13 AD3_20 AD4_11 AD4_12 AD4_13 AD4_20 AD5_11 AD5_12 AD5_13 AD5_20 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=AD6_10 AD6_11 AD6_12 (1 thru 4).
recode ACTIVE_BANK_GOV (1 thru highest=1).

count ACTIVE_BANK_WAGE=AD7_10 AD7_11 AD7_12 (1 thru 4).
recode ACTIVE_BANK_WAGE (1 thru highest=1).

count ACTIVE_BANK_INSURANCE=AD8_11 AD8_12 AD8_13 AD8_20 (1 thru 4).
recode ACTIVE_BANK_INSURANCE (1 thru highest=1).

count ACTIVE_BANK_SAVE=AD9_15 AD9_16 AD9_17 (1 thru 4).
recode ACTIVE_BANK_SAVE (1 thru highest=1).

count ACTIVE_BANK_INVEST=AD10_27 AD10_28 AD10_29 AD10_36 (1 thru 4).
recode ACTIVE_BANK_INVEST (1 thru highest=1).

count ACTIVE_BANK_LOAN=AD11_16 AD11_17 AD11_18 AD11_19 (1 thru 4).
recode ACTIVE_BANK_LOAN (1 thru highest=1).

numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

count BANK_TRANSFER=AD1_1 AD1_5 AD1_6 AD1_7(1).
recode BANK_TRANSFER (1 thru highest=1).

count BANK_MERCHANT=AD2_1 AD2_5 AD2_6 AD2_7 AD2_8(1).
recode BANK_MERCHANT (1 thru highest=1).

count BANK_BILL=AD3_1 AD3_5 AD3_6 AD3_7 AD3_8 AD4_1 AD4_5 AD4_6 AD4_7 AD4_8 AD5_1 AD5_5 AD5_6 AD5_7 AD5_8(1).
recode BANK_BILL (1 thru highest=1).

count BANK_GOV=AD6_1 AD6_5 AD6_6 AD6_7(1).
recode BANK_GOV (1 thru highest=1).

count BANK_WAGE=AD7_1 AD7_5 AD7_6 AD7_7(1).
recode BANK_WAGE (1 thru highest=1).

count BANK_INSURANCE=AD8_1 AD8_5 AD8_6 AD8_7 AD8_8(1).
recode BANK_INSURANCE (1 thru highest=1).

count BANK_SAVE=AD9_1 AD9_12 AD9_13 AD9_14(1).
recode BANK_SAVE (1 thru highest=1).

count BANK_INVEST=AD10_19 AD10_23 AD10_24 AD10_25 AD10_26(1).
recode BANK_INVEST (1 thru highest=1).

count BANK_LOAN= AD11_2 AD11_7 AD11_12 AD11_13 AD11_14(1).
recode BANK_LOAN (1 thru highest=1).

numeric BANK_AIRTIME.

count ACTIVE_BANK_TRANSFER=AD1_10 AD1_14 AD1_15 AD1_16(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=AD2_9 AD2_13 AD2_14 AD2_15 AD2_16(1 thru 4).
recode ACTIVE_BANK_MERCHANT (1 thru highest=1).

count ACTIVE_BANK_BILL=AD3_9 AD3_13 AD3_14 AD3_15 AD3_16 AD4_9 AD4_13 AD4_14 AD4_15 AD4_16 AD5_9 AD5_13 AD5_14 AD5_15 AD5_16 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=AD6_9 AD6_13 AD6_14  AD6_15(1 thru 4).
recode ACTIVE_BANK_GOV (1 thru highest=1).

count ACTIVE_BANK_WAGE=AD7_9 AD7_13 AD7_14  AD7_15 (1 thru 4).
recode ACTIVE_BANK_WAGE (1 thru highest=1).

count ACTIVE_BANK_INSURANCE=AD8_9 AD8_13 AD8_14 AD8_15 AD8_16 (1 thru 4).
recode ACTIVE_BANK_INSURANCE (1 thru highest=1).

count ACTIVE_BANK_SAVE=AD9_15 AD9_26 AD9_27 AD9_28 (1 thru 4).
recode ACTIVE_BANK_SAVE (1 thru highest=1).

count ACTIVE_BANK_INVEST=AD10_29 AD10_33 AD10_34 AD10_35 AD10_36 (1 thru 4).
recode ACTIVE_BANK_INVEST (1 thru highest=1).

count ACTIVE_BANK_LOAN=AD11_22 AD11_26 AD11_27 AD11_28 (1 thru 4).
recode ACTIVE_BANK_LOAN (1 thru highest=1).

numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).

*******************************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_6 (1 thru 4).

count ACTIVE_BANK_MERCHANT=FF16_13 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_3 FF16_4 FF16_5 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_7 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_8 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_9 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_11 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_12 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_10 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_2 (1 thru 4).


*******************************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).



*******************************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).



*******************************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

*About FB need confirm.
compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or FB22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

*About FB need confirm.
compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).




*******************************************************************************************************************************************************************.
*16Kenya.
*Section 6.2.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).



*******************************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).


*******************************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).


*******************************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).


*******************************************************************************************************************************************************************.
*16Uganda.
*Section 6.1.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8 (1).
recode BANK_BILL (1 thru highest=1).

compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).


*******************************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_9 ff14_25 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_12=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_13=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_15=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_17 ff14_18 fb22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_16=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*******************************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_9 ff14_25 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_12=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_13=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_15=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_17 ff14_18 FB22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_16=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.



*******************************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_22=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_10 ff14_27 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_13=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_14=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_16=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_18 ff14_19 ff14_20 fb22_1(1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_21=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_17=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_22=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_10 ff14_27 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_13=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_14=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_16=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_21=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_17=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).

*Review.
compute BANK_MERCHANT=0.
if FF14_22=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_10 ff14_27 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_13=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_14=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_16=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_21=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_17=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.



*******************************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_9 ff14_25 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_12=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_13=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_15=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_17 ff14_18 fb22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_16=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.



*******************************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_22=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_10 ff14_27 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_13=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_14=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_16=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_18 ff14_19 ff14_20 FB22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_21=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_17=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*******************************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_22=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_10 ff14_27 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

compute BANK_GOV=0.
if FF14_13=1 BANK_GOV=1.

compute BANK_WAGE=0.
if FF14_14=1 BANK_WAGE=1.

compute BANK_INSURANCE=0.
if FF14_16=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_18 ff14_19 ff14_20 fb22_1(1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF14_21=1 BANK_INVEST=1.

compute BANK_LOAN=0.
if (FF14_17=1 or FB16_1=1) BANK_LOAN=1.

compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*******************************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 to ff19_10(1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*******************************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 to ff19_10(1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.



*******************************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.



*******************************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

count BANK_TRANSFER=FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF19_28=1 BANK_MERCHANT=1.

count BANK_BILL=ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_32 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=ff19_15 ff19_16 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=ff19_17 ff19_18 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=ff19_20 ff19_21(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FF19_27=1 BANK_INVEST=1.

count BANK_LOAN=ff19_22 ff19_23 FL10_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FF19_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

count BANK_TRANSFER = FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16X=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16D FFI16E FFI16F FFI16G (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16L FFI16M (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16N FFI16O (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16Q FFI16R(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16U FFI16V (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16W=1 BANK_INVEST=1.

count BANK_LOAN=FFI16S FFI16T (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16C=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

count BANK_TRANSFER = FFI16_8 FFI16_9 FFI16_10 FFI16_11 (1).
recode BANK_TRANSFER (1 thru highest=1).

count BANK_MERCHANT = FFI16_24 FFI16_25 (1).
recode BANK_MERCHANT (1 thru highest=1).

count BANK_BILL=FFI16_4 FFI16_5 FFI16_6 FFI16_7 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16_12 FFI16_13 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16_14 FFI16_15 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16_17 FFI16_18(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16_21 FFI16_22 FB7_3_1 FB7_4_1(1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16_23=1 BANK_INVEST=1.

count BANK_LOAN=FFI16_19 FFI16_20 FB7_1_1 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

count BANK_TRANSFER = FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16X=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16D FFI16E FFI16F FFI16G (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16L FFI16M (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16N FFI16O (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16Q FFI16R(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16U FFI16V (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16W=1 BANK_INVEST=1.

count BANK_LOAN=FFI16S FFI16T (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16C=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

count BANK_TRANSFER = FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16X=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16D FFI16E FFI16F FFI16G (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16L FFI16M (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16N FFI16O (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16Q FFI16R(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16U FFI16V (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16W=1 BANK_INVEST=1.

count BANK_LOAN=FFI16S FFI16T (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16C=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

count BANK_TRANSFER = FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16X=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16D FFI16E FFI16F FFI16G (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16L FFI16M (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16N FFI16O (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16Q FFI16R(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16U FFI16V (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16W=1 BANK_INVEST=1.

count BANK_LOAN=FFI16S FFI16T (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16C=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*******************************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

count BANK_TRANSFER = FFI16_8 FFI16_9 FFI16_10 FFI16_11 (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16_24=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16_4 FFI16_5 FFI16_6 FFI16_7 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16_12 FFI16_13 (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16_14 FFI16_15 (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16_17 FFI16_18(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16_21 FFI16_22 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16_23=1 BANK_INVEST=1.

count BANK_LOAN=FFI16_19 FFI16_20 (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16_3=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

count BANK_TRANSFER = FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FFI16X=1 BANK_MERCHANT=1.

count BANK_BILL=FFI16D FFI16E FFI16F FFI16G (1).
recode BANK_BILL (1 thru highest=1)(else=0).

count BANK_GOV=FFI16L FFI16M (1).
recode BANK_GOV (1 thru highest=1)(else=0).

count BANK_WAGE=FFI16N FFI16O (1).
recode BANK_WAGE (1 thru highest=1)(else=0).

count BANK_INSURANCE=FFI16Q FFI16R(1).
recode BANK_INSURANCE (1 thru highest=1)(else=0).

count BANK_SAVE=FFI16U FFI16V (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

compute BANK_INVEST=0.
if FFI16W=1 BANK_INVEST=1.

count BANK_LOAN=FFI16S FFI16T (1).
recode BANK_LOAN (1 thru highest=1)(else=0).

compute BANK_AIRTIME=0.
if FFI16C=1 BANK_AIRTIME=1.

numeric ACTIVE_BANK_TRANSFER.
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
numeric ACTIVE_BANK_SAVE.
numeric ACTIVE_BANK_INVEST.
numeric ACTIVE_BANK_LOAN.
numeric ACTIVE_BANK_AIRTIME.

*****************************************************************************************************************************.
*Labels.
value labels BANK_TRANSFER 1"Yes" 0"No".
value labels BANK_MERCHANT 1"Yes" 0"No".
value labels BANK_BILL 1"Yes" 0"No".
value labels BANK_GOV 1"Yes" 0"No".
value labels BANK_WAGE 1"Yes" 0"No".
value labels BANK_INSURANCE 1"Yes" 0"No".
value labels BANK_SAVE 1"Yes" 0"No".
value labels BANK_INVEST 1"Yes" 0"No".
value labels BANK_LOAN 1"Yes" 0"No".
value labels BANK_AIRTIME 1"Yes" 0"No".

value labels ACTIVE_BANK_TRANSFER 1"Yes" 0"No".
value labels ACTIVE_BANK_MERCHANT 1"Yes" 0"No".
value labels ACTIVE_BANK_BILL 1"Yes" 0"No".
value labels ACTIVE_BANK_GOV 1"Yes" 0"No".
value labels ACTIVE_BANK_WAGE 1"Yes" 0"No".
value labels ACTIVE_BANK_INSURANCE 1"Yes" 0"No".
value labels ACTIVE_BANK_SAVE 1"Yes" 0"No".
value labels ACTIVE_BANK_INVEST 1"Yes" 0"No".
value labels ACTIVE_BANK_LOAN 1"Yes" 0"No".
value labels ACTIVE_BANK_AIRTIME 1"Yes" 0"No".

VARIABLE LABELS BANK_TRANSFER	"Ever used bank to send money to, or receive money from someone"
BANK_MERCHANT	"Ever used bank to buy goods and service"
BANK_BILL	"Ever used bank to pay a bill"
BANK_GOV	"Ever used bank to receive money from the government"
BANK_WAGE	"Ever used bank to receive payment from an exmployer"
BANK_INSURANCE	"Ever used bank to pay for insurance or receive payment from insurance"
BANK_SAVE	"Ever used bank to save money"
BANK_INVEST	"Ever used bank to make an investment"
BANK_LOAN	"Ever used bank to borrow money or get  credit"
BANK_AIRTIME	"Ever used bank to buy airtime top-ups or pay a mobile phone bill"
ACTIVE_BANK_TRANSFER	"Used bank to send money to, or receive money from someone in past 90 days"
ACTIVE_BANK_MERCHANT	"Used bank to buy goods and service in past 90 days"
ACTIVE_BANK_BILL	"Used bank to pay a bill in past 90 days"
ACTIVE_BANK_GOV	"Used bank to receive money from the government in past 90 days"
ACTIVE_BANK_WAGE	"Used bank to receive payment from an exmployer in past 90 days"
ACTIVE_BANK_INSURANCE	"Used bank to pay for insurance or receive payment from insurance in past 90 days"
ACTIVE_BANK_SAVE	"Used bank to save money in past 90 days"
ACTIVE_BANK_INVEST	"Used bank to make an investment in past 90 days"
ACTIVE_BANK_LOAN	"Used bank to borrow money  or get credit in past 90 days"
ACTIVE_BANK_AIRTIME	"Used bank to buy airtime top-ups or pay a mobile phone bill in past 90 days".

