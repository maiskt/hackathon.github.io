* Encoding: UTF-8.

*Section 6.2.
*******************************************************************************************************************************************************************.
*18Bangladesh.
compute YEAR=2018.
compute COUNTRY=Bangladesh.

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

*Review.
count BANK_INSURANCE=AD8_1 AD8_2 AD8_3 AD8_10(1).
recode BANK_INSURANCE (1 thru highest=1).

*Review.
count BANK_SAVE=AD9_1 AD9_2 AD9_3(1).
recode BANK_SAVE (1 thru highest=1).

*Review.
count BANK_INVEST=AD10_17 AD10_18 AD10_19 AD10_26(1).
recode BANK_INVEST (1 thru highest=1).

*Review.
count BANK_LOAN=AD11_2 AD11_3 AD11_4 AD11_5(1).
recode BANK_LOAN (1 thru highest=1).

*Review.
numeric BANK_AIRTIME.

*Review.
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

*Review.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*18India.
compute YEAR=2018.
compute COUNTRY=India.

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

*Review.
count BANK_INSURANCE=AD8_1 AD8_5 AD8_6 AD8_7 AD8_8(1).
recode BANK_INSURANCE (1 thru highest=1).

*Review.
count BANK_SAVE=AD9_1 AD9_12 AD9_13 AD9_14(1).
recode BANK_SAVE (1 thru highest=1).

*Review.
count BANK_INVEST=AD10_19 AD10_23 AD10_24 AD10_25 AD10_26(1).
recode BANK_INVEST (1 thru highest=1).

*Review.
count BANK_LOAN=AD11_7 AD11_12 AD11_13 AD11_14 AD11_17(1).
recode BANK_LOAN (1 thru highest=1).

*Review.
numeric BANK_AIRTIME.

*Review.
count ACTIVE_BANK_TRANSFER=AD1_10 AD1_14 AD1_15 AD1_16(1).
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

*Review.
numeric ACTIVE_BANK_AIRTIME.


*******************************************************************************************************************************************************************.
*17Bangladesh.
compute YEAR=2017.
compute COUNTRY=Bangladesh.

*Review. 
compute BANK_TRANSFER=0.
if FF14_6=1 BANK_TRANSFER=1.

*Review.
compute BANK_MERCHANT=0.
if FF14_13=1 BANK_MERCHANT=1.

compute BANK_BILL=0.
IF (FF14_4=1 or FF14_5=1 or FF14_3=1) BANK_BILL=1.

*Review.
compute BANK_GOV=0.
if FF14_7=1 BANK_GOV=1.

*Review.
compute BANK_WAGE=0.
if FF14_8=1 BANK_WAGE=1.

*Review.
compute BANK_INSURANCE=0.
if FF14_9=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_11=1 or FB22_1=1) BANK_SAVE=1.

*Review.
compute BANK_INVEST=0.
if FF14_12=1 BANK_INVEST=1.

*Review.
compute BANK_LOAN=0.
if (FF14_10=1 or FB16A_1=1) BANK_LOAN=1.

*Review.
compute BANK_AIRTIME=0.
if FF14_2=1 BANK_AIRTIME=1.

*Review.
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
compute YEAR=2017.
compute COUNTRY=India.

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
compute YEAR=2017.
compute COUNTRY=Kenya.

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
compute YEAR=2017.
compute COUNTRY=Nigeria.

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
compute YEAR=2017.
compute COUNTRY=Paksitan.

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
compute YEAR=2017.
compute COUNTRY=Tanzania.

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
compute YEAR=2017.
compute COUNTRY=Uganda.

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
compute YEAR=2016.
compute COUNTRY=Bangladesh.

*Review.
count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

*Review.
compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
recode BANK_BILL (1 thru highest=1).

*Review.
compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

*Review.
compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

*Review.
compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

compute BANK_SAVE=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) BANK_SAVE=1.

*Review.
compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

*Review.
compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

*Review.
compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

*Review.
count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

*Review.
count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

*Review.
count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

*Review.
count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

*Review.
count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

*Review.
count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

*Review.
count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

*Review.
count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

*Review.
count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

*Review.
count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).



*******************************************************************************************************************************************************************.
*16India.
compute YEAR=2016.
compute COUNTRY=Inida.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2016.
compute COUNTRY=Indonesia.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
*Section 6.1.
compute YEAR=2016.
compute COUNTRY=Kenya.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2016.
compute COUNTRY=Nigeria.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2016.
compute COUNTRY=Pakistan.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2016.
compute COUNTRY=Tanzania.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2016.
compute COUNTRY=Uganda.

count BANK_TRANSFER=FF14_9 FF14_10(1).
recode BANK_TRANSFER (1 thru highest=1).

compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=FF14_4 FF14_5 FF14_6 FF14_7 FF14_8.
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
compute YEAR=2015.
compute COUNTRY=Bangladesh.

*Review.
count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).

*Review.
compute BANK_MERCHANT=0.
if FF14_20=1 BANK_MERCHANT=1.

count BANK_BILL=ff14_4 to ff14_9 ff14_25 (1).
recode BANK_BILL (1 thru highest=1)(else=0).

