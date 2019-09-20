* Encoding: windows-1252.
*Section 8.1.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

DATASET ACTIVATE bng18.

compute ACCESS_NBFI=0.
IF((FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
    (FN5_1=1 and FN5_4=1) or
    (FN6_1=1 and FN6_4=1) or
     FN7_1=1)  ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
IF (FN3_1=1 or FN4_1=1 or (FN5_1=1 and FN5_4=1) or (FN6_1=1 and FN6_4=1) or FN7_1=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
     (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
     (FN5_1=1 and FN5_4=1) or
     (FN6_1=1 and FN6_4=1) or
      FN7_2=1) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0.
IF (FN3_2=1 or  FN4_2=1 or (FN5_1=1 and FN5_4=1) or (FN6_1=1 and FN6_4=1) or FN7_2=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
    (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or
     FN7_2=1) REG_DFS_NBFI=1. 

compute ACTIVE_NBFI=0.
if ((FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or 
    (FN5_1=1 and FN5_4=1 and FN5_3<=4) or
    (FN6_1=1 and FN6_4=1 and FN6_3<=4) or 
     FN7_3<=4)  ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0.
if (FN3_3<=4 or FN4_3<=4 or (FN5_1=1 and FN5_4=1 and FN5_3<=4) or (FN6_1=1 and FN6_4=1 and FN6_3<=4) or FN7_3<=4)  ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((FN3_3<=3 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    (FN4_3<=3 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or 
    (FN5_1=1 and FN5_4=1 and FN5_3<=3) or
    (FN6_1=1 and FN6_4=1 and FN6_3<=3) or 
     FN7_3<=3)  ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ad1_5=1 or 
ad1_6=1 or 
(ad1_7=1 and FN5_1=1 and FN5_4=1) or 
(ad1_8=1 and FN6_1=1 and FN6_4=1) or 
ad1_9=1 NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1) or
    (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1) or 
   ((AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1) and (FN5_1=1 and FN5_4=1)) or
   ((AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1) and (FN6_1=1 and FN6_4=1)) or
    (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
if (ad1_5=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or 
   (ad1_6=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or 
  (ad1_7=1 and FN5_1=1 and FN5_4=1) or 
  (ad1_8=1 and FN6_1=1 and FN6_4=1) or 
   ad1_9=1 NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1) and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    ((AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1) and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1))or 
   ((AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1) and (FN5_1=1 and FN5_4=1)) or
   ((AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1) and (FN6_1=1 and FN6_4=1)) or
    (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and ad1_5=1) or
     (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and ad1_6=1) or
     (FN5_1=1 and FN5_4=1 and ad1_7=1) or
     (FN6_1=1 and FN6_4=1 and ad1_8=1) or
      (FN7_2=1 and ad1_9=1) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) or
     (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) or
     (FN5_1=1 and FN5_4=1 and (AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1)) or
     (FN6_1=1 and FN6_4=1 and (AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1)) or
      (FN7_2=1 and (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1)) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and ad1_5=1) or
    (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and ad1_6=1) or 
    (FN5_1=1 and FN5_4=1 and FN5_3<=4 and ad1_7=1) or
    (FN6_1=1 and FN6_4=1 and FN6_3<=4 and ad1_8=1) or 
     (FN7_3<=4 and ad1_9=1)  ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF ((FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and
     (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) or
     (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and
     (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) or 
     (FN5_1=1 and FN5_4=1 and FN5_3<=4 and (AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1)) or 
     (FN6_1=1 and FN6_4=1 and FN6_3<=4 and (AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1)) or 
     (FN7_3<=4 and (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF ((FN3_3<=3 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and
     (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) or
     (FN4_3<=3 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and
     (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) or 
     (FN5_1=1 and FN5_4=1 and FN5_3<=3 and (AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1)) or 
     (FN6_1=1 and FN6_4=1 and FN6_3<=3 and (AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1)) or 
     (FN7_3<=3 and (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

DATASET ACTIVATE ind18.

compute ACCESS_NBFI=0.
IF FN2_1=1 or 
    FN3_1=1 or
   (FN6_1=1 and FN6_3=1)  ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (FN2_1=1 or 
    FN3_1=1 or
   (FN6_1=1 and FN6_3=1)) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0. 
if (FN2_2=1 or 
    FN3_2=1 or
   (FN6_1=1 and FN6_3=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0.
IF FN2_2=1 or 
    FN3_2=1 or
   (FN6_1=1 and FN6_3=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if FN2_2=1 or FN3_2=1 REG_DFS_NBFI=1. 

compute ACTIVE_NBFI=0.
if FN2_3<=4 or
  (FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=4) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if FN2_3<=4 or
  (FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if FN2_3<=3 or
  (FN3_3_1<=3 or FN3_3_2<=3 or FN3_3_3<=3 or FN3_3_4<=3 or FN3_3_5<=3 or FN3_3_6<=3 or FN3_3_7<=3) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=3) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ad1_2=1 or ad1_3=1 NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1) or
    (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or (FN6_1=1 and FN6_3=1 and AD9_6=1) or
     AD10_21=1 or (FN6_1=1 and FN6_3=1 and AD10_28=1) or
     AD11_9=1 or AD11_10=1 or (FN6_1=1 and FN6_3=1 and AD11_6=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
if  ad1_2=1 or ad1_3=1 NBFI_BASIC=1.

compute NBFI_ADV=0.
IF (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1) or
    (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or (FN6_1=1 and FN6_3=1 and AD9_6=1) or
     AD10_21=1 or (FN6_1=1 and FN6_3=1 and AD10_28=1) or
     AD11_9=1 or AD11_10=1 or (FN6_1=1 and FN6_3=1 and AD11_6=1)) NBFI_ADV=1.

compute REG_NBFI_BASIC=0. 
if ((FN2_2=1 and ad1_2=1) or 
    (FN3_2=1 and ad1_3=1)) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0. 
if ((FN2_2=1 and (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or 
    (FN3_2=1 and (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1)) or
    (FN6_1=1 and FN6_3=1 and (AD9_6=1 or AD10_28=1 or AD11_6=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if (FN2_3<=4 and ad1_2=1)or
  ((FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) and ad1_3=1) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (FN2_3<=4 and 
   (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or
  ((FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) and 
   (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1)) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=4 and (AD9_6=1 or AD10_28=1 or AD11_6=1)) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (FN2_3<=3 and 
   (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or
  ((FN3_3_1<=3 or FN3_3_2<=3 or FN3_3_3<=3 or FN3_3_4<=3 or FN3_3_5<=3 or FN3_3_6<=3 or FN3_3_7<=3) and 
   (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1)) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=3 and (AD9_6=1 or AD10_28=1 or AD11_6=1)) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

DATASET ACTIVATE bng17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((ifi1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (ifi1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (ifi1_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (ifi1_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((ifi1_1=1 and (IFI10_3<=6 or IFI10_4<=6 or IFI10_5<=6 or IFI10_6<=6 or IFI10_7<=6 or IFI10_8<=6 or FB22_4=1 or FB16A_3=1)) or 
     (ifi1_2=1 and (IFI11_3<=6 OR IFI11_4<=6 OR IFI11_5<=6 OR IFI11_6<=6 OR IFI11_7<=6 OR IFI11_8<=6 )) OR 
     (ifi1_3=1 and (IFI12_3<=6 OR IFI12_4<=6 OR IFI12_5<=6 OR IFI12_6<=6 OR IFI12_7<=6 OR IFI12_8<=6 or FB16A_4=1)) OR 
     (ifi1_4=1 and (IFI13_3<=6 OR IFI13_4<=6 OR IFI13_5<=6 OR IFI13_6<=6 OR IFI13_7<=6 OR IFI13_8<=6 OR FB22_3=1))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
if  ((ifi1_1=1 and ifi5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (ifi1_2=1 and ifi5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (ifi1_3=1 and ifi5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (ifi1_4=1 and ifi5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((ifi1_1=1 and ifi5_1=1 and (IFI10_3<=6 or IFI10_4<=6 or IFI10_5<=6 or IFI10_6<=6 or IFI10_7<=6 or IFI10_8<=6 or FB22_4=1 or FB16A_3=1)) or 
     (ifi1_2=1 and ifi5_2=1 and (IFI11_3<=6 OR IFI11_4<=6 OR IFI11_5<=6 OR IFI11_6<=6 OR IFI11_7<=6 OR IFI11_8<=6 )) OR 
     (ifi1_3=1 and ifi5_2=1 and (IFI12_3<=6 OR IFI12_4<=6 OR IFI12_5<=6 OR IFI12_6<=6 OR IFI12_7<=6 OR IFI12_8<=6 or FB16A_4=1)) OR 
     (ifi1_4=1 and ifi5_2=1 and (IFI13_3<=6 OR IFI13_4<=6 OR IFI13_5<=6 OR IFI13_6<=6 OR IFI13_7<=6 OR IFI13_8<=6 OR FB22_3=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<=6 or IFI10_4<=6 or IFI10_5<=6 or IFI10_6<=6 or IFI10_7<=6 or IFI10_8<=6 or FB22_4=1 or FB16A_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<=6 OR IFI11_4<=6 OR IFI11_5<=6 OR IFI11_6<=6 OR IFI11_7<=6 OR IFI11_8<=6 )) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<=6 OR IFI12_4<=6 OR IFI12_5<=6 OR IFI12_6<=6 OR IFI12_7<=6 OR IFI12_8<=6 or FB16A_4=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3<=6 OR IFI13_4<=6 OR IFI13_5<=6 OR IFI13_6<=6 OR IFI13_7<=6 OR IFI13_8<=6 OR FB22_3=1))) REG_NBFI_ADV=1.


compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1) and (IFI4_3<=4 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7 or FB22_3=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1) and (IFI4_3<=3 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7 or FB22_3=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.


**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

DATASET ACTIVATE ind17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1) or
     (IFI3_3=1 and IFI5_3=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((ifi1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (ifi1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (ifi1_3=1 and (IFI12_1<=6 OR IFI12_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((ifi1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_3=1 or FB16A_2=1))
 or (ifi1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7  or FB22_4=1 or FB16A_3=1))
 or (ifi1_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_5=1 or FB16A_5=1))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
if  ((ifi1_1=1 and ifi5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (ifi1_2=1 and ifi5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (ifi1_3=1 and ifi5_3=1 and (IFI12_1<=6 OR IFI12_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((ifi1_1=1 and ifi5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_3=1 or FB16A_2=1))
 or (ifi1_2=1 and ifi5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7  or FB22_4=1 or FB16A_3=1))
 or (ifi1_3=1 and ifi5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_5=1 or FB16A_5=1)))NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_3=1 or FB16A_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7  or FB22_4=1 or FB16A_3=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_5=1 or FB16A_5=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_3=1 or FB16A_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_5=1 or FB16A_5=1) and (IFI4_3<=4 and IFI5_3=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_3=1 or FB16A_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_5=1 or FB16A_5=1) and (IFI4_3<=3 and IFI5_3=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.


**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

DATASET ACTIVATE ken17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1) or
     (IFI3_3=1 and IFI5_3=1) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (IFI1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (IFI1_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (IFI1_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1))
 or (IFI1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))
 or (IFI1_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7  or FB16A_4=1 or fb22_3=1 ))
 or (IFI1_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7  or FB16A_4=1 or fb22_3=1 )) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7  or FB16A_4=1 or fb22_3=1 )) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7  or FB22_3=1 or FB16A_4=1) and (IFI4_3<=4 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7  or FB22_3=1 or FB16A_4=1) and (IFI4_3<=3 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.


**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

DATASET ACTIVATE nga17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (IFI1_2=1 and (IFI11_1<=6 OR IFI11_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7  or FB22_4=1 or FB16A_3=1))
 or (IFI1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7  or FB22_4=1 or FB16A_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and IFI4_1<=4 and IFI5_1=1) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and IFI4_2<=4 and IFI5_2=1)) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=3 and IFI5_2=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

DATASET ACTIVATE pak17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (IFI1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (IFI1_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (IFI1_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1))
 or (IFI1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))
 or (IFI1_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1))
 or (IFI1_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1) and (IFI4_3<=4 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1) and (IFI4_3<=3 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

DATASET ACTIVATE tza17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (IFI1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (IFI1_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (IFI1_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1))
 or (IFI1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))
 or (IFI1_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1 or fb22_3=1))
 or (IFI1_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1 or fb22_3=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1 or fb22_3=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

DATASET ACTIVATE uga17.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or 
     (IFI1_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) OR 
     (IFI1_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) OR 
     (IFI1_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1))
 or (IFI1_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1))
 or (IFI1_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1))
 or (IFI1_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1<=6 or IFI10_2<=6)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1<=6 OR IFI11_2<=6)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1<=6 OR IFI12_2<=6)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1<=6 OR IFI13_2<=6))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=4 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1) and (IFI4_2<=4 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1) and (IFI4_3<=4 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
 or ((IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1) and (IFI4_2<=3 and IFI5_2=1)) 
 or ((IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1) and (IFI4_3<=3 and IFI5_3=1)) 
 or ((IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

DATASET ACTIVATE bng16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
     (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
     (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
     (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or 
      IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1))
 or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1
  or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1))
 or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1
  or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1))
 or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 
  or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1))) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or 
     IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1
  or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1
  or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 
  or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or 
     IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1
  or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1
  or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 
  or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1 or FB16_4=1 or FB22_3=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1 or FB16_4=1 or FB22_3=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

DATASET ACTIVATE ind16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 )) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4) ACTIVE_NBFI_ALL=1..

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if  ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
     (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
     (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1))
or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or 
IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
      IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
      IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or 
      IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
      IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
      IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or 
      IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_6=1 or fb22_9=1) and (IFI4_3<=4 and IFI5_3=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_6=1 or fb22_9=1) and (IFI4_3<=3 and IFI5_3=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

DATASET ACTIVATE ida16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1) or
(IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
(IFI4_2<=3 and IFI5_2=1) or
(IFI4_3<=3 and IFI5_3=1) or
(IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or 
IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB16_3=1))
 or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or 
IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or FB16_4=1))
 or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or 
IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or FB16_5=1))
 or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or 
IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or FB16_6=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
  or FB16_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1
  or FB16_4=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
  or FB16_5=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1
  or FB16_6=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
  or FB16_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1
  or FB16_4=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
  or FB16_5=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1
  or FB16_6=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
if ((IFI4_1<=4 and IFI5_1=1 and 
    (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
 or FB16_3=1)) or
    (IFI4_2<=4 and IFI5_2=1 and 
    (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1
  or FB16_4=1)) or
    (IFI4_3<=4 and IFI5_3=1 and 
    (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
  or FB16_5=1)) or
    (IFI4_4<=4 and IFI5_4=1 and
    (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1
  or FB16_6=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
if ((IFI4_1<=3 and IFI5_1=1 and 
    (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
 or FB16_3=1)) or
    (IFI4_2<=3 and IFI5_2=1 and 
    (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1
  or FB16_4=1)) or
    (IFI4_3<=3 and IFI5_3=1 and 
    (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
  or FB16_5=1)) or
    (IFI4_4<=3 and IFI5_4=1 and
    (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1
  or FB16_6=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

DATASET ACTIVATE ken16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or 
IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or 
IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1))
or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or 
IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1))
or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or 
IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or 
      IFI10_22=1 or FB16_3=1 or FB22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or 
      IFI11_22=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or 
      IFI12_22=1 or fb16_4=1 or fb22_3=1)) or
     (IFI1_4=1 and IFI5_4=1 and
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or 
      IFI13_22=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or 
      IFI10_22=1 or FB16_3=1 or FB22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or 
      IFI11_22=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or 
      IFI12_22=1 or fb16_4=1 or fb22_3=1)) or
     (IFI3_4=1 and IFI5_4=1 and
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or 
      IFI13_22=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

DATASET ACTIVATE nga16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1
 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 
or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1  or fb16_4=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1
  or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 
or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1  or fb16_4=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1
  or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1  or fb16_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 
or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1  or fb16_4=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1 or fb16_4=1) and (IFI4_2<=4 and IFI5_2=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1 or fb16_4=1) and (IFI4_2<=3 and IFI5_2=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

DATASET ACTIVATE pak16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB22_4=1 or FB16_3=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1))
or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 
or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1  or FB22_3=1 or FB16_6=1))
or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 
or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
      IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB22_4=1 or FB16_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
      IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 
  or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1  or FB22_3=1 or FB16_6=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 
  or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
      IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB22_4=1 or FB16_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or 
      IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 
  or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1  or FB22_3=1 or FB16_6=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 
  or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) 
and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or 
ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or fb16_6=1 or fb22_3=1) 
and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or 
IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) 
and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or 
ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or fb16_6=1 or fb22_3=1) 
and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

DATASET ACTIVATE tza16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF ((IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or 
IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or 
IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1))
or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or 
IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1))
or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or 
IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))
) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
          or fb16_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 
  or IFI11_22=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 
  or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 
  or IFI13_22=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 
          or fb16_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 
  or IFI11_22=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 
  or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 
  or IFI13_22=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

