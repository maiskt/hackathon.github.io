﻿* Encoding: UTF-8.

*Section8.3 .
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

DATASET ACTIVATE bng18.

compute NBFI_TRANSFER=0.
if AD1_5=1 or AD1_6=1 or AD1_9=1 or (FN5_1=1 and FN5_4=1 and AD1_7=1) or (FN6_1=1 and FN6_4=1 and AD1_8=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
if AD2_5=1 or AD2_6=1 or AD2_9=1 or (FN5_1=1 and FN5_4=1 and AD2_7=1) or (FN6_1=1 and FN6_4=1 and AD2_8=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
if AD3_5=1 or AD3_6=1 or (FN5_1=1 and FN5_4=1 and AD3_7=1) or (FN6_1=1 and FN6_4=1 and AD3_8=1) or AD3_9=1 or
   AD4_5=1 or AD4_6=1 or (FN5_1=1 and FN5_4=1 and AD4_7=1) or (FN6_1=1 and FN6_4=1 and AD4_8=1) or AD4_9=1 or
   AD5_5=1 or AD5_6=1 or (FN5_1=1 and FN5_4=1 and AD5_7=1) or (FN6_1=1 and FN6_4=1 and AD5_8=1) or AD5_9=1 NBFI_BILL=1.
compute NBFI_GOV=0.
if AD6_5=1 or AD6_6=1 or AD6_9=1 or (FN5_1=1 and FN5_4=1 and AD6_7=1) or (FN6_1=1 and FN6_4=1 and AD6_8=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
if AD7_5=1 or AD7_6=1 or AD7_9=1 or (FN5_1=1 and FN5_4=1 and AD7_7=1) or (FN6_1=1 and FN6_4=1 and AD7_7=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
if AD8_5=1 or AD8_6=1 or AD8_9=1 or (FN5_1=1 and FN5_4=1 and AD8_7=1) or (FN6_1=1 and FN6_4=1 and AD8_8=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
if AD9_5=1 or AD9_6=1 or AD9_9=1 or (FN5_1=1 and FN5_4=1 and AD9_7=1) or (FN6_1=1 and FN6_4=1 and AD9_8=1) NBFI_SAVE=1.
compute NBFI_INVEST=0.
if AD10_21=1 or AD10_22=1 or AD10_25=1 or (FN5_1=1 and FN5_4=1 and AD10_23=1) or (FN6_1=1 and FN6_4=1 and AD10_24=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
if AD11_7=1 or AD11_8=1 or AD11_13=1 or (FN5_1=1 and FN5_4=1 and AD11_11=1) or (FN6_1=1 and FN6_4=1 and AD11_12=1) NBFI_LOAN=1.


compute ACTIVE_NBFI_TRANSFER=0.
if AD1_16<=4 or AD1_17<=4 or AD1_20<=4 or (FN5_1=1 and FN5_4=1 and AD1_18<=4) or (FN6_1=1 and FN6_4=1 and AD1_19<=4) ACTIVE_NBFI_TRANSFER=1.
compute ACTIVE_NBFI_MERCHANT=0.
if AD2_15<=4 or AD2_16<=4 or AD2_19<=4 or (FN5_1=1 and FN5_4=1 and AD2_17<=4) or (FN6_1=1 and FN6_4=1 and AD2_18<=4) ACTIVE_NBFI_MERCHANT=1.
compute ACTIVE_NBFI_BILL=0.
if AD3_15<=4 or AD3_16<=4 or (FN5_1=1 and FN5_4=1 and AD3_17<=4) or (FN6_1=1 and FN6_4=1 and AD3_18<=4) or AD3_19<=4 or
AD4_15<=4 or AD4_16<=4 or (FN5_1=1 and FN5_4=1 and AD4_17<=4) or (FN6_1=1 and FN6_4=1 and AD4_18<=4) or AD4_19<=4 or
AD5_15<=4 or AD5_16<=4 or (FN5_1=1 and FN5_4=1 and AD5_17<=4) or (FN6_1=1 and FN6_4=1 and AD5_18<=4) or AD5_19<=4 ACTIVE_NBFI_BILL=1.
compute ACTIVE_NBFI_GOV=0.
if AD6_14<=4 or AD6_15<=4 or AD6_18<=4 or (FN5_1=1 and FN5_4=1 and AD6_16<=4) or (FN6_1=1 and FN6_4=1 and AD6_17<=4) ACTIVE_NBFI_GOV=1.
compute ACTIVE_NBFI_WAGE=0.
if AD7_14<=4 or AD7_15<=4 or AD7_18<=4 or (FN5_1=1 and FN5_4=1 and AD7_16<=4) or (FN6_1=1 and FN6_4=1 and AD7_17<=4) ACTIVE_NBFI_WAGE=1.
compute ACTIVE_NBFI_INSURANCE=0.
if AD8_15<=4 or AD8_16<=4 or AD8_19<=4 or (FN5_1=1 and FN5_4=1 and AD8_17<=4) or (FN6_1=1 and FN6_4=1 and AD8_18<=4) ACTIVE_NBFI_INSURANCE=1.
compute ACTIVE_NBFI_SAVE=0.
if AD9_19<=4 or AD9_20<=4 or AD9_23<=4 or (FN5_1=1 and FN5_4=1 and AD9_21<=4) or (FN6_1=1 and FN6_4=1 and AD9_22<=4) ACTIVE_NBFI_SAVE=1.
compute ACTIVE_NBFI_INVEST=0.
if AD10_31<=4 or AD10_32<=4 or AD10_35<=4 or (FN5_1=1 and FN5_4=1 and AD10_33<=4) or (FN6_1=1 and FN6_4=1 and AD10_34<=4) ACTIVE_NBFI_INVEST=1.
compute ACTIVE_NBFI_LOAN=0.
if AD11_21<=4 or AD11_22<=4 or AD11_27<=4 or (FN5_1=1 and FN5_4=1 and AD11_25<=4) or (FN6_1=1 and FN6_4=1 and AD11_26<=4) ACTIVE_NBFI_LOAN=1.


**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

DATASET ACTIVATE ind18.

compute NBFI_TRANSFER=0.
if AD1_2=1 or AD1_3=1 NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
if AD2_2=1 or AD2_3=1 NBFI_MERCHANT=1.
compute NBFI_BILL=0.
if AD3_2=1 or AD3_3=1 or AD4_2=1 or AD4_3=1 or AD5_2=1 or AD5_3=1 NBFI_BILL=1.
compute NBFI_GOV=0.
if AD6_2=1 or AD6_3=1 NBFI_GOV=1.
compute NBFI_WAGE=0.
if AD7_2=1 or AD7_3=1 NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
if AD8_2=1 or AD8_3=1 NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
if AD9_2=1 or AD9_3=1 or (FN6_1=1 and FN6_3=1 and AD9_6=1) NBFI_SAVE=1.
compute NBFI_INVEST=0.
if AD10_20=1 or AD10_21=1 or (FN6_1=1 and FN6_3=1 and  AD10_28=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
if AD11_8=1 or AD11_9=1 or AD11_10=1 or (FN6_1=1 and FN6_3=1 and AD11_6=1) NBFI_LOAN=1.


compute ACTIVE_NBFI_TRANSFER=0.
if AD1_11<=4 or AD1_12<=4 ACTIVE_NBFI_TRANSFER=1.
compute ACTIVE_NBFI_MERCHANT=0.
if AD2_10<=4 or AD2_11<=4 ACTIVE_NBFI_MERCHANT=1.
compute ACTIVE_NBFI_BILL=0.
if AD3_10<=4 or AD3_11<=4 or AD4_10<=4 or AD4_11<=4 or AD5_10<=4 or AD5_11<=4 ACTIVE_NBFI_BILL=1.
compute ACTIVE_NBFI_GOV=0.
if AD6_10<=4 or AD6_11<=4 ACTIVE_NBFI_GOV=1.
compute ACTIVE_NBFI_WAGE=0.
if AD7_10<=4 or AD7_11<=4 ACTIVE_NBFI_WAGE=1.
compute ACTIVE_NBFI_INSURANCE=0.
if AD8_10<=4 or AD8_11<=4 ACTIVE_NBFI_INSURANCE=1.
compute ACTIVE_NBFI_SAVE=0.
if AD9_16<=4 or AD9_17<=4 or (FN6_1=1 and FN6_3=1 and AD9_20<=4) ACTIVE_NBFI_SAVE=1.
compute ACTIVE_NBFI_INVEST=0.
if AD10_30<=4 or AD10_31<=4 or (FN6_1=1 and FN6_3=1 and  AD10_38<=4) ACTIVE_NBFI_INVEST=1.
compute ACTIVE_NBFI_LOAN=0.
if AD11_23<=4 or AD11_24<=4 or (FN6_1=1 and FN6_3=1 and AD11_21<=4) ACTIVE_NBFI_LOAN=1.

 
**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

DATASET ACTIVATE bng17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2 (1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or IFI13_7<=6 or any(1, FB22_3, FB22_4) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or IFI13_6<=6 or any(1, FB16A_3, FB16A_4) NBFI_LOAN=1.



count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2 (1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7 IFI13_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6 IFI13_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

DATASET ACTIVATE ind17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3(1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5(1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or any(1, FB22_3, FB22_4, FB22_5) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8(1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or any(1, FB16A_2, FB16A_3, FB16A_5) NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3(1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5(1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7(1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8(1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6(1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

DATASET ACTIVATE ken17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or IFI13_7<=6 or  any(1, FB22_3, FB22_4) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or IFI13_6<=6 or any(1, FB16A_3, FB16A_4) NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7 IFI13_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6 IFI13_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

DATASET ACTIVATE nga17.

count NBFI_TRANSFER=IFI10_2 IFI11_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or FB22_4=1 NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or FB16A_3=1 NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

DATASET ACTIVATE pak17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or IFI13_7<=6 or any(1, FB22_3, FB22_4) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or IFI13_6<=6 or any(1, FB16A_3, FB16A_4) NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7 IFI13_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6 IFI13_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

DATASET ACTIVATE tza17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or IFI13_7<=6 or any(1, FB22_3, FB22_4) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or IFI13_6<=6 or any(1, FB16A_3, FB16A_4) NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7 IFI13_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6 IFI13_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

DATASET ACTIVATE uga17.

count NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 6).
recode NBFI_TRANSFER (1 thru highest=1).
numeric NBFI_MERCHANT.
count NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 6).
recode NBFI_BILL (1 thru highest=1).
numeric NBFI_GOV.
numeric NBFI_WAGE.
count NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 6).
recode NBFI_INSURANCE (1 thru highest=1).
compute NBFI_SAVE=0.
if IFI10_7<=6 or  IFI11_7<=6 or IFI12_7<=6 or IFI13_7<=6 or any(1, FB22_3, FB22_4) NBFI_SAVE=1.
count NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 6).
recode NBFI_INVEST (1 thru highest=1).
compute NBFI_LOAN=0.
if IFI10_6<=6 or  IFI11_6<=6 or IFI12_6<=6 or IFI13_6<=6 or any(1, FB16A_3, FB16A_4, FB16A_5) NBFI_LOAN=1.


count ACTIVE_NBFI_TRANSFER=IFI10_2 IFI11_2 IFI12_2 IFI13_2(1 thru 4).
recode ACTIVE_NBFI_TRANSFER (1 thru highest=1).
numeric ACTIVE_NBFI_MERCHANT.
count ACTIVE_NBFI_BILL=IFI10_3 IFI11_3 IFI12_3 IFI13_3 (1 thru 4).
recode ACTIVE_NBFI_BILL (1 thru highest=1).
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
count ACTIVE_NBFI_INSURANCE=IFI10_5 IFI11_5 IFI12_5 IFI13_5 (1 thru 4).
recode ACTIVE_NBFI_INSURANCE (1 thru highest=1).
count ACTIVE_NBFI_SAVE=IFI10_7 IFI11_7 IFI12_7 IFI13_7 (1 thru 4).
recode ACTIVE_NBFI_SAVE (1 thru highest=1).
count ACTIVE_NBFI_INVEST=IFI10_8 IFI11_8 IFI12_8 IFI13_8 (1 thru 4).
recode ACTIVE_NBFI_INVEST (1 thru highest=1).
count ACTIVE_NBFI_LOAN=IFI10_6 IFI11_6 IFI12_6 IFI13_6 (1 thru 4).
recode ACTIVE_NBFI_LOAN (1 thru highest=1).


**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

DATASET ACTIVATE bng16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
 or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
 or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
 or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
 or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1)
 or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1)
 or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or fb22_3=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

DATASET ACTIVATE ind16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
 or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
 or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 ) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_2=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or fb22_3=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_9=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or fb16_2=1 or fb16_3=1 or fb16_6=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

DATASET ACTIVATE ida16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or FB16_3=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or FB16_4=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or FB16_5=1)
or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or FB16_6=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

DATASET ACTIVATE ken16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1  or fb22_3=1)
or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

DATASET ACTIVATE nga16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1 )) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

DATASET ACTIVATE pak16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1)
or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15=1  or fb16_3=1 or fb16_6=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

DATASET ACTIVATE tza16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1)
or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

DATASET ACTIVATE uga16.

compute NBFI_TRANSFER=0.
IF ((IFI10_9=1 or IFI10_10=1)
 or (IFI11_9=1 or IFI11_10=1)
 or (IFI12_9=1 or IFI12_10=1)
 or (IFI13_9=1 or IFI13_10=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1 or IFI13_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_11=1 or IFI11_11=1 or IFI12_11=1 or IFI13_11=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1 or IFI13_12=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1 ) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1)
or (IFI11_16=1 or IFI11_17=1 or IFI11_18=1)
or (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1)
or (IFI13_16=1 or IFI13_17=1 or IFI13_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1 or IFI13_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1 or IFI13_15= 1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

DATASET ACTIVATE bng15.

compute NBFI_TRANSFER=0.
IF ((IFI10_10=1 or IFI10_11=1)
 or (IFI11_10=1 or IFI11_11=1)
 or (IFI12_10=1 or IFI12_11=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF (IFI10_20=1 or IFI11_20=1 or IFI12_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1  or IFI11_25=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1  or IFI12_25=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_17=1 or IFI10_18=1 or fb22_2=1)
or (IFI11_17=1 or IFI11_18=1 or fb22_3=1)
or (IFI12_17=1 or IFI12_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or fb16_2=1 or fb16_3=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

DATASET ACTIVATE ind15.

compute NBFI_TRANSFER=0.
IF ((IFI10_10=1 or IFI10_11=1)
 or (IFI11_10=1 or IFI11_11=1)
 or (IFI12_10=1 or IFI12_11=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1  or IFI11_25=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1  or IFI12_25=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_17=1 or IFI10_18=1 or fb22_2=1)
or (IFI11_17=1 or IFI11_18=1 or fb22_3=1)
or (IFI12_17=1 or IFI12_18=1 or fb22_9=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or fb16_2=1 or fb16_3=1 or fb16_6=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

DATASET ACTIVATE ida15.

compute NBFI_TRANSFER=0.
IF ((IFI10_11=1 or IFI10_12=1)
 or (IFI11_11=1 or IFI11_12=1)
 or (IFI12_11=1 or IFI12_12=1)
 or (IFI13_11=1 or IFI13_12=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_22=1 or IFI11_22=1 or IFI12_22=1 or IFI13_22=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1 or IFI13_13=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or IFI13_16=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_18=1 or IFI10_19=1 or IFI10_20=1)
or (IFI11_18=1 or IFI11_19=1 or IFI11_20=1)
or (IFI12_18=1 or IFI12_19=1 or IFI12_20=1)
or (IFI13_18=1 or IFI13_19=1 or IFI13_20=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_21=1 or IFI11_21=1 or IFI12_21=1 or IFI13_21=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_17=1 or IFI11_17=1 or IFI12_17=1 or IFI13_17=1 or fb16_3=1 or fb16_4=1 or fb16_5=1 or fb16_6=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

DATASET ACTIVATE ken15.

compute NBFI_TRANSFER=0.
IF ((IFI10_11=1 or IFI10_12=1)
 or (IFI11_11=1 or IFI11_12=1)
 or (IFI12_11=1 or IFI12_12=1)
 or (IFI13_11=1 or IFI13_12=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_22=1 or IFI11_22=1 or IFI12_22=1 or IFI13_22=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1 or IFI13_13=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or IFI13_16=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1)
or (IFI11_18=1 or IFI11_19=1 or IFI11_20=1)
or (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1)
or (IFI13_18=1 or IFI13_19=1 or IFI13_20=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_21=1 or IFI11_21=1 or IFI12_21=1 or IFI13_21=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_17=1 or IFI11_17=1 or IFI12_17=1 or IFI13_17=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

DATASET ACTIVATE nga15.

compute NBFI_TRANSFER=0.
IF ((IFI10_11=1 or IFI10_12=1)
 or (IFI11_11=1 or IFI11_12=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_22=1 or IFI11_22=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_13=1 or IFI11_13=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_14=1 or IFI11_14=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_16=1 or IFI11_16=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1)
or (IFI11_18=1 or IFI11_19=1 or IFI11_20=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_21=1 or IFI11_21=1 or IFI12_21=1 or IFI13_21=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_17=1 or IFI11_17=1 or IFI12_17=1 or IFI13_17=1 or fb16_3=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

DATASET ACTIVATE pak15.

compute NBFI_TRANSFER=0.
IF ((IFI10_10=1 or IFI10_11=1)
 or (IFI11_10=1 or IFI11_11=1)
 or (IFI12_10=1 or IFI12_11=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_20=1 or IFI11_20=1 or IFI12_20=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1  or IFI11_25=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1  or IFI12_25=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_12=1 or IFI11_12=1 or IFI12_12=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_15=1 or IFI11_15=1 or IFI12_15=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_17=1 or IFI10_18=1 or fb22_2=1)
or (IFI11_17=1 or IFI11_18=1 or fb22_3=1)
or (IFI12_17=1 or IFI12_18=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_19=1 or IFI11_19=1 or IFI12_19=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or fb16_2=1 or fb16_3=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

DATASET ACTIVATE tza15.

compute NBFI_TRANSFER=0.
IF ((IFI10_11=1 or IFI10_12=1)
 or (IFI11_11=1 or IFI11_12=1)
 or (IFI12_11=1 or IFI12_12=1)
 or (IFI13_11=1 or IFI13_12=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_22=1 or IFI11_22=1 or IFI12_22=1 or IFI13_22=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1 or IFI13_13=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or IFI13_16=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1)
or (IFI11_18=1 or IFI11_19=1 or IFI11_20=1)
or (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1)
or (IFI13_18=1 or IFI13_19=1 or IFI13_20=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_21=1 or IFI11_21=1 or IFI12_21=1 or IFI13_21=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_17=1 or IFI11_17=1 or IFI12_17=1 or IFI13_17=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

DATASET ACTIVATE uga15.

compute NBFI_TRANSFER=0.
IF ((IFI10_11=1 or IFI10_12=1)
 or (IFI11_11=1 or IFI11_12=1)
 or (IFI12_11=1 or IFI12_12=1)
 or (IFI13_11=1 or IFI13_12=1)) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_22=1 or IFI11_22=1 or IFI12_22=1 or IFI13_22=1) NBFI_MERCHANT=1.
compute NBFI_BILL=0.
IF ((IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1)
or (IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1)
or (IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1)
or (IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1)) NBFI_BILL=1.
compute NBFI_GOV=0.
IF(IFI10_13=1 or IFI11_13=1 or IFI12_13=1 or IFI13_13=1) NBFI_GOV=1.
compute NBFI_WAGE=0.
IF(IFI10_14=1 or IFI11_14=1 or IFI12_14=1 or IFI13_14=1) NBFI_WAGE=1.
compute NBFI_INSURANCE=0.
IF(IFI10_16=1 or IFI11_16=1 or IFI12_16=1 or IFI13_16=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1)
or (IFI11_18=1 or IFI11_19=1 or IFI11_20=1)
or (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1)
or (IFI13_18=1 or IFI13_19=1 or IFI13_20=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_21=1 or IFI11_21=1 or IFI12_21=1 or IFI13_21=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_17=1 or IFI11_17=1 or IFI12_17=1 or IFI13_17=1 or fb16_3=1 or fb16_4=1) NBFI_LOAN=1.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

DATASET ACTIVATE bng14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

DATASET ACTIVATE ind14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1 or fl13_3=1)
or (IFI12_4=1 or fl13_9=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or fl10_2=1 or fl10_3=1 or fl10_6=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

DATASET ACTIVATE ida14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1 or fl13_3=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1 or fl10_3=1 or fl10_4=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

DATASET ACTIVATE ken14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.



**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

DATASET ACTIVATE nga14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

DATASET ACTIVATE pak14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

DATASET ACTIVATE tza14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

DATASET ACTIVATE uga14.

compute NBFI_TRANSFER=0.
IF (IFI10_2=1 or IFI11_2=1 or IFI12_2=1 or IFI13_2=1) NBFI_TRANSFER=1.
compute NBFI_MERCHANT=0.
IF(IFI10_8=1 or IFI11_8=1 or IFI12_8=1 or IFI13_8=1) NBFI_MERCHANT=1.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
compute NBFI_INSURANCE=0.
IF(IFI10_5=1 or IFI11_5=1 or IFI12_5=1 or IFI13_5=1) NBFI_INSURANCE=1.
compute NBFI_SAVE=0.
IF ((IFI10_4=1 or fl13_2=1)
or (IFI11_4=1)
or (IFI12_4=1)
or (IFI13_4=1)) NBFI_SAVE=1.
compute NBFI_INVEST=0.
IF(IFI10_7=1 or IFI11_7=1 or IFI12_7=1 or IFI13_7=1) NBFI_INVEST=1.
compute NBFI_LOAN=0.
IF(IFI10_6=1 or IFI11_6=1 or IFI12_6=1 or IFI13_6=1 or fl10_2=1) NBFI_LOAN=1.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

DATASET ACTIVATE bng13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

DATASET ACTIVATE ind13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

DATASET ACTIVATE ken13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

DATASET ACTIVATE nga13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

DATASET ACTIVATE pak13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

DATASET ACTIVATE tza13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

DATASET ACTIVATE uga13.

numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
numeric NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.


numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.


*****************************************************************************************************************************.
*Labels.

value labels NBFI_TRANSFER 1"Yes" 0"No".
value labels NBFI_MERCHANT 1"Yes" 0"No".
value labels NBFI_BILL 1"Yes" 0"No".
value labels NBFI_GOV 1"Yes" 0"No".
value labels NBFI_WAGE 1"Yes" 0"No".
value labels NBFI_INSURANCE 1"Yes" 0"No".
value labels NBFI_SAVE 1"Yes" 0"No".
value labels NBFI_INVEST 1"Yes" 0"No".
value labels NBFI_LOAN 1"Yes" 0"No".
value labels NBFI_AIRTIME 1"Yes" 0"No".
value labels ACTIVE_NBFI_TRANSFER 1"Yes" 0"No".
value labels ACTIVE_NBFI_MERCHANT 1"Yes" 0"No".
value labels ACTIVE_NBFI_BILL 1"Yes" 0"No".
value labels ACTIVE_NBFI_GOV 1"Yes" 0"No".
value labels ACTIVE_NBFI_WAGE 1"Yes" 0"No".
value labels ACTIVE_NBFI_INSURANCE 1"Yes" 0"No".
value labels ACTIVE_NBFI_SAVE 1"Yes" 0"No".
value labels ACTIVE_NBFI_INVEST 1"Yes" 0"No".
value labels ACTIVE_NBFI_LOAN 1"Yes" 0"No".
value labels ACTIVE_NBFI_AIRTIME 1"Yes" 0"No".

variable labels NBFI_TRANSFER	"Ever used NBFI to send money to, or receive money from someone"
NBFI_MERCHANT	"Ever used NBFI to buy goods and service"
NBFI_BILL	"Ever used NBFI to pay a bill"
NBFI_GOV	"Ever used NBFI to receive money from the government"
NBFI_WAGE	"Ever used NBFI to receive payment from an exmployer"
NBFI_INSURANCE	"Ever used NBFI to pay for insurance or receive payment from insurance"
NBFI_SAVE	"Ever used NBFI to save money"
NBFI_INVEST	"Ever used NBFI to make an investment"
NBFI_LOAN	"Ever used NBFI to borrow money or get  credit"
NBFI_AIRTIME	"Ever used NBFI to buy airtime top-ups or pay a mobile phone bill"
ACTIVE_NBFI_TRANSFER	"Used NBFI to send money to, or receive money from someone in past 90 days"
ACTIVE_NBFI_MERCHANT	"Used NBFI to buy goods and service in past 90 days"
ACTIVE_NBFI_BILL	"Used NBFI to pay a bill in past 90 days"
ACTIVE_NBFI_GOV	"Used NBFI to receive money from the government in past 90 days"
ACTIVE_NBFI_WAGE	"Used NBFI to receive payment from an exmployer in past 90 days"
ACTIVE_NBFI_INSURANCE	"Used NBFI to pay for insurance or receive payment from insurance in past 90 days"
ACTIVE_NBFI_SAVE	"Used NBFI to save money in past 90 days"
ACTIVE_NBFI_INVEST	"Used NBFI to make an investment in past 90 days"
ACTIVE_NBFI_LOAN	"Used NBFI to borrow money or get credit in past 90 days"
ACTIVE_NBFI_AIRTIME	"Used NBFI to buy airtime top-ups or pay a mobile phone bill in past 90 days".