*Review.
compute BANK_GOV=0.
if FF14_11=1 BANK_GOV=1.

*Review.
compute BANK_WAGE=0.
if FF14_12=1 BANK_WAGE=1.

*Review.
compute BANK_INSURANCE=0.
if FF14_14=1 BANK_INSURANCE=1.

count BANK_SAVE=ff14_17 ff14_18 fb22_1 (1).
recode BANK_SAVE (1 thru highest=1)(else=0).

*Review.
compute BANK_INVEST=0.
if FF14_19=1 BANK_INVEST=1.

*Review.
compute BANK_LOAN=0.
if (FF14_15=1 or FB16_1=1) BANK_LOAN=1.

*Review.
compute BANK_AIRTIME=0.
if FF14_3=1 BANK_AIRTIME=1.

*Review.
count ACTIVE_BANK_TRANSFER=FF16_9 FF16_10(1 thru 4).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).

*Review.
count ACTIVE_BANK_MERCHANT=FF16_20 (1 thru 4).

*Review.
count ACTIVE_BANK_BILL=FF16_4 FF16_5 FF16_6 FF16_7 FF16_8 (1 thru 4).
recode ACTIVE_BANK_BILL (1 thru highest=1).

*Review.
count ACTIVE_BANK_GOV=FF16_11 (1 thru 4).

*Review.
count ACTIVE_BANK_WAGE=FF16_12 (1 thru 4).

*Review.
count ACTIVE_BANK_INSURANCE=FF16_14 (1 thru 4).

*Review.
count ACTIVE_BANK_SAVE=FF16_16 (1 thru 4).

*Review.
count ACTIVE_BANK_INVEST=FF16_19 (1 thru 4).

*Review.
count ACTIVE_BANK_LOAN=FF16_15 (1 thru 4).

*Review.
count ACTIVE_BANK_AIRTIME=FF16_3 (1 thru 4).



*******************************************************************************************************************************************************************.
*15India.
compute YEAR=2015.
compute COUNTRY=India.

*Review.
count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).


*******************************************************************************************************************************************************************.
*15Indonesia.
compute YEAR=2015.
compute COUNTRY=Indonesia.

*Review.
count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).


*******************************************************************************************************************************************************************.
*15Kenya.
compute YEAR=2015.
compute COUNTRY=Kenya.

*Review.
count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).


*******************************************************************************************************************************************************************.
*15Nigeria.
compute YEAR=2015.
compute COUNTRY=Nigeria.

*Review.
count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).



*******************************************************************************************************************************************************************.
*15Pakistan.
compute YEAR=2015.
compute COUNTRY=Pakistan.

*Review.
count BANK_TRANSFER=FF14_10 FF14_11(1).
recode BANK_TRANSFER (1 thru highest=1).



*******************************************************************************************************************************************************************.
*15Tanzania.
compute YEAR=2015.
compute COUNTRY=Tanzania.

*Review.
count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).


*******************************************************************************************************************************************************************.
*15Uganda.
compute YEAR=2015.
compute COUNTRY=Uganda.

*Review.
count BANK_TRANSFER=FF14_11 FF14_12(1).
recode BANK_TRANSFER (1 thru highest=1).


*******************************************************************************************************************************************************************.
*14Bangladesh.
compute YEAR=2014.
compute COUNTRY=Bangladesh.


*******************************************************************************************************************************************************************.
*14India.
compute YEAR=2014.
compute COUNTRY=India.


*******************************************************************************************************************************************************************.
*14Indonesia.
compute YEAR=2014.
compute COUNTRY=Indonesia.


*******************************************************************************************************************************************************************.
*14Kenya.
compute YEAR=2014.
compute COUNTRY=Kenya.


*******************************************************************************************************************************************************************.
*14Nigeria.
compute YEAR=2014.
compute COUNTRY=Nigeria.


*******************************************************************************************************************************************************************.
*14Pakistan.
compute YEAR=2014.
compute COUNTRY=Pakistan.


*******************************************************************************************************************************************************************.
*14Tanzania.
compute YEAR=2014.
compute COUNTRY=Tanzania.


*******************************************************************************************************************************************************************.
*14Uganda.
compute YEAR=2014.
compute COUNTRY=Uganda.


*******************************************************************************************************************************************************************.
*13Bangladesh.
compute YEAR=2013.
compute COUNTRY=Bangladesh.


*******************************************************************************************************************************************************************.
*13India.
compute YEAR=2013.
compute COUNTRY=India.


*******************************************************************************************************************************************************************.
*13Kenya.
compute YEAR=2013.
compute COUNTRY=Kenya.


*******************************************************************************************************************************************************************.
*13Nigeria.
compute YEAR=2013.
compute COUNTRY=Nigeria.


*******************************************************************************************************************************************************************.
*13Pakistan.
compute YEAR=2013.
compute COUNTRY=Pakistan.


*******************************************************************************************************************************************************************.
*13Tanzania.
compute YEAR=2013.
compute COUNTRY=Tanzaina.

*******************************************************************************************************************************************************************.
*13Uganda.
compute YEAR=2013.
compute COUNTRY=Uganda.





*****************************************************************************************************************************.
*Labels.