DATASET ACTIVATE uga16.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if ((ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
    (ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
    (ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
    (ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) OR 
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
  or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) ) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1)) or
     (IFI1_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) ) or
     (IFI1_4=1 and IFI5_4=1 and
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
  or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) ) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1)) or
     (IFI3_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) ) or
     (IFI3_4=1 and IFI5_4=1 and
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_9=1 or IFI10_10=1 or IFI10_23=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_9=1 or IFI11_10=1 or IFI11_23=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_9=1 or IFI12_10=1 or IFI12_23=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_9=1 or IFI13_10=1 or IFI13_23=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1 )) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_11=1 or ifi11_12=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1
 or ifi11_21=1 or ifi11_22=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_11=1 or ifi12_12=1 or ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1
 or ifi12_21=1 or ifi12_22=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1 )) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_11=1 or ifi13_12=1 or ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1
 or ifi13_21=1 or ifi13_22=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

DATASET ACTIVATE bng15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1) or
     (IFI1_4=1 and IFI5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
(IFI4_2<=3 and IFI5_2=1) or
(IFI4_3<=3 and IFI5_3=1) or
(IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or 
    (IFI1_4=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) OR 
    ((IFI1_2=1 or IFI1_3=1) and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or FB16_2=1 or FB22_2=1))
or (IFI1_4=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or FB16_3=1 or FB22_3=1))
or ((IFI1_2=1 or IFI1_3=1) and(ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or 
ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
   (((IFI1_2=1 and IFI5_2=1 ) or (IFI1_3=1 and IFI5_3=1)) and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or FB16_2=1 or FB22_2=1) and (IFI1_1=1 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or FB16_3=1 or FB22_3=1) and (IFI1_4=1 and IFI5_4=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or 
ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and 
((IFI1_2=1 and IFI5_2=1 ) or (IFI1_3=1 and IFI5_3=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
   (((IFI3_2=1 and IFI5_2=1 ) or (IFI3_3=1 and IFI5_3=1)) and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or FB16_2=1 or FB22_2=1) and (IFI3_1=1 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or FB16_3=1 or FB22_3=1) and (IFI3_4=1 and IFI5_4=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or 
ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and 
((IFI3_2=1 and IFI5_2=1 ) or (IFI3_3=1 and IFI5_3=1)))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
   (((IFI4_3<=4 and IFI5_3=1) or (IFI4_2<=4 and IFI5_2=1)) and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1)) or
     (IFI4_4<=4 and IFI5_4=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or FB16_2=1 or FB22_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or FB16_3=1 or FB22_3=1) and (IFI4_4<=4 and IFI5_4=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or 
ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and 
((IFI4_3<=4 and IFI5_3=1) or (IFI4_2<=4 and IFI5_2=1))) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or FB16_2=1 or FB22_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or FB16_3=1 or FB22_3=1) and (IFI4_4<=3 and IFI5_4=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or 
ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and 
((IFI4_3<=3 and IFI5_3=1) or (IFI4_2<=3 and IFI5_2=1))) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.


**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

DATASET ACTIVATE ind15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1) or
     (IFI3_3=1 and IFI5_3=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1))
or (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1)) 
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or fb16_6=1 or fb22_9=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
      ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
      ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
      ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
      ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
      ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
      ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or fb16_6=1 or fb22_9=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
      ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
      ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
      ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
      ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
      ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
      ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or fb16_6=1 or fb22_9=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or fb16_6=1 or fb22_9=1) and (IFI4_3<=4 and IFI5_3=1)) 
) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or fb16_6=1 or fb22_9=1) and (IFI4_3<=3 and IFI5_3=1)) 
) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

