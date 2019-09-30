* Encoding: windows-1252.

*Section 6.1.

*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

compute ACCESS_BANK=0.
IF fn1_1=1 or fn1_2=1 or fn1_3=1 ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF fn1_2=1 or fn1_3=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF fn1_6<=4 ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF fn1_6<=3 ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF fn1_6>4 INACTIVE_BANK=1.




count BANK_BASIC=AD1_1 AD1_2 AD1_3(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (AD2_1=1 or AD2_2=1 or AD2_3=1 or AD2_10=1 or 
 AD3_1=1 or AD3_2=1 or AD3_3=1 or AD3_10=1 or 
 AD4_1=1 or AD4_2=1 or AD4_3=1 or AD4_10=1 or 
 AD5_1=1 or AD5_2=1 or AD5_3=1 or AD5_10=1 or 
 AD6_1=1 or AD6_2=1 or AD6_3=1 or 
 AD7_1=1 or AD7_2=1 or AD7_3=1 or 
 AD8_1=1 or AD8_2=1 or AD8_3=1 or AD8_10=1 or 
 AD9_1=1 or AD9_2=1 or AD9_3=1 or 
 AD10_17=1 or AD10_18=1 or AD10_19=1 or AD10_26=1 or 
 AD11_2=1 or AD11_3=1 or AD11_4=1 or AD11_5=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

compute ACCESS_BANK=0.
IF FN1_1=1 or FN1_2=1 or FN1_3=1 ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF fn1_2=1 or fn1_3=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF fn1_6<=4 ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF fn1_6<=3 ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF fn1_6>4 INACTIVE_BANK=1.




count BANK_BASIC=AD1_1 AD1_5 AD1_6 AD1_7(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (AD2_1=1 or AD2_5=1 or AD2_6=1 or AD2_7=1 or AD2_8=1 or 
AD3_1=1 or AD3_5=1 or AD3_6=1 or AD3_7=1 or AD3_8=1 or 
AD4_1=1 or AD4_5=1 or AD4_6=1 or AD4_7=1 or AD4_8=1 or 
AD5_1=1 or AD5_5=1 or AD5_6=1 or AD5_7=1 or AD5_8=1 or 
AD6_1=1 or AD6_5=1 or AD6_6=1 or AD6_7=1 or 
AD7_1=1 or AD7_5=1 or AD7_6=1 or AD7_7=1 or 
AD8_1=1 or AD8_5=1 or AD8_6=1 or AD8_7=1 or AD8_8=1 or 
AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or 
AD10_19=1 or AD10_23=1 or AD10_24=1 or AD10_25=1 or AD10_26=1 or 
AD11_2=1 or AD11_7=1 or AD11_12=1 or AD11_13=1 or AD11_14=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF (FF4=1 or ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1)) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FB22_1=1 or FB16A_1=1 ) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF (FF1=1 or FF1A=1 or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 or FF1A=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((FF1=1 or FF1A=1) and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or 
FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ( (ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1or ff1d_8=1 or ff1d_9=1 or ff1d_10=1
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1)) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1) and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9>4) INACTIVE_BANK=1.




compute BANK_BASIC =0.
if (FF14_1=1 or FF14_6=1) BANK_BASIC =1.

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 OR FB16a_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF1A=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((FF1=1 or FF1A=1) and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_6(1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 
or FB22_1=1 or FB16A_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF (FF1=1 or FF4=1) and ff5=1 ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and ff5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF9<=4 and ff5=1) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF9<=3 and ff5=1) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF9>4 and ff5=1) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_23 FF14_9 FF14_10 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or 
FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF (FF1=1 or FF4=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF FF1=1 REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or 
FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 
or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16Kenya.
*Section 6.1.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or
 FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 orFF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 FF14_9 FF14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 
or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*16Uganda.
*Section 6.1.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

compute ACCESS_BANK=0.
IF ((FF1=1 or FF4=1) and FF5=1) ACCESS_BANK=1.

compute REGISTERED_BANK=0.
IF (FF1=1 and FF5=1) REGISTERED_BANK=1.

compute ACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=4) ACTIVE_BANK=1.

compute ACTIVE30_BANK=0.
IF (FF1=1 and FF5=1 and FF9<=3) ACTIVE30_BANK=1.

compute INACTIVE_BANK=0.
IF (FF1=1 and FF5=1 and FF9>4) INACTIVE_BANK=1.




count BANK_BASIC = FF14_1 FF14_2 ff14_9 ff14_10 FF14_23 (1).
recode BANK_BASIC (1 thru highest=1).

compute BANK_ADV=0.
if (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_11=1 or FF14_12=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 
or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1) BANK_ADV=1.

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_26 FF14_10 FF14_11 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_9 ff14_12 to ff14_25 fb16_1 fb22_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_10 FF14_11 FF14_26 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_9 ff14_12 to ff14_25 FB16_1 FB22_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_11 FF14_12 FF14_28 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_10 ff14_13 to ff14_27 FB16_1 FB22_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_11 FF14_12 FF14_28 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_10 ff14_13 to ff14_27 fb16_1 fb22_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_11 FF14_12 FF14_28 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_10 ff14_13 to ff14_27 fb16_1 fb22_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_10 FF14_11 FF14_26 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_9 ff14_12 to ff14_25 fb16_1 fb22_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_11 FF14_12FF14_28 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_10 ff14_13 to ff14_27 fb16_1 fb22_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

compute ACCESS_BANK=((ff1=1 or ff4=1) and ff5=1).

compute REGISTERED_BANK=(FF1=1 and ff5=1).

compute ACTIVE_BANK = (FF1=1 and ff5=1 and FF9<=4). 

compute ACTIVE30_BANK = (FF1=1 and ff5=1 and FF9<=3). 

compute INACTIVE_BANK = (FF1=1 and ff5=1 and FF9>4). 




count BANK_BASIC = FF14_1 FF14_2 FF14_11 FF14_12FF14_28 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff14_3 to ff14_10 ff14_13 to ff14_27 fb16_1 fb22_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 
ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 
ff19_30 ff19_31 ff19_32 FL10_1 FL13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = ff19_1 ff19_2 ff19_11 to ff19_14(1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff19_3 to ff19_10 ff19_15 to ff19_31 FL10_1 FL13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 
ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 fl10_1 fl13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 
ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 ff19_32 fl10_1 fl13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18
 ff19_19 ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 ff19_32 
fl10_1 fl13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC= FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 
ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 ff19_32 fl10_1 fl13_1 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 
ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 ff19_32 FL13_1 FL10_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

compute ACCESS_BANK=((FF1=1 or FF6=1) and FF9=1).

compute REGISTERED_BANK=(FF1=1 and ff9=1).

compute ACTIVE_BANK = (FF1=1 and FF9=1 and FF14<=4). 

compute ACTIVE30_BANK = (FF1=1 and FF9=1 and FF14<=3). 

compute INACTIVE_BANK = (FF1=1 and FF9=1 and FF14>4). 




count BANK_BASIC = FF19_1 FF19_2 FF19_11 FF19_12 FF19_13 FF19_14(1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=ff19_3 ff19_4 ff19_5 ff19_6 ff19_7 ff19_8 ff19_9 ff19_10 ff19_15 ff19_16 ff19_17 ff19_18 ff19_19 
ff19_20 ff19_21 ff19_22 ff19_23 ff19_24 ff19_25 ff19_26 ff19_27 ff19_28 ff19_29 ff19_30 ff19_31 ff19_32 fl10_1 fl13_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16A FFI16B FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16C to FFI16G FFI16L to FFI16X (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK=0. 
if FFi1=1 and FFi9<=4 ACTIVE_BANK=1.

compute ACTIVE30_BANK=0. 
if FFi1=1 and FFi9<=3 ACTIVE30_BANK=1.

compute INACTIVE_BANK=0. 
if FFi1=1 and FFi9>4 INACTIVE_BANK=1.




count BANK_BASIC = FFI16_1 FFI16_2 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16_3 to FFI16_7 FFI16_12 to FFI16_25 FB7_1_1 FB7_3_1 FB7_4_1(1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16A FFI16B FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16C to FFI16G FFI16L to FFI16X (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16A FFI16B FFI16H FFI16I FFI16J FFI16K(1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16C to FFI16G FFI16L to FFI16X (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16A FFI16B FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_BASIC (1 thru highest=1).

count BANK_ADV=FFI16C to FFI16G FFI16L to FFI16X (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.


*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16_1 FFI16_2 (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16_3 to FFI16_7 FFI16_12 to FFI16_24 (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.

*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

compute ACCESS_BANK=(FFI1=1 or FFI3=1).

compute REGISTERED_BANK=(FFI1=1).

compute ACTIVE_BANK = (FFi1=1 and FFi9<=4). 

compute ACTIVE30_BANK = (FFi1=1 and FFi9<=3). 

compute INACTIVE_BANK = (FFi1=1 and FFi9>4). 




count BANK_BASIC = FFI16A FFI16B FFI16H FFI16I FFI16J FFI16K (1).
recode BANK_BASIC (1 thru HIGHEST=1).

count BANK_ADV=FFI16C to FFI16G FFI16L to FFI16X (1).
recode BANK_ADV (1 thru highest=1)(else=0).

compute REG_BANK_BASIC=0.
IF REGISTERED_BANK=1 and BANK_BASIC=1 REG_BANK_BASIC=1.

compute REG_BANK_ADV=0.
IF REGISTERED_BANK=1 and BANK_ADV=1 REG_BANK_ADV=1.

compute ACTIVE_BANK_BASIC=0.
IF ACTIVE_BANK=1 and BANK_BASIC=1 ACTIVE_BANK_BASIC=1.

compute ACTIVE_BANK_ADV=0.
IF ACTIVE_BANK=1 and BANK_ADV=1 ACTIVE_BANK_ADV=1.

compute ACTIVE30_BANK_ADV=0.
IF ACTIVE30_BANK=1 and BANK_ADV=1 ACTIVE30_BANK_ADV=1.

compute BANK_STAGE=0.
if ACCESS_BANK=1 BANK_STAGE=1.
if (BANK_STAGE=1 and REGISTERED_BANK=1) BANK_STAGE=2.
if (BANK_STAGE=2 and ACTIVE_BANK=1) BANK_STAGE=3.
if (BANK_STAGE=3 and ACTIVE_BANK_ADV=1) BANK_STAGE=4.



*****************************************************************************************************************************.
*Labels.
value labels ACCESS_BANK 1"Yes" 0"No".
value labels REGISTERED_BANK 1"Yes" 0"No".
value labels ACTIVE_BANK 1"Yes" 0"No".
value labels ACTIVE30_BANK 1"Yes" 0"No".
value labels INACTIVE_BANK 1"Yes" 0"No".
value labels BANK_BASIC 1"Yes" 0"No".
value labels BANK_ADV 1"Yes" 0"No".
value labels REG_BANK_BASIC 1"Yes" 0"No".
value labels REG_BANK_ADV 1"Yes" 0"No".
value labels ACTIVE_BANK_BASIC 1"Yes" 0"No".
value labels ACTIVE_BANK_ADV 1"Yes" 0"No".
value labels ACTIVE30_BANK_ADV 1"Yes" 0"No".
value labels BANK_STAGE 
0"Bank nonuser"
1"Unregistered bank user"
2"Registered inactive bank user"
3"Basic only active bank user"
4"Adavanced active bank user".

variable labels ACCESS_BANK	"Have access to bank"
REGISTERED_BANK	"Have a bank account"
ACTIVE_BANK	"Used own bank accounts in past 90 days"
ACTIVE30_BANK	"Used own bank accounts in past 30 days"
INACTIVE_BANK	"Bank account owner who haven't used any bank services in past 90 days"
BANK_BASIC	"Ever used bank to do basic activities"
BANK_ADV	"Ever used bank to do advanced activities"
REG_BANK_BASIC	"Conduct basic activity thru own bank account"
REG_BANK_ADV	"Conduct advanced activity thru own bank account"
ACTIVE_BANK_BASIC	"Used own bank account in past 90 days and have used at least one basic financial service"
ACTIVE_BANK_ADV	"Used own bank account in past 90 days and have used at least one advanced financial service"
ACTIVE30_BANK_ADV	"Used own bank account in past 30 days and have used at least one advanced financial service"
BANK_STAGE	"Customer journey segmentation of bank".