DATASET ACTIVATE ida15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1) or
     (IFI1_4=1 and IFI5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) OR 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
if (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1))
or (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1))
or (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1))
or (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (IFI4_1<=4 and IFI5_1=1 and 
    (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
     IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
     IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) or
     (IFI4_2<=4 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
      IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
      IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) or
     (IFI4_3<=4 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
      IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
      IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) or
     (IFI4_4<=4 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
      IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
      IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1)) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF ((IFI4_1<=3 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) or
     (IFI4_2<=3 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) or
     (IFI4_3<=3 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) or
     (IFI4_4<=3 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.


**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

DATASET ACTIVATE ken15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1) or
     (IFI1_4=1 and IFI5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1) or
     (IFI3_3=1 and IFI5_3=1) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 
or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 
or ifi11_26=1 or ifi11_27=1) )
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 
or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 
or ifi13_26=1 or ifi13_27=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 
or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 
or ifi11_26=1 or ifi11_27=1) ) or
     (IFI1_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 
or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 
or ifi13_26=1 or ifi13_27=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 
or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 
or ifi11_26=1 or ifi11_27=1) ) or
     (IFI3_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 
or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 
or ifi13_26=1 or ifi13_27=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 
or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or 
ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 
or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or 
ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

DATASET ACTIVATE nga15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 )) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or fb16_3=1 or fb22_4=1)) 
 or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 
 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
  or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or fb16_3=1 or fb22_4=1) ) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 
  or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
  or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or fb16_3=1 or fb22_4=1) ) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 
  or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 
or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=4 and IFI5_2=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1
 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 
or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=3 and IFI5_2=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

DATASET ACTIVATE pak15.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or 
     (ifi1_2=1 and ifi5_2=1) or 
     (ifi1_3=1 and ifi5_3=1) ) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((ifi3_1=1 and ifi5_1=1) or
     (ifi3_2=1 and ifi5_2=1) or
     (ifi3_3=1 and ifi5_3=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1))  REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((ifi4_1<=4 and ifi5_1=1) or
    (ifi4_2<=4 and ifi5_2=1) or
    (ifi4_3<=4 and ifi5_3=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((ifi4_1<=3 and ifi5_1=1) or
    (ifi4_2<=3 and ifi5_2=1) or
    (ifi4_3<=3 and ifi5_3=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((ifi1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or 
    (ifi1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or 
    (ifi1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (ifi1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1))
or (ifi1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1))
or (ifi1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((ifi1_1=1 and ifi5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
     (ifi1_2=1 and ifi5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
     (ifi1_3=1 and ifi5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((ifi1_1=1 and ifi5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1)) or
     (ifi1_2=1 and ifi5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) ) or
     (ifi1_3=1 and ifi5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((ifi3_1=1 and ifi5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
     (ifi3_2=1 and ifi5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
     (ifi3_3=1 and ifi5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((ifi3_1=1 and ifi5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1)) or
     (ifi3_2=1 and ifi5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) ) or
     (ifi3_3=1 and ifi5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((ifi4_1<=4 and ifi5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_10=1 or IFI10_11=1 or IFI10_26=1)) or
     (ifi4_2<=4 and ifi5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_10=1 or IFI11_11=1 or IFI11_26=1)) or
     (ifi4_3<=4 and ifi5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_10=1 or IFI12_11=1 or IFI12_26=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and (IFI4_3<=4 and IFI5_3=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_12=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or 
ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or fb16_2=1 or fb22_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_12=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or 
ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or fb16_3=1 or fb22_3=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_12=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or 
ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1) and (IFI4_3<=3 and IFI5_3=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

DATASET ACTIVATE tza15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1) or
     (IFI1_4=1 and IFI5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 
or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or FB22_4=1 or FB16_3=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 
or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 
or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or FB22_3=1 or FB16_4=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 
or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 
or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or FB22_4=1 or FB16_3=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 
or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 
or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or FB22_3=1 or FB16_4=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 
or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 
or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or FB22_4=1 or FB16_3=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 
or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 
or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or FB22_3=1 or FB16_4=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 
or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 
or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or FB22_4=1 or FB16_3=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 
or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 
or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or FB22_3=1 or FB16_4=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 
or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=4 and IFI5_4=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 
or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or FB22_4=1 or FB16_3=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 
or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 
or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or FB22_3=1 or FB16_4=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 
or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=3 and IFI5_4=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

DATASET ACTIVATE uga15.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or
     (IFI1_2=1 and IFI5_2=1) or
     (IFI1_3=1 and IFI5_3=1) or
     (IFI1_4=1 and IFI5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
   (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or 
ifi10_25=1 or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or 
ifi11_25=1 or ifi11_26=1 or ifi11_27=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or 
ifi12_25=1 or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or 
ifi13_25=1 or ifi13_26=1 or ifi13_27=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or 
ifi10_25=1 or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1)) or
     (IFI1_2=1 and IFI5_2=1 and
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or 
ifi11_25=1 or ifi11_26=1 or ifi11_27=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or 
ifi12_25=1 or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1) ) or
     (IFI1_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or 
ifi13_25=1 or ifi13_26=1 or ifi13_27=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or 
ifi10_25=1 or ifi10_26=1 or ifi10_27=1 or fb16_3=1 or fb22_4=1)) or
     (IFI3_2=1 and IFI5_2=1 and
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or 
ifi11_25=1 or ifi11_26=1 or ifi11_27=1)) or
     (IFI3_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or 
ifi12_25=1 or ifi12_26=1 or ifi12_27=1 or fb16_4=1 or fb22_3=1) ) or
     (IFI3_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or 
ifi13_25=1 or ifi13_26=1 or ifi13_27=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
IF ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1 or IFI10_11=1 or IFI10_12=1 or IFI10_28=1)) or
     (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1 or IFI11_11=1 or IFI11_12=1 or IFI11_28=1)) or
     (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1 or IFI12_11=1 or IFI12_12=1 or IFI12_28=1)) or
     (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1 or IFI13_11=1 or IFI13_12=1 or IFI13_28=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or fb16_3=1 or fb22_4=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) 
and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or fb16_4=1 or fb22_3=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=4 and IFI5_4=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_13=1 or ifi10_14=1 or ifi10_15=1 or ifi10_16=1 or ifi10_17=1 or ifi10_18=1 or ifi10_19=1 or ifi10_20=1 or ifi10_21=1 or ifi10_22=1 or ifi10_23=1 or ifi10_24=1 or ifi10_25=1 or ifi10_26=1 or ifi10_27=1
or fb16_3=1 or fb22_4=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_13=1 or ifi11_14=1 or ifi11_15=1 or ifi11_16=1 or ifi11_17=1 or ifi11_18=1 or ifi11_19=1 or ifi11_20=1 or ifi11_21=1 or ifi11_22=1 or ifi11_23=1 or ifi11_24=1 or ifi11_25=1 or ifi11_26=1 or ifi11_27=1) 
and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_13=1 or ifi12_14=1 or ifi12_15=1 or ifi12_16=1 or ifi12_17=1 or ifi12_18=1 or ifi12_19=1 or ifi12_20=1 or ifi12_21=1 or ifi12_22=1 or ifi12_23=1 or ifi12_24=1 or ifi12_25=1 or ifi12_26=1 or ifi12_27=1
or fb16_4=1 or fb22_3=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_13=1 or ifi13_14=1 or ifi13_15=1 or ifi13_16=1 or ifi13_17=1 or ifi13_18=1 or ifi13_19=1 or ifi13_20=1 or ifi13_21=1 or ifi13_22=1 or ifi13_23=1 or ifi13_24=1 or ifi13_25=1 or ifi13_26=1 or ifi13_27=1) 
and (IFI4_4<=3 and IFI5_4=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

DATASET ACTIVATE bng14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
   (IFI3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (IFI3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or 
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) ) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1)) or
     (IFI1_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1)) or
     (IFI1_4=1 and IFI5_4=1 and
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) ) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1)) or
     (IFI3_3=1 and IFI5_3=1 and
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1)) or
     (IFI3_4=1 and IFI5_4=1 and
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

DATASET ACTIVATE ind14.

compute ACCESS_NBFI=0.
IF ((IFI1_1=1 and IFI5_1=1) or 
     (IFI1_2=1 and IFI5_2=1) or 
     (IFI1_4=1 and IFI5_3=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_4=1 and IFI5_3=1 )) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
    (ifi3_4=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_4<=4 and IFI5_3=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_4<=3 and IFI5_3=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_4=1 and (IFI12_1=1 or IFI12_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1 or FL10_3=1 or FL13_3=1))
or (IFI1_4=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1 or fl10_6=1 or fl13_9=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_4=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF (IFI1_1=1 and IFI5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
    (IFI1_2=1 and IFI5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1 or FL10_3=1 or FL13_3=1)) or
    (IFI1_4=1 and IFI5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1 or fl10_6=1 or fl13_9=1)) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI3_4=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF (IFI3_1=1 and IFI5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
    (IFI3_2=1 and IFI5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1 or FL10_3=1 or FL13_3=1)) or
    (IFI3_4=1 and IFI5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1 or fl10_6=1 or fl13_9=1)) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_4<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1 or FL10_3=1 or FL13_3=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1 or fl10_6=1 or fl13_9=1) and (IFI4_4<=4 and IFI5_3=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1 or FL10_3=1 or FL13_3=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1 or fl10_6=1 or fl13_9=1) and (IFI4_4<=3 and IFI5_3=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

DATASET ACTIVATE ida14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI1_3=1 and IFI5_3=1 ) or
     (IFI1_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI1_3=1 or IFI1_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
   (ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI2_3<=4 and IFI5_3=1) or
    (IFI2_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI2_3<=4 or IFI2_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI2_3<=3 and IFI5_3=1) or
    (IFI2_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1))or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0. 
if (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
   (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) or
   (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) or
   (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) or
     (IFI1_3=1 and IFI5_3=1 and 
     (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI2_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI2_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
if (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) 
or (IFI2_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) 
or (IFI2_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
if (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) 
or (IFI2_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) 
or (IFI2_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

DATASET ACTIVATE ken14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
   (ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) active_nbfi=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
if (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
   (IFI1_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) or
   (IFI1_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) or
   (IFI1_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or  FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or  FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

DATASET ACTIVATE nga14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 )) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) or
    (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and
     (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1 ) and (IFI4_2<=4 and IFI5_2=1))) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1 ) and (IFI4_2<=3 and IFI5_2=1))) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

DATASET ACTIVATE pak14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
   (ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1) ) or
     (IFI1_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
     (IFI1_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
     (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and 
     (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1) ) or
     (IFI3_3=1 and IFI5_3=1 and 
     (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
     (IFI3_4=1 and IFI5_4=1 and 
     (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

DATASET ACTIVATE tza14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) ACCESS_NBFI_ALL=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
   (ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL13_2=1 or FL10_2=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or     
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and 
(ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL13_2=1 or FL10_2=1) ) or
(IFI1_2=1 and IFI5_2=1 and 
(ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
(IFI1_3=1 and IFI5_3=1 and 
(ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
(IFI1_4=1 and IFI5_4=1 and 
(ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or     
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and 
(ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL13_2=1 or FL10_2=1) ) or
(IFI3_2=1 and IFI5_2=1 and 
(ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
(IFI3_3=1 and IFI5_3=1 and 
(ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
(IFI3_4=1 and IFI5_4=1 and 
(ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL13_2=1 or FL10_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL13_2=1 or FL10_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

DATASET ACTIVATE uga14.

compute ACCESS_NBFI=0.
IF ((ifi1_1=1 and ifi5_1=1) or
     (ifi1_2=1 and ifi5_2=1) or
     (ifi1_3=1 and ifi5_3=1) or
     (ifi1_4=1 and ifi5_4=1)) ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
if (IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1) access_nbfi_all=1.

compute REGISTERED_NBFI=0.
IF ((IFI3_1=1 and IFI5_1=1) or
     (IFI3_2=1 and IFI5_2=1 ) or
     (IFI3_3=1 and IFI5_3=1 ) or
     (IFI3_4=1 and IFI5_4=1)) REGISTERED_NBFI=1.

compute REGISTERED_NBFI_ALL=0. 
if (IFI3_1=1 or IFI3_2=1 or IFI3_3=1 or IFI3_4=1) REGISTERED_NBFI_ALL=1.

compute REG_DFS_NBFI=0.
if (ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
   (ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
   (ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
   (ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) REG_DFS_NBFI=1.

compute ACTIVE_NBFI=0.
if ((IFI4_1<=4 and IFI5_1=1) or
    (IFI4_2<=4 and IFI5_2=1) or
    (IFI4_3<=4 and IFI5_3=1) or
    (IFI4_4<=4 and IFI5_4=1)) ACTIVE_NBFI=1.

compute ACTIVE_NBFI_ALL=0. 
if (IFI4_1<=4 or IFI4_2<=4 or IFI4_3<=4 or IFI4_4<=4) ACTIVE_NBFI_ALL=1.

compute ACTIVE30_NBFI=0.
if ((IFI4_1<=3 and IFI5_1=1) or
    (IFI4_2<=3 and IFI5_2=1) or
    (IFI4_3<=3 and IFI5_3=1) or
    (IFI4_4<=3 and IFI5_4=1)) ACTIVE30_NBFI=1.

compute INACTIVE_NBFI=0.
if REGISTERED_NBFI=1 and ACTIVE_NBFI=0 INACTIVE_NBFI=1.

compute DORMANT_NBFI=0.
if REGISTERED_NBFI=1 and ACCESS_NBFI=0 DORMANT_NBFI=1.

compute OTC_NBFI=0.
if REGISTERED_NBFI=0 and ACCESS_NBFI=1 OTC_NBFI=1.

compute NBFI_ALL_BASIC=0.
if ((IFI1_1=1 and (IFI10_1=1 or IFI10_2=1)) or 
    (IFI1_2=1 and (IFI11_1=1 or IFI11_2=1)) or 
    (IFI1_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI1_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_ALL_BASIC=1.

compute NBFI_ALL_ADV=0.
IF (IFI1_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1))
or (IFI1_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))
or (IFI1_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1))
or (IFI1_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1)) NBFI_ALL_ADV=1.

compute NBFI_BASIC=0.
IF ((IFI1_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI1_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI1_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) NBFI_BASIC=1.

compute NBFI_ADV=0.
IF ((IFI1_1=1 and IFI5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI1_2=1 and IFI5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
     (IFI1_3=1 and IFI5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
     (IFI1_4=1 and IFI5_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) NBFI_ADV=1.

compute REG_NBFI_BASIC=0.
IF ((IFI3_1=1 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
     (IFI3_3=1 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
     (IFI3_4=1 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) REG_NBFI_BASIC=1.

compute REG_NBFI_ADV=0.
IF ((IFI3_1=1 and IFI5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or
     (IFI3_2=1 and IFI5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
     (IFI3_3=1 and IFI5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or
     (IFI3_4=1 and IFI5_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))) REG_NBFI_ADV=1.

compute ACTIVE_NBFI_BASIC=0.
if ((IFI4_1<=4 and IFI5_1=1 and (IFI10_1=1 or IFI10_2=1)) or
    (IFI4_2<=4 and IFI5_2=1 and (IFI11_1=1 or IFI11_2=1)) or
    (IFI4_3<=4 and IFI5_3=1 and (IFI12_1=1 or IFI12_2=1)) or
    (IFI4_4<=4 and IFI5_4=1 and (IFI13_1=1 or IFI13_2=1))) ACTIVE_NBFI_BASIC=1.

compute ACTIVE_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=4 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=4 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=4 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=4 and IFI5_4=1)) ) ACTIVE_NBFI_ADV=1.

compute ACTIVE30_NBFI_ADV=0.
IF (((ifi10_3=1 or ifi10_4=1 or ifi10_5=1  or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or 
ifi10_11=1 or FL10_2=1 or FL13_2=1) and (IFI4_1<=3 and IFI5_1=1)) 
or ((ifi11_3=1 or ifi11_4=1 or ifi11_5=1  or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or 
ifi11_11=1) and (IFI4_2<=3 and IFI5_2=1)) 
or ((ifi12_3=1 or ifi12_4=1 or ifi12_5=1  or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or 
ifi12_11=1) and (IFI4_3<=3 and IFI5_3=1)) 
or ((ifi13_3=1 or ifi13_4=1 or ifi13_5=1  or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or 
ifi13_11=1) and (IFI4_4<=3 and IFI5_4=1)) ) ACTIVE30_NBFI_ADV=1.

compute NBFI_STAGE=0.
if ACCESS_NBFI=1 NBFI_STAGE=1.
if (nbfi_stage=1 and REGISTERED_NBFI=1) NBFI_STAGE=2.
if (nbfi_stage=2 and ACTIVE_NBFI=1) NBFI_STAGE=3.
if (nbfi_stage=3 and ACTIVE_NBFI_ADV=1) NBFI_STAGE=4.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

DATASET ACTIVATE bng13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

DATASET ACTIVATE ind13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

DATASET ACTIVATE ken13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

DATASET ACTIVATE nga13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

DATASET ACTIVATE pak13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

DATASET ACTIVATE tza13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

DATASET ACTIVATE uga13.

numeric ACCESS_NBFI.
numeric ACCESS_NBFI_ALL.
numeric REGISTERED_NBFI.
numeric REGISTERED_NBFI_ALL.
numeric REG_DFS_NBFI.
numeric ACTIVE_NBFI.
numeric ACTIVE_NBFI_ALL.
numeric ACTIVE30_NBFI.
numeric INACTIVE_NBFI.
numeric DORMANT_NBFI.
numeric OTC_NBFI.
numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
numeric REG_NBFI_ADV.
numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.

*****************************************************************************************************************************.
*Labels.
value labels ACCESS_NBFI	1"Yes" 0"No".
value labels ACCESS_NBFI_ALL	1"Yes" 0"No".
value labels REGISTERED_NBFI	1"Yes" 0"No".
value labels REGISTERED_NBFI_ALL	1"Yes" 0"No".
value labels REG_DFS_NBFI	1"Yes" 0"No".
value labels ACTIVE_NBFI	1"Yes" 0"No".
value labels ACTIVE_NBFI_ALL	1"Yes" 0"No".
value labels ACTIVE30_NBFI	1"Yes" 0"No".
value labels INACTIVE_NBFI	1"Yes" 0"No".
value labels DORMANT_NBFI	1"Yes" 0"No".
value labels OTC_NBFI	1"Yes" 0"No".
value labels NBFI_ALL_BASIC	1"Yes" 0"No".
value labels NBFI_ALL_ADV	1"Yes" 0"No".
value labels NBFI_BASIC	1"Yes" 0"No".
value labels NBFI_ADV	1"Yes" 0"No".
value labels REG_NBFI_BASIC	1"Yes" 0"No".
value labels REG_NBFI_ADV	1"Yes" 0"No".
value labels ACTIVE_NBFI_BASIC	1"Yes" 0"No".
value labels ACTIVE_NBFI_ADV	1"Yes" 0"No".
value labels ACTIVE30_NBFI_ADV	1"Yes" 0"No".
value labels NBFI_STAGE	0"NBFI nonuser"
1"Unregistered NBFI User"
2"Registered inactive NBFI user"
3"Basic only active NBFI user"
4"Advanced active NBFI user".

variable labels
ACCESS_NBFI	"Ever used a full service nonbank financial institution (NBFI)"
ACCESS_NBFI_ALL	"Ever used a nonbank financial institution"
REGISTERED_NBFI	"Have a full service nonbank financial institution (NBFI) account"
REGISTERED_NBFI_ALL	"Have a nonbank financial institution account"
REG_DFS_NBFI	"Have a digital stored-value NBFI accounts"
ACTIVE_NBFI	"Use a full service nonbank financial institution (NBFI) account in past 90 days"
ACTIVE_NBFI_ALL	"Use a nonbank financial institution account in past 90 days"
ACTIVE30_NBFI	"Used own full service NBFI accounts in past 30 days"
INACTIVE_NBFI	"Full service NBFI account owner who haven't used any NBFI services in past 90 days"
DORMANT_NBFI	"Full service NBFI account owner who never used any NBFI services"
OTC_NBFI	"Nonregistered full service NBFI users"
NBFI_ALL_BASIC	"Ever used NBFI to do basic activities"
NBFI_ALL_ADV	"Ever used NBFI to do advanced activities"
NBFI_BASIC	"Ever used full service NBFI to do basic activities"
NBFI_ADV	"Ever used full service NBFI to do advanced activities"
REG_NBFI_BASIC	"Conduct basic activity thru own full service NBFI account"
REG_NBFI_ADV	"Conduct advanced activity thru own full service NBFI account"
ACTIVE_NBFI_BASIC	"Used own full service NBFI account in past 90 days and have used at least one basic financial service"
ACTIVE_NBFI_ADV	"Used own full service NBFI account in past 90 days and have used at least one advanced financial service"
ACTIVE30_NBFI_ADV	"Used own full service NBFI account in past 30 days and have used at least one advanced financial service"
NBFI_STAGE	"Customer journey segmentation of NBFI".