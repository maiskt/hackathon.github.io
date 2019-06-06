* Encoding: windows-1252.
variable labels SBJNUM"Subject ID"
COUNTRY "COUNTRY"
YEAR "YEAR"
ACCESS_FINANCIAL"Ever used full service formal financial services"
FI"Financially included"
ACTIVE_FINANCIAL"Used own full service registered account in past 90 days"
ACCESS_FINANCIAL_ALL"Ever used formal financial services"
ACTIVE_FINANCIAL_ADV"Used own full service accounts in past 90 days and have used at least one advanced financial service "
ACTIVE30_FINANCIAL_ADV"Used own full service accounts in past 30 days and have used at least one advanced financial service"
ACCESS_DFS_PAYMENT_TRANSFER"Ever used bank or mobile money for digital payment or transfering"
ACCESS_DFS"Ever used a digital stored value account"
REGISTERED_DFS"Digitally included"
ACTIVE_DFS"Used own digital stored-value accounts in past 90 days"
ACTIVE_DFS_ADV"Used own digital stored-value accounts in past 90 days and have used at least one advanced financial service"
FINANCIAL_STAGE"Customer journey segmentation".

value labels ACCESS_FINANCIAL 1 "Yes" 0 "No".
value labels FI 1 "Financial included" 0 "Financial excluded".
value labels ACTIVE_FINANCIAL 1"Yes" 0"No".
Value labels ACCESS_FINANCIAL_ALL 1 "Yes" 0 "No".
Value labels ACTIVE_FINANCIAL_ADV 1 "Yes" 0 "No".
Value labels ACTIVE30_FINANCIAL_ADV 1 "Yes" 0 "No".
value labels ACCESS_DFS 1 "Yes" 0 "No".
value labels ACCESS_DFS_PAYMENT_TRANSFER 1"Yes" 0"No".
Value labels REGISTERED_DFS 1 "Yes" 0 "No".
Value labels ACTIVE_DFS 1 "Yes" 0 "No".
Value labels ACTIVE_DFS_ADV 1 "Yes" 0 "No".
Value labels FINANCIAL_STAGE 0"Nonuser" 1"Nonregistered User" 2"Inactive registered user" 3"Basic only active user" 4"Advanced active user".


**********************************2018**********************************.
*** 2018 Bangladesh***.
DATASET ACTIVATE b18.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

compute ACCESS_FINANCIAL=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN2_1=1 or
    (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
    (FN5_1=1 and FN5_4=1) or
    (FN6_1=1 and FN6_4=1) or
     FN7_1=1) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FN1_2=1 or FN1_3=1) or
      FN2_2=1 or
     (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
     (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
     (FN5_1=1 and FN5_4=1) or
     (FN6_1=1 and FN6_4=1) or
      FN7_2=1) FI=1.

compute ACTIVE_FINANCIAL=0.
if (FN1_6<=4 or
   (FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) or
   (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
   (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or 
   (FN5_1=1 and FN5_4=1 and FN5_3<=4) or
   (FN6_1=1 and FN6_4=1 and FN6_3<=4) or
    FN7_3<=4) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN2_1=1 or
     FN3_1=1 or
     FN4_1=1 or
    (FN5_1=1 and FN5_4=1) or
    (FN6_1=1 and FN6_4=1) or
     FN7_1=1) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FN1_6<=4 and 
     (AD2_1=1 or AD2_2=1 or AD2_3=1 or AD2_10=1 or 
      AD3_1=1 or AD3_2=1 or AD3_3=1 or AD3_10=1 or 
      AD4_1=1 or AD4_2=1 or AD4_3=1 or AD4_10=1 or 
      AD5_1=1 or AD5_2=1 or AD5_3=1 or AD5_10=1 or
      AD6_1=1 or AD6_2=1 or AD6_3=1 or 
      AD7_1=1 or AD7_2=1 or AD7_3=1 or 
      AD8_1=1 or AD8_2=1 or AD8_3=1 or AD8_10=1 or 
      AD9_1=1 or AD9_2=1 or AD9_3=1 or 
      AD10_17=1 or AD10_18=1 or AD10_19=1 or AD10_26=1 or 
      AD11_2=1 or AD11_3=1 or AD11_4=1 or AD11_5=1)) or
((FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) and
     (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1)) or
(FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and
     (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) or 
(FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and
     (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) or 
(FN5_1=1 and FN5_4=1 and FN5_3<=4 and 
     (AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1)) or 
(FN6_1=1 and FN6_4=1 and FN6_3<=4 and 
     (AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1)) or 
(FN7_3<=4 and 
     (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FN1_6<=3 and 
     (AD2_1=1 or AD2_2=1 or AD2_3=1 or AD2_10=1 or 
      AD3_1=1 or AD3_2=1 or AD3_3=1 or AD3_10=1 or 
      AD4_1=1 or AD4_2=1 or AD4_3=1 or AD4_10=1 or 
      AD5_1=1 or AD5_2=1 or AD5_3=1 or AD5_10=1 or
      AD6_1=1 or AD6_2=1 or AD6_3=1 or 
      AD7_1=1 or AD7_2=1 or AD7_3=1 or 
      AD8_1=1 or AD8_2=1 or AD8_3=1 or AD8_10=1 or 
      AD9_1=1 or AD9_2=1 or AD9_3=1 or 
      AD10_17=1 or AD10_18=1 or AD10_19=1 or AD10_26=1 or 
      AD11_2=1 or AD11_3=1 or AD11_4=1 or AD11_5=1)) or
((FN2_3_1<=3 or FN2_3_2<=3 or FN2_3_3<=3 or FN2_3_4<=3 or FN2_3_5<=3 or FN2_3_6<=3 or FN2_3_7<=3 or FN2_3_8<=3 or FN2_3_9<=3 or FN2_3_10<=3) and
     (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1)) or
(FN3_3<=3 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and
     (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) or 
(FN4_3<=3 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and
     (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) or 
(FN5_1=1 and FN5_4=1 and FN5_3<=3 and 
     (AD2_7=1 or AD3_7=1 or AD4_7=1 or AD5_7=1 or AD6_7=1 or AD7_7=1 or AD8_7=1 or AD9_7=1 or AD10_23=1 or AD11_11=1)) or 
(FN6_1=1 and FN6_4=1 and FN6_3<=3 and 
     (AD2_8=1 or AD3_8=1 or AD4_8=1 or AD5_8=1 or AD6_8=1 or AD7_8=1 or AD8_8=1 or AD9_8=1 or AD10_24=1 or AD11_12=1)) or 
(FN7_3<=3 and 
     (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if AD1_1=1 or AD1_2=1 or AD1_3=1 or AD1_4=1 or
   AD2_1=1 or AD2_2=1 or AD2_3=1 or AD2_4=1 or AD2_10=1 or
   AD3_1=1 or AD3_2=1 or AD3_3=1 or AD3_4=1 or AD3_10=1 or 
   AD4_1=1 or AD4_2=1 or AD4_3=1 or AD4_4=1 or AD4_10=1 or 
   AD5_1=1 or AD5_2=1 or AD5_3=1 or AD5_4=1 or AD5_10=1 or
   AD6_1=1 or AD6_2=1 or AD6_3=1 or AD6_4=1 or
   AD7_1=1 or AD7_2=1 or AD7_3=1 or AD7_4=1 ACCESS_DFS_PAYMENT_TRANSFER=1.

compute ACCESS_DFS=0.
if (FN1_1=1 or FN1_2=1 or FN1_3=1 or
    FN2_1=1 or
   (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
   (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or
    FN7_1=1) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((FN1_2=1 or FN1_3=1) or
     FN2_2=1 or
    (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
    (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or
     FN7_2=1) REGISTERED_DFS=1. 

compute ACTIVE_DFS=0.
if (FN1_6<=4 or
   (FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) or
   (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
   (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or 
    FN7_3<=4) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FN1_6<=4 and 
     (AD2_1=1 or AD2_2=1 or AD2_3=1 or AD2_10=1 or 
      AD3_1=1 or AD3_2=1 or AD3_3=1 or AD3_10=1 or 
      AD4_1=1 or AD4_2=1 or AD4_3=1 or AD4_10=1 or 
      AD5_1=1 or AD5_2=1 or AD5_3=1 or AD5_10=1 or
      AD6_1=1 or AD6_2=1 or AD6_3=1 or 
      AD7_1=1 or AD7_2=1 or AD7_3=1 or 
      AD8_1=1 or AD8_2=1 or AD8_3=1 or AD8_10=1 or 
      AD9_1=1 or AD9_2=1 or AD9_3=1 or 
      AD10_17=1 or AD10_18=1 or AD10_19=1 or AD10_26=1 or 
      AD11_2=1 or AD11_3=1 or AD11_4=1 or AD11_5=1)) 
or ((FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) and
     (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1)) 
or (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1) and
     (AD2_5=1 or AD3_5=1 or AD4_5=1 or AD5_5=1 or AD6_5=1 or AD7_5=1 or AD8_5=1 or AD9_5=1 or AD10_21=1 or AD11_7=1)) 
or (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1) and
     (AD2_6=1 or AD3_6=1 or AD4_6=1 or AD5_6=1 or AD6_6=1 or AD7_6=1 or AD8_6=1 or AD9_6=1 or AD10_22=1 or AD11_8=1)) 
or (FN7_3<=4 and 
     (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2018 India***.
DATASET ACTIVATE i18.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

compute ACCESS_FINANCIAL=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN4_1=1 or
     FN2_1=1 or 
     FN3_1=1 or
    (FN6_1=1 and FN6_3=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FN1_2=1 or FN1_3=1) or
      FN4_2=1 or
      FN2_2=1 or 
      FN3_2=1 or
     (FN6_1=1 and FN6_3=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (FN1_6<=4 or
   (FN4_3_1<=4 or FN4_3_2<=4 or FN4_3_3<=4) or
    FN2_3<=4 or
   (FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) or
   (FN6_1=1 and FN6_3=1 and FN6_4<=4)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN4_1=1 or
     FN2_1=1 or 
     FN3_1=1 or
     FN5_1=1 or
    (FN6_1=1 and FN6_3=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FN1_6<=4 and 
   (AD2_1=1 or AD2_5=1 or AD2_6=1 or AD2_7=1 or AD2_8=1 or AD3_1=1 or AD3_5=1 or AD3_6=1 or AD3_7=1 or AD3_8=1 or 
      AD4_1=1 or AD4_5=1 or AD4_6=1 or AD4_7=1 or AD4_8=1 or AD5_1=1 or AD5_5=1 or AD5_6=1 or AD5_7=1 or AD5_8=1 or 
AD6_1=1 or AD6_5=1 or AD6_6=1 or AD6_7=1 or AD7_1=1 or AD7_5=1 or AD7_6=1 or AD7_7=1 or 
AD8_1=1 or AD8_5=1 or AD8_6=1 or AD8_7=1 or AD8_8=1 or AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or 
AD10_19=1 or AD10_23=1 or AD10_24=1 or AD10_25=1 or AD10_26=1 or AD11_2=1 or AD11_7=1 or AD11_12=1 or AD11_13=1 or AD11_14=1)) or
  ((FN4_3_1<=4 or FN4_3_2<=4 or FN4_3_3<=4) and 
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1)) or
   (FN2_3<=4 and 
   (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or
  ((FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) and 
   (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1)) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=4 and (AD9_6=1 or AD10_28=1 or AD11_6=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FN1_6<=3 and 
   (AD2_1=1 or AD2_5=1 or AD2_6=1 or AD2_7=1 or AD2_8=1 or AD3_1=1 or AD3_5=1 or AD3_6=1 or AD3_7=1 or AD3_8=1 or 
      AD4_1=1 or AD4_5=1 or AD4_6=1 or AD4_7=1 or AD4_8=1 or AD5_1=1 or AD5_5=1 or AD5_6=1 or AD5_7=1 or AD5_8=1 or 
AD6_1=1 or AD6_5=1 or AD6_6=1 or AD6_7=1 or AD7_1=1 or AD7_5=1 or AD7_6=1 or AD7_7=1 or 
AD8_1=1 or AD8_5=1 or AD8_6=1 or AD8_7=1 or AD8_8=1 or AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or 
AD10_19=1 or AD10_23=1 or AD10_24=1 or AD10_25=1 or AD10_26=1 or AD11_2=1 or AD11_7=1 or AD11_12=1 or AD11_13=1 or AD11_14=1)) or
  ((FN4_3_1<=3 or FN4_3_2<=3 or FN4_3_3<=3) and 
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1)) or
   (FN2_3<=3 and 
   (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or
  ((FN3_3_1<=3 or FN3_3_2<=3 or FN3_3_3<=3 or FN3_3_4<=3 or FN3_3_5<=3 or FN3_3_6<=3 or FN3_3_7<=3) and 
   (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1)) or
  (FN6_1=1 and FN6_3=1 and FN6_4<=3 and (AD9_6=1 or AD10_28=1 or AD11_6=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if AD1_1=1 or AD1_5=1 or AD1_6=1 or AD1_7=1 or
AD1_4=1 or
AD2_1=1 or AD2_5=1 or AD2_6=1 or AD2_7=1 or AD2_8=1 or
AD2_4=1 or
AD3_1=1 or AD3_5=1 or AD3_6=1 or AD3_7=1 or AD3_8=1 or AD4_1=1 or AD4_5=1 or AD4_6=1 or AD4_7=1 or AD4_8=1 or AD5_1=1 or AD5_5=1 or AD5_6=1 or AD5_7=1 or AD5_8=1 or 
AD3_4=1 or AD4_4=1 or AD5_4=1 or 
AD6_1=1 or AD6_5=1 or AD6_6=1 or AD6_7=1 or
AD6_4=1 or
AD7_1=1 or AD7_5=1 or AD7_6=1 or AD7_7=1 or 
AD7_4=1 ACCESS_DFS_PAYMENT_TRANSFER=1.

compute ACCESS_DFS=0.
if (FN1_1=1 or FN1_2=1 or FN1_3=1 or
    FN4_1=1 or
    FN2_1=1 or 
    FN3_1=1) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((FN1_2=1 or FN1_3=1) or
     FN4_2=1 or
     FN2_2=1 or 
     FN3_2=1) REGISTERED_DFS=1. 

compute ACTIVE_DFS=0.
if (FN1_6<=4 or
   (FN4_3_1<=4 or FN4_3_2<=4 or FN4_3_3<=4) or
   (FN2_3<=4) or
   (FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4)) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FN1_6<=4 and 
     (AD2_1=1 or AD2_5=1 or AD2_6=1 or AD2_7=1 or AD2_8=1 or AD3_1=1 or AD3_5=1 or AD3_6=1 or AD3_7=1 or AD3_8=1 or 
      AD4_1=1 or AD4_5=1 or AD4_6=1 or AD4_7=1 or AD4_8=1 or AD5_1=1 or AD5_5=1 or AD5_6=1 or AD5_7=1 or AD5_8=1 or 
AD6_1=1 or AD6_5=1 or AD6_6=1 or AD6_7=1 or AD7_1=1 or AD7_5=1 or AD7_6=1 or AD7_7=1 or 
AD8_1=1 or AD8_5=1 or AD8_6=1 or AD8_7=1 or AD8_8=1 or AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or 
AD10_19=1 or AD10_23=1 or AD10_24=1 or AD10_25=1 or AD10_26=1 or AD11_2=1 or AD11_7=1 or AD11_12=1 or AD11_13=1 or AD11_14=1)) or
    ((FN4_3_1<=4 or FN4_3_2<=4 or FN4_3_3<=4) and 
     (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1)) or
     (FN2_3<=4 and 
     (AD2_2=1 or AD3_2=1 or AD4_2=1 or AD5_2=1 or AD6_2=1 or AD7_2=1 or AD8_2=1 or AD9_2=1 or AD10_20=1 or AD11_8=1)) or
    ((FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4) and 
     (AD2_3=1 or AD3_3=1 or AD4_3=1 or AD5_3=1 or AD6_3=1 or AD7_3=1 or AD8_3=1 or AD9_3=1 or AD10_21=1 or AD11_9=1 or AD11_10=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

**********************************2017**********************************.
***2017 Bangladesh***.
DATASET ACTIVATE b17.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1) or 
(IFI1_4=1 and IFI5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7 or fb22_3=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_96<=3)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=3 and IFI5_3=1
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7 or fb22_3=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1 or FF4=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_96=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ( ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1)
 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_9=1 
or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 
or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 
or ff1d_26=1 or ff1d_27=1 or ff1d_29=1 or ff1d_30=1 or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 
or ff1d_34=1 or ff1d_35=1 or ff1d_36=1 or ff1d_37=1 or ff1d_38=1 or ff1d_39=1 or ff1d_40=1 or ff1d_41=1 
or ff1d_42=1 or ff1d_43=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_48=1  
or ff1d_50=1 or ff1d_51=1 or ff1d_52=1 or ff1d_53=1 or ff1d_54=1 or ff1d_55=1 or ff1d_56=1 or ff1d_57=1 
or ff1d_58=1 or ff1d_59=1 or ff1d_60=1 or ff1d_61=1 or ff1d_62=1) and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or fb16a_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7 or fb22_3=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 India***.
DATASET ACTIVATE i17.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 or FF1A=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 
or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 )) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((FF1=1 or FF1A=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_4=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_2=1 or FB22_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_5=1 or FB22_5=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3
or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or MM8_96<=3) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_4=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_2=1 or FB22_3=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_5=1 or FB22_5=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_96=1) or
((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((FF1=1 or FF1A=1) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 
or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1=1 or FF1A=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_96<=4) 
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((FF1=1 or FF1A=1) and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_4=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_2=1 or FB22_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_5=1 or FB22_5=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 Kenya***.
DATASET ACTIVATE k17.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF1A=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1) or 
(IFI1_4=1 and IFI5_4=1) ) ACCESS_FINANCIAL=1.

compute FI=0.
IF (((FF1=1 or FF1A=1) and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1  or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1  or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF1A=1 or FF4=1) and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((((FF1=1 or FF1A=1) and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1  or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 Nigeria***.
DATASET ACTIVATE n17.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 
or MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 
or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_18=1 or MM6_19=1 or MM6_20=1
or MM6_21=1 or MM6_22=1 or MM6_23=1 or MM6_24=1 or MM6_25=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or 
ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 
or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 
or MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF  (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1)  and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) or 
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 
or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1  or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF  (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1)  and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) or 
((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3
or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or MM8_18<=3 or MM8_19<=3 or MM8_20<=3 
or MM8_21<=3 or MM8_22<=3 or MM8_23<=3 or MM8_24<=3 or MM8_25<=3 or MM8_96<=3) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1  or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1 or FF4=1) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 
or MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
(IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1  or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_21=1 or ff1d_22=1)  or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 
or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_18=1 or MM6_19=1 or MM6_20=1  
or MM6_21=1 or MM6_22=1 or MM6_23=1 or MM6_24=1 or MM6_25=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 
or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) 
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 or ff1d_11=1 or ff1d_12=1 or 
ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 or ff1d_21=1 or ff1d_22=1)  and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or fb16a_1=1 or fb22_1=1)) or 
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 
or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or 
MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1  or fb16a_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or fb16a_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 Pakistan***.
DATASET ACTIVATE p17.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1) or 
(IFI1_4=1 and IFI5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 
or MM6_11=1 or MM6_12=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 
or MM8_11<=4 or MM8_12<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3
or MM8_11<=3 or MM8_12<=3 or MM8_96<=3) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1 or FF4=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 
or MM4_11=1 or MM4_12=1 or MM4_96=1) or
((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_12=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_96<=4) 
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((ff1d_1=1 or ff1d_2=1 or ff1d_3=1 or ff1d_4=1 or ff1d_5=1 or ff1d_6=1 or ff1d_7=1 or ff1d_8=1 or ff1d_9=1 or ff1d_10=1 
or ff1d_11=1 or ff1d_12=1 or ff1d_13=1 or ff1d_14=1 or ff1d_15=1 or ff1d_16=1 or ff1d_17=1 or ff1d_18=1 or ff1d_19=1 or ff1d_20=1 
or ff1d_22=1 or ff1d_23=1 or ff1d_24=1 or ff1d_25=1 or ff1d_26=1 or ff1d_27=1 or ff1d_28=1 or ff1d_29=1 or ff1d_30=1 
or ff1d_31=1 or ff1d_32=1 or ff1d_33=1 or ff1d_34=1 or ff1d_37=1 or ff1d_39=1 
or ff1d_41=1 or ff1d_42=1 or ff1d_43=1 or ff1d_44=1 or ff1d_45=1 or ff1d_46=1 or ff1d_47=1 or ff1d_49=1 or ff1d_50=1 
or ff1d_52=1 or ff1d_53=1 or ff1d_55=1 or ff1d_56=1) and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1
or FB16A_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4
or MM8_11<=4 or MM8_12<=4 or MM8_96<=4) 
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 
or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 Tanzania***.
DATASET ACTIVATE t17.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF1A=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1) or 
(IFI1_4=1 and IFI5_4=1) ) ACCESS_FINANCIAL=1.

compute FI=0.
IF (((FF1=1 or FF1A=1) and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_96<=3)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=3 and IFI5_3=1
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF1A=1 or FF4=1) and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or
((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if (((FF1=1 and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB16A_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB16A_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB16A_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB16A_4=1 or FB22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2017 Uganda***.
DATASET ACTIVATE u17.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF1A=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_96=1) or
(IFI1_1=1 and IFI5_1=1) or
(IFI1_2=1 and IFI5_2=1) or
(IFI1_3=1 and IFI5_3=1) or 
(IFI1_4=1 and IFI5_4=1) ) ACCESS_FINANCIAL=1.

compute FI=0.
IF (((FF1=1 or FF1A=1) and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF1A=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_96=1) or
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1 or IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=3 and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_96<=3)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_13=1) or
(MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_13=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF1A=1 or FF4=1) and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_96=1) or
((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if (((FF1=1 or FF1A=1) and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF (((FF1=1 or FF1A=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_2=1 or FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 
or FF14_11=1 or FF14_12=1 or FF14_13=1 or FB22_1=1 or FB16A_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_96<=4)
and (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_11=1 or MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3<7 or IFI10_4<7 or IFI10_5<7 or IFI10_6<7 or IFI10_7<7 or IFI10_8<7 or FB22_4=1 or FB16A_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3<7 or IFI11_4<7 or IFI11_5<7 or IFI11_6<7 or IFI11_7<7 or IFI11_8<7 or FB16A_5=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3<7 or IFI12_4<7 or IFI12_5<7 or IFI12_6<7 or IFI12_7<7 or IFI12_8<7 or FB22_3=1 or FB16A_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3<7 or IFI13_4<7 or IFI13_5<7 or IFI13_6<7 or IFI13_7<7 or IFI13_8<7))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

**********************************2016**********************************.
***2016 Bangladesh***.
DATASET ACTIVATE b16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=3 and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or fb16_4=1 or fb22_3=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 India***.
DATASET ACTIVATE i16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or 
MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or  MM4_16=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FF1=1 or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or 
MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or 
MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_4=1 or fb22_5=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or 
MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_4=1 or fb22_5=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or 
MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if ((FF1=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or 
MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_4=1 or fb22_5=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_3=1 or fb22_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_9=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Indonesia***.
DATASET ACTIVATE ido16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1
 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or 
MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_96=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or 
MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or FB16_3=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or FB16_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or FB16_5=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or FB16_6=1))) 
ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or 
MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or FB16_3=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or FB16_4=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or FB16_5=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or FB16_6=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or 
MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_96=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if (((FF1=1 and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or 
MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or 
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or 
MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or FB16_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or FB16_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or FB16_5=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or FB16_6=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Kenya***.
DATASET ACTIVATE k16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if (((FF1=1 and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Nigeria***.
DATASET ACTIVATE n16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF ((((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or 
MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 or 
MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or 
MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_18=1 or MM6_19=1 or MM6_20=1 or 
MM6_21=1 or MM6_22=1 or MM6_23=1 or MM6_24=1 or MM6_25=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or 
MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or 
MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 or 
MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
(ifi1_1=1 or ifi1_2=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or 
MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) and 
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_4=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) or
((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or 
MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or MM8_18<=3 or MM8_19<=3 or MM8_20<=3 or 
MM8_21<=3 or MM8_22<=3 or MM8_23<=3 or MM8_24<=3 or MM8_25<=3 or MM8_96<=3) and 
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_4=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if ((((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or 
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or 
MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1 or MM4_18=1 or MM4_19=1 or MM4_20=1 or 
MM4_21=1 or MM4_22=1 or MM4_23=1 or MM4_24=1 or MM4_25=1 or MM4_96=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or 
MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1 or MM6_18=1 or MM6_19=1 or MM6_20=1 or 
MM6_21=1 or MM6_22=1 or MM6_23=1 or MM6_24=1 or MM6_25=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) ) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or 
MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF (((FF1_1=1 or FF1_2=1 or FF1_3=1 or FF1_4=1) and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FB16_1=1 or FB22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or 
MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or MM8_96<=4) and 
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or FB16_3=1 or FB22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or fb16_4=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Pakistan***.
DATASET ACTIVATE p16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_96=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_96=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_6=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Tanzania***.
DATASET ACTIVATE t16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or
(IFI1_1=1 or 
IFI1_2=1 or 
IFI1_3=1 or 
IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_96=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if (((FF1=1 and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2016 Uganda***.
DATASET ACTIVATE u16.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
(IFI1_1=1 or 
IFI1_2=1 or 
IFI1_3=1 or 
IFI1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1  or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1  or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1  or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1  or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1)))  ACTIVE30_FINANCIAL_ADV=1.
*double check.
compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_20=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_20=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1. 
*double check.
compute REGISTERED_DFS=0.
if (((FF1=1 and FF5=1) and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or 
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) or
(ifi3_1=1 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1)) or
(ifi3_2=1 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1)) or
(ifi3_3=1 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1 or ifi8_4=1)) or
(ifi3_4=1 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1 or ifi9_4=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) and 
(FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or
FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1  or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or 
MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1  or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or 
IFI10_11=1 or IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or 
IFI11_11=1 or IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or 
IFI12_11=1 or IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or 
IFI13_11=1 or IFI13_12=1 or IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

**********************************2015**********************************.
***2015 Bangladesh***.
DATASET ACTIVATE b15.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4
or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or fb16_4=1 or fb22_4=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or fb16_3=1 or fb22_3=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or fb16_4=1 or fb22_4=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or fb16_3=1 or fb22_3=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_20=1 or FF14_25=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_20=1 or MM15_25=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or
MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1)
or (IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI3_2=1 and IFI5_2=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI3_4=1 and IFI5_4=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))  REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4
or MM8_9<=4 or MM8_10<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or fb16_4=1 or fb22_4=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or fb16_2=1 or fb22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or fb16_3=1 or fb22_3=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 India***.
DATASET ACTIVATE i15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1  or MM4_9=1  or MM4_10=1
 or MM4_11=1  or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1  or MM4_9=1 or MM4_10=1
 or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 or FB22_5=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 OR FB16_6=1 or FB22_9=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 or FB22_5=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 OR FB16_6=1 or FB22_9=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_20=1 or FF14_25=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_20=1 or MM15_25=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1)
or ((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or MM6_15=1 or MM6_16=1 or MM6_17=1)
or ((IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 or FB22_5=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 OR FB16_6=1 or FB22_9=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Indonesia***.
DATASET ACTIVATE ido15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 
or MM4_9=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 ) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or 
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or 
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1))  
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_22=1 or FF14_27=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_22=1 or MM15_27=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1) or 
((IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or 
FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or FB16_1=1 or FB22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or 
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or 
MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or 
IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or IFI10_27=1 or FB16_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or 
IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1 or IFI11_27=1 or FB16_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or 
IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or IFI12_27=1 or FB16_5=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or 
IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1 or IFI13_27=1 or FB16_6=1)))  ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Kenya***.
DATASET ACTIVATE k15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or  FF14_13=1 or  FF14_14=1 
or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or MM15_13=1 or MM15_14=1 or MM15_15=1
or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1
or fb16_2=1 or fb22_2=1)) or
((IFI4_1=1 or IFI4_1=2 or IFI4_1=3 or IFI4_1=4) and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) or
((IFI4_2=1 or IFI4_2=2 or IFI4_2=3 or IFI4_2=4) and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) or
((IFI4_3=1 or IFI4_3=2 or IFI4_3=3 or IFI4_3=4) and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) or
((IFI4_4=1 or IFI4_4=2 or IFI4_4=3 or IFI4_4=4) and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF  ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or  FF14_13=1 or  FF14_14=1 
or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or MM15_13=1 or MM15_14=1 or MM15_15=1
or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1
or fb16_2=1 or fb22_2=1) or
((IFI4_1=1 or IFI4_1=2 or IFI4_1=3 or IFI4_1=4) and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) or
((IFI4_2=1 or IFI4_2=2 or IFI4_2=3 or IFI4_2=4) and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) or
((IFI4_3=1 or IFI4_3=2 or IFI4_3=3 or IFI4_3=4) and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) or
((IFI4_4=1 or IFI4_4=2 or IFI4_4=3 or IFI4_4=4) and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1)))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_22=1 or FF14_27=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_22=1 or MM15_27=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1)
or ((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1)
or ((IFI3_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or  FF14_13=1 or  FF14_14=1 
or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or MM15_13=1 or MM15_14=1 or MM15_15=1
or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1
or fb16_2=1 or fb22_2=1) or
((IFI4_1=1 or IFI4_1=2 or IFI4_1=3 or IFI4_1=4) and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) or
((IFI4_2=1 or IFI4_2=2 or IFI4_2=3 or IFI4_2=4) and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) or
((IFI4_3=1 or IFI4_3=2 or IFI4_3=3 or IFI4_3=4) and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) or
((IFI4_4=1 or IFI4_4=2 or IFI4_4=3 or IFI4_4=4) and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1)))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Nigeria***.
DATASET ACTIVATE n15.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or 
MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or 
MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or 
MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF4=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or 
MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1) or
(ifi1_1=1 or ifi1_2=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or fb16_1=1 or fb22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or 
MM15_13=1 or MM15_14=1  or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1  or MM15_25=1 or MM15_26=1 or fb16_2=1 or fb22_2=1)) 
or (ifi4_1<=4 and ifi5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (ifi4_2<=4 and ifi5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or fb16_1=1 or fb22_1=1)) or
((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or 
MM15_13=1 or MM15_14=1  or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1  or MM15_25=1 or MM15_26=1 or fb16_2=1 or fb22_2=1)) 
or (ifi4_1<=3 and ifi5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (ifi4_2<=3 and ifi5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_22=1 or FF14_27=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_22=1 or MM15_27=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1 or MM4_11=1 or MM4_12=1 or MM4_13=1 or MM4_14=1) or
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1))) ) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or 
MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1) or
((IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1))) ) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ( (FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) )  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or fb16_1=1 or fb22_1=1)) or
((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or 
MM15_13=1 or MM15_14=1  or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1  or MM15_25=1 or MM15_26=1 or fb16_2=1 or fb22_2=1)) 
or (ifi4_1<=4 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1 or ifi6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (ifi4_2<=4 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1 or ifi7_4=1) 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1))  ) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Pakistan***.
DATASET ACTIVATE p15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or
(ifi3_1=1 and ifi5_1=1) or
(ifi3_2=1 and ifi5_2=1) or
(ifi3_3=1 and ifi5_3=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 )) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if ((FF1=1 or FF4=1) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or 
(IFI1_1=1 or IFI1_2=1 or IFI1_3=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 OR FB22_1=1) ) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 OR FB22_5=1)) or
(IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)  ) or
(IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1 )  ) or
(IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)))  ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 OR FB22_1=1) ) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 OR FB22_5=1) or
(IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)  ) or
(IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1 )  ) or
(IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1))))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_20=1 or FF14_25=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_20=1 or MM15_25=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1) or 
((IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if (((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1))))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_25=1 or 
FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FB16_1=1 OR FB22_1=1) ) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4 or MM8_9<=4 or MM8_10<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_25=1 or 
MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or FB16_4=1 OR FB22_5=1) or
((IFI4_1=1 or IFI4_1=2 or IFI4_1=3 or IFI4_1=4) and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_25=1 or 
IFI10_12=1 or IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or FB16_2=1 or FB22_2=1)  ) or
((IFI4_2=1 or IFI4_2=2 or IFI4_2=3 or IFI4_2=4) and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_25=1 or 
IFI11_12=1 or IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or FB16_3=1 or FB22_3=1 )  ) or
((IFI4_3=1 or IFI4_3=2 or IFI4_3=3 or IFI4_3=4) and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_25=1 or 
IFI12_12=1 or IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1)  ) 
)) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Tanzania***.
DATASET ACTIVATE t15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if (((FF1=1 or FF4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1) or 
((IFI1_1=1) or 
(IFI1_2=1) or 
(IFI1_3=1) or 
(IFI1_4=1))) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_22=1 or FF14_27=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_22=1 or MM15_27=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1) or 
((IFI1_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1) or 
((IFI3_1=1 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_27=1 or 
FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 
or fb16_1=1 or fb22_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_27=1 or
MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 
or fb16_2=1 or fb22_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1
or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1
or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2015 Uganda***.
DATASET ACTIVATE u15.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF4=1) and FF5=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF5=1) or
(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI3_3=1 and IFI5_3=1 ) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF5=1 and FF9<=4) or
(MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if (((FF1=1 or FF4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1)
or ((IFI1_1=1) or 
(IFI1_2=1) or 
(IFI1_3=1) or 
(IFI1_4=1))) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1
or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 
or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or fb22_1=1 or FB16_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 
or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or fb22_2=1 or FB16_2=1))
or (IFI4_1<=4 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=3 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1
or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 
or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or fb22_1=1 or FB16_1=1)) 
or ((MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 
or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or fb22_2=1 or FB16_2=1))
or (IFI4_1<=3 and IFI5_1=1
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1 or FF14_11=1 or FF14_12=1 or FF14_13=1 or FF14_14=1 or FF14_22=1 or FF14_27=1) or
(MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_22=1 or MM15_27=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF4=1) and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1)
or ((IFI1_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI1_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI1_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI1_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF5=1 and (ff6_1=1 or ff6_2=1 or ff6_3=1 or ff6_4=1)) 
or (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1)
or ((IFI3_1=1  and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) or 
(IFI3_2=1 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) or 
(IFI3_3=1 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) or 
(IFI3_4=1 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1)) 
or (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF5=1 and FF9<=4 and (FF6_1=1 or FF6_2=1 or FF6_3=1 or FF6_4=1) 
and (FF14_3=1 or FF14_4=1 or FF14_5=1 or FF14_6=1 or FF14_7=1 or FF14_8=1 or FF14_9=1 or FF14_10=1
or FF14_13=1 or FF14_14=1 or FF14_15=1 or FF14_16=1 or FF14_17=1 or FF14_18=1 or FF14_19=1 or FF14_20=1 
or FF14_21=1 or FF14_22=1 or FF14_23=1 or FF14_24=1 or FF14_25=1 or FF14_26=1 or FF14_27=1 or fb22_1=1 or FB16_1=1)) 
or ((MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_8<=4) 
and (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 
or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or fb22_2=1 or FB16_2=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1 or IFI6_4=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_27=1 or 
IFI10_13=1 or IFI10_14=1 or IFI10_15=1 or IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or IFI10_21=1 or IFI10_22=1 or IFI10_23=1 or IFI10_24=1 or IFI10_25=1 or IFI10_26=1 or fb16_3=1 or fb22_4=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1 or IFI7_4=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_27=1 or 
IFI11_13=1 or IFI11_14=1 or IFI11_15=1 or IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or IFI11_19=1 or IFI11_20=1 or IFI11_21=1 or IFI11_22=1 or IFI11_23=1 or IFI11_24=1 or IFI11_25=1 or IFI11_26=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1 or IFI8_4=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_27=1 or 
IFI12_13=1 or IFI12_14=1 or IFI12_15=1 or IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or IFI12_21=1 or IFI12_22=1 or IFI12_23=1 or IFI12_24=1 or  IFI12_25=1 or IFI12_26=1 or fb16_4=1 or fb22_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1 or IFI9_4=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_27=1 or 
IFI13_13=1 or IFI13_14=1 or IFI13_15=1 or IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or IFI13_19=1 or IFI13_20=1 or IFI13_21=1 or IFI13_22=1 or IFI13_23=1 or IFI13_24=1 or IFI13_25=1 or IFI13_26=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

**********************************2014**********************************.
***2014 Bangladesh***.
DATASET ACTIVATE b14.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or 
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or 
(IFI4_3<=4 and IFI5_3=1) or 
(IFI4_4<=4 and IFI5_4=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1  and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1  or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or FL10_1=1 or FL13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_30=1 or MM19_31=1
or FL10_3=1 OR FL13_3=1)) or
((ifi4_1<=4 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or 
 (ifi4_2<=4 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
 (ifi4_3<=4 and ifi5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or   
 (ifi4_4<=4 and ifi5_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1)))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1  and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1  or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or FL10_1=1 or FL13_1=1)) or
((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3 or MM14_7<=3) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_30=1 or MM19_31=1
or FL10_3=1 OR FL13_3=1)) or
((ifi4_1<=3 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or 
 (ifi4_2<=3 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
 (ifi4_3<=3 and ifi5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or   
 (ifi4_4<=3 and ifi5_4=1 and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1))))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1) or
((IFI1_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
 (IFI1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
 (IFI1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
 (IFI1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1) or
((IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
 (IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
 (IFI3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
 (IFI3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ( (FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4)
or (IFI4_1<=4 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)) )  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1  and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1  or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or FL10_1=1 or FL13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_30=1 or MM19_31=1
or FL10_3=1 OR FL13_3=1)) or
((ifi4_1<=4 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1) and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or FL10_2=1 or FL13_2=1)) or 
 (ifi4_2<=4 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1) and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)) or
 (ifi4_3<=4 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1) and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1)) or   
 (ifi4_4<=4 and ifi5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1) and (ifi13_3=1 or ifi13_4=1 or ifi13_5=1 or ifi13_6=1 or ifi13_7=1 or ifi13_8=1 or ifi13_9=1 or ifi13_10=1 or ifi13_11=1)))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 India***.
DATASET ACTIVATE i14.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1  or MM4_9=1  or MM4_10=1
 or MM4_11=1  or MM4_12=1 or MM4_13=1 or MM4_14=1 or MM4_15=1 or MM4_16=1 or MM4_17=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_4=1 and ifi5_3=1) ) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 
or MM8_11=1 or MM8_12=1 or MM8_13=1 or MM8_14=1 or MM8_15=1 or MM8_16=1 or MM8_17=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_4=1 and IFI5_3=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 
or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4 or MM14_15<=4 or MM14_16<=4 or MM14_17<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_4<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1 or MM5_9=1  or MM5_10=1
 or MM5_11=1 or MM5_12=1 or MM5_13=1 or MM5_14=1 or MM5_15=1 or MM5_16=1 or MM5_17=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or 
FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or 
FF19_31=1 or fl10_1=1 or fl13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or 
MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4 or MM14_15<=4 or MM14_16<=4 or MM14_17<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or 
MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or fl10_4=1 or fl13_5=1)) or
(ifi4_1<=4 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=4 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1 or fl10_3=1 or fl13_3=1)) or
(ifi4_4<=4 and ifi5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1 or fl10_6=1 or fl13_9=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or fl10_1=1 or fl13_1=1)) or
((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3 or MM14_7<=3 or MM14_8<=3 or MM14_9<=3 or MM14_10<=3 or MM14_11<=3 or MM14_12<=3 or MM14_13<=3 or MM14_14<=3 or MM14_15<=3 or MM14_16<=3 or MM14_17<=3) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1
or fl10_4=1 or fl13_5=1)) or
(ifi4_1<=3 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=3 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1 or fl10_3=1 or fl13_3=1)) or
(ifi4_4<=3 and ifi5_3=1 and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1 or fl10_6=1 or fl13_9=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1 or MM5_9=1 or MM5_10=1 or MM5_11=1 or MM5_12=1 or MM5_13=1 or MM5_14=1 or MM5_15=1 or MM5_16=1 or MM5_17=1) or
(IFI1_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(IFI1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
(ifi1_4=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 
or MM8_11=1 or MM8_12=1 or MM8_13=1 or MM8_14=1 or MM8_15=1 or MM8_16=1 or MM8_17=1) or
(IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or
(ifi3_4=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ( (FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4 or MM14_15<=4 or MM14_16<=4 or MM14_17<=4)
or (IFI4_1<=4 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) 
or (IFI4_4<=4 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or fl10_1=1 or fl13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4 or MM14_15<=4 or MM14_16<=4 or MM14_17<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1
or fl10_4=1 or fl13_5=1)) or
(ifi4_1<=4 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1) and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=4 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1) and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1 or fl10_3=1 or fl13_3=1)) or
(ifi4_4<=4 and ifi5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1) and (ifi12_3=1 or ifi12_4=1 or ifi12_5=1 or ifi12_6=1 or ifi12_7=1 or ifi12_8=1 or ifi12_9=1 or ifi12_10=1 or ifi12_11=1 or fl10_6=1 or fl13_9=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 Indonesia***.
DATASET ACTIVATE ido14.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1 ) or
(IFI1_3=1 and IFI5_3=1 ) or
(IFI1_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI2_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI2_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_11=1 or 
MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or MM19_32=1 
or fl10_5=1 or fl13_4=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) 
or (IFI2_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) 
or (IFI2_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3 or MM14_7<=3)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_11=1 or 
MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or MM19_32=1 
or fl10_5=1 or fl13_4=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) 
or (IFI2_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) 
or (IFI2_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or 
MM19_29=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1)
or ((ifi1_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1)
or ((ifi3_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) 
or (MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)) 
or (IFI2_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1)) 
or (IFI2_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or 
FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_11=1 or 
MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or MM19_32=1
or fl10_5=1 or fl13_4=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1 or fl10_3=1 or fl13_3=1)) 
or (IFI2_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1 or fl10_4=1)) 
or (IFI2_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 Kenya***.
DATASET ACTIVATE k14.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 
or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 
or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1)
or ((ifi1_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1)
or ((ifi3_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) 
or (MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 
or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 Nigeria***.
DATASET ACTIVATE n14.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1 or MM5_9=1 or MM5_10=1 or MM5_11=1 or MM5_12=1 or MM5_13=1 or MM5_14=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 or MM8_11=1 or MM8_12=1 or MM8_13=1 or MM8_14=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_2<=4 and IFI5_2=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1 or MM5_9=1 or MM5_10=1 or MM5_11=1 or MM5_12=1 or MM5_13=1 or MM5_14=1) or
(ifi1_1=1 or ifi1_2=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1  or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 
or FL10_3=1 or FL13_3=1)) or
(ifi4_1<=4 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=4 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) or
((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3 or MM14_7<=3 or MM14_8<=3 or MM14_9<=3 or MM14_10<=3 or MM14_11<=3 or MM14_12<=3 or MM14_13<=3 or MM14_14<=3) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1  or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 
or FL10_3=1 or FL13_3=1)) or
(ifi4_1<=3 and ifi5_1=1 and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=3 and ifi5_2=1 and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1 or MM5_9=1 or MM5_10=1 or MM5_11=1 or MM5_12=1 or MM5_13=1 or MM5_14=1) or
((IFI1_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(IFI1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 or MM8_11=1 or MM8_12=1 or MM8_13=1 or MM8_14=1) or
((IFI3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(IFI3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4)
or (IFI4_1<=4 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) or
((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 or MM14_9<=4 or MM14_10<=4 or MM14_11<=4 or MM14_12<=4 or MM14_13<=4 or MM14_14<=4) 
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1  or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 
or FL10_3=1 or FL13_3=1)) or
(ifi4_1<=4 and ifi5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1) and (ifi10_3=1 or ifi10_4=1 or ifi10_5=1 or ifi10_6=1 or ifi10_7=1 or ifi10_8=1 or ifi10_9=1 or ifi10_10=1 or ifi10_11=1 or fl10_2=1 or fl13_2=1)) or 
(ifi4_2<=4 and ifi5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1) and (ifi11_3=1 or ifi11_4=1 or ifi11_5=1 or ifi11_6=1 or ifi11_7=1 or ifi11_8=1 or ifi11_9=1 or ifi11_10=1 or ifi11_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 Pakistan***.
DATASET ACTIVATE p14.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF ((FF1=1 or FF6=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1) or
(ifi1_1=1 or ifi1_2=1 or ifi1_3=1 or ifi1_4=1)) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1
or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3 or MM14_7<=3 or MM14_8<=3)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1
or fl10_3=1 or fl13_3=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1 or MM5_7=1 or MM5_8=1)
or ((ifi1_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1)
or ((ifi3_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) 
or (MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4 )
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1
or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4 or MM14_7<=4 or MM14_8<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1
or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***Tanzania***.
DATASET ACTIVATE t14.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if ((FF1=1 or FF6=1) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1)
or ((ifi1_1=1) or 
(ifi1_2=1) or 
(ifi1_3=1) or 
(ifi1_4=1))) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 
or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=3 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 
or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1 
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=3 and IFI5_3=1 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=3 and IFI5_4=1 
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1)
or ((ifi1_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if ((FF1=1 and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1)
or ((ifi3_1=1  and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi3_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi3_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi3_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) 
or (MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)))  ACTIVE_DFS=1.

Compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 or FF19_26=1 or FF19_27=1 or FF19_28=1
or FF19_29=1 or FF19_30=1 or FF19_31=1 or fl10_1=1 or fl13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 
or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or fl10_3=1 or fl13_3=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or fl10_2=1 or fl13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2014 Uganda***.
DATASET ACTIVATE u14.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

compute ACCESS_FINANCIAL=0.
IF (((FF1=1 or FF6=1) and FF9=1) or
(MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1) or
(ifi1_1=1 and ifi5_1=1) or
(ifi1_2=1 and ifi5_2=1) or
(ifi1_3=1 and ifi5_3=1) or
(ifi1_4=1 and ifi5_4=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF ((FF1=1 and FF9=1) or
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1) or
(IFI3_1=1 and IFI5_1=1) or
(IFI3_2=1 and IFI5_2=1) or
(IFI3_3=1 and IFI5_3=1) or
(IFI3_4=1 and IFI5_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FF1=1 and FF9=1 and FF14<=4) or
(MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4) or
(IFI4_1<=4 and IFI5_1=1) or
(IFI4_4<=4 and IFI5_4=1) or
(IFI4_2<=4 and IFI5_2=1) or
(IFI4_3<=4 and IFI5_3=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
if (((FF1=1 or FF6=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1)
or ((ifi1_1=1) or 
(ifi1_2=1) or 
(ifi1_3=1) or 
(ifi1_4=1))) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 
or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 
or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or FL10_3=1 or FL13_3=1))
or (IFI4_1<=4 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1)))  ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0. 
IF  ((FF1=1 and FF9=1 and FF14<=3
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 
or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) 
or ((MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3 or MM14_6<=3)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 
or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or FL10_3=1 or FL13_3=1))
or (IFI4_1<=3 and IFI5_1=1 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) 
or (IFI4_2<=3 and IFI5_2=1
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=3 and IFI5_3=1
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=3 and IFI5_4=1
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or 
FF19_11=1 or FF19_12=1 or FF19_13=1 or FF19_14=1 or FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or 
FF19_28=1 or FF19_32=1) or
(MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or 
MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or 
MM19_28=1 or MM19_32=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

compute ACCESS_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1)
or ((ifi1_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) ACCESS_DFS=1.

compute REGISTERED_DFS=0.
if (((FF1=1 or FF6=1) and FF9=1 and (ff10_1=1 or ff10_2=1 or ff10_3=1)) 
or (MM5_1=1 or MM5_2=1 or MM5_3=1 or MM5_4=1 or MM5_5=1 or MM5_6=1)
or ((ifi1_1=1 and IFI5_1=1 and (ifi6_1=1 or ifi6_2=1 or ifi6_3=1)) or 
(ifi1_2=1 and IFI5_2=1 and (ifi7_1=1 or ifi7_2=1 or ifi7_3=1)) or 
(ifi1_3=1 and IFI5_3=1 and (ifi8_1=1 or ifi8_2=1 or ifi8_3=1)) or 
(ifi1_4=1 and IFI5_4=1 and (ifi9_1=1 or ifi9_2=1 or ifi9_3=1)))) REGISTERED_DFS=1.

compute ACTIVE_DFS=0.
if ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1)) 
or (MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)))  ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF ((FF1=1 and FF9=1 and FF14<=4 and (FF10_1=1 or FF10_2=1 or FF10_3=1) 
and (FF19_3=1 or FF19_4=1 or FF19_5=1 or FF19_6=1 or FF19_7=1 or FF19_8=1 or FF19_9=1 or FF19_10=1 or FF19_32=1 or 
FF19_15=1 or FF19_16=1 or FF19_17=1 or FF19_18=1 or FF19_19=1 or FF19_20=1 or FF19_21=1 or FF19_22=1 or FF19_23=1 or FF19_24=1 or FF19_25=1 
or FF19_26=1 or FF19_27=1 or FF19_28=1 or FF19_29=1 or FF19_30=1 or FF19_31=1 or FL10_1=1 or FL13_1=1)) 
or ((MM14_1<=4 or MM14_2<=4 or MM14_3<=4 or MM14_4<=4 or MM14_5<=4 or MM14_6<=4)
and (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1 or MM19_32=1 or 
MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1 or MM19_23=1 or MM19_24=1 or MM19_25=1 
or MM19_26=1 or MM19_27=1 or MM19_28=1 or MM19_29=1 or MM19_30=1 or MM19_31=1 or FL10_3=1 or FL13_3=1))
or (IFI4_1<=4 and IFI5_1=1 and (IFI6_1=1 or IFI6_2=1 or IFI6_3=1) 
and (IFI10_3=1 or IFI10_4=1 or IFI10_5=1 or IFI10_6=1 or IFI10_7=1 or IFI10_8=1 or IFI10_9=1 or IFI10_10=1 or IFI10_11=1 or FL10_2=1 or FL13_2=1)) 
or (IFI4_2<=4 and IFI5_2=1 and (IFI7_1=1 or IFI7_2=1 or IFI7_3=1)
and (IFI11_3=1 or IFI11_4=1 or IFI11_5=1 or IFI11_6=1 or IFI11_7=1 or IFI11_8=1 or IFI11_9=1 or IFI11_10=1 or IFI11_11=1)) 
or (IFI4_3<=4 and IFI5_3=1 and (IFI8_1=1 or IFI8_2=1 or IFI8_3=1) 
and (IFI12_3=1 or IFI12_4=1 or IFI12_5=1 or IFI12_6=1 or IFI12_7=1 or IFI12_8=1 or IFI12_9=1 or IFI12_10=1 or IFI12_11=1)) 
or (IFI4_4<=4 and IFI5_4=1 and (IFI9_1=1 or IFI9_2=1 or IFI9_3=1)
and (IFI13_3=1 or IFI13_4=1 or IFI13_5=1 or IFI13_6=1 or IFI13_7=1 or IFI13_8=1 or IFI13_9=1 or IFI13_10=1 or IFI13_11=1))) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

**********************************2013**********************************.
*access_dfs registered_dfs active_dfs active_dfs_adv are not available in 2013.
*ACCESS_FINANCIAL_ALL is equal to access_financial and  in 2013 data.

***2013 Bangladesh***.
DATASET ACTIVATE b13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6_1=1 or MM6_2=1 or  MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 )) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
if (((FFI1=1 and FFI9<=4) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4) and (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or 
MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or
SI1_12=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=3) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3 or MM9_7<=3) and (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or 
MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or
SI1_12=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or FFI16H=1 or FFI16I=1 or FFI16J=1 or FFI16K=1 or FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16X=1) or
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16X=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 India***.
DATASET ACTIVATE i13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6_1=1 or MM6_2=1 or  MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or  MM6_7=1 or MM6_8=1 or MM6_9=1 or MM6_10=1 or MM6_11=1 or MM6_12=1 or MM6_13=1 or MM6_14=1 or  MM6_15=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 or MM8_11=1 or MM8_12=1  or MM8_13=1  or MM8_14=1  or MM8_15=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4 or MM9_8<=4 or MM9_9<=4 or MM9_10<=4 or MM9_11<=4 or MM9_12<=4 or MM9_13<=4 or MM9_14<=4 or MM9_15<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (FFI16_3=1 or FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or 
FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_16=1 or FFI16_17=1 or FFI16_18=1 or FFI16_19=1 or FFI16_20=1 or 
FFI16_21=1 or FFI16_22=1 or FFI16_23=1 or FFI16_24=1 or FFI16_25=1 or FB7_1_1=1 or FB7_3_1=1 or FB7_4_1=1))
or ((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4 or MM9_8<=4 or MM9_9<=4 or MM9_10<=4 or MM9_11<=4 or MM9_12<=4 or MM9_13<=4 or MM9_14<=4 or MM9_15<=4)
 and (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or 
MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_16=1 or MM16_17=1 or MM16_18=1 or MM16_19=1 or MM16_20=1 or 
MM16_21=1 or MM16_22=1 or MM16_23=1 or MM16_24=1 or MM16_25=1 or FB7_1_6=1 or FB7_3_6=1 or FB7_4_6=1)) ) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF  (((FFI1=1 and FFI9<=3) and (FFI16_3=1 or FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or 
FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_16=1 or FFI16_17=1 or FFI16_18=1 or FFI16_19=1 or FFI16_20=1 or 
FFI16_21=1 or FFI16_22=1 or FFI16_23=1 or FFI16_24=1 or FFI16_25=1 or FB7_1_1=1 or FB7_3_1=1 or FB7_4_1=1))
or ((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3 or MM9_7<=3 or MM9_8<=3 or MM9_9<=3 or MM9_10<=3 or MM9_11<=3 or MM9_12<=3 or MM9_13<=3 or MM9_14<=3 or MM9_15<=3)
 and (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or 
MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_16=1 or MM16_17=1 or MM16_18=1 or MM16_19=1 or MM16_20=1 or 
MM16_21=1 or MM16_22=1 or MM16_23=1 or MM16_24=1 or MM16_25=1 or FB7_1_6=1 or FB7_3_6=1 or FB7_4_6=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or FFI16_8=1 or FFI16_9=1 or FFI16_10=1 or FFI16_11=1 or FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_24=1 or FFI16_25=1) or
(MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or MM16_8=1 or MM16_9=1 or MM16_10=1 or MM16_11=1 or MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_24=1 or MM16_25=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 Kenya***.
DATASET ACTIVATE k13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6A=1 or MM6B=1 or  MM6C=1 or MM6D=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or 
FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1)) or 
((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4) and (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or 
MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or 
MM16S=1 or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1)) ) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=3) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or 
FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1)) or 
((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3) and (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or 
MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or 
MM16S=1 or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1)) )  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or FFI16H=1 or FFI16I=1 or FFI16J=1 or FFI16K=1 or FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16X=1) or
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16X=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 Nigeria***.
DATASET ACTIVATE n13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6A=1 or MM6B=1 or  MM6C=1 or MM6D=1 or MM6E=1 or MM6F=1 or MM6G=1 or MM6H=1 or MM6I=1 or MM6J=1 or MM6K=1 or MM6L=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1 or MM8_8=1 or MM8_9=1 or MM8_10=1 or MM8_11=1 or MM8_12=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4 or MM9_8<=4 or MM9_9<=4 or MM9_10<=4 or MM9_11<=4 or MM9_12<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4 or MM9_8<=4 or MM9_9<=4 or MM9_10<=4 or MM9_11<=4 or MM9_12<=4) and 
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or MM16T=1 or 
MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=3) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3 or MM9_7<=3 or MM9_8<=3 or MM9_9<=3 or MM9_10<=3 or MM9_11<=3 or MM9_12<=3) and 
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or MM16T=1 or 
MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or FFI16H=1 or FFI16I=1 or FFI16J=1 or FFI16K=1 or FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16X=1) or
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16X=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 Pakistan***.
DATASET ACTIVATE p13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6A=1 or MM6B=1 or  MM6C=1 or MM6D=1 or MM6E=1 or MM6F=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4) and 
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or 
MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1)))  ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=3) and (FFI16C=1 or FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or 
FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16P=1 or FFI16Q=1 or FFI16R=1 or FFI16S=1 or FFI16T=1 or FFI16U=1 or FFI16V=1 or FFI16W=1 or FFI16X=1))
or ((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3) and 
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 or 
MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1)))  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or FFI16H=1 or FFI16I=1 or FFI16J=1 or FFI16K=1 or FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16X=1) or
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16X=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 Tanzania***.
DATASET ACTIVATE t13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6A_1=1 or MM6A_2=1 or  MM6A_3=1 or MM6A_4=1 or MM6A_5=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8A_1=1 or MM8A_2=1 or MM8A_3=1 or MM8A_4=1 or MM8A_5=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (FFI16_3=1 or FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or 
FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_16=1 or FFI16_17=1 or FFI16_18=1 or FFI16_19=1 or FFI16_20=1 or FFI16_21=1 or FFI16_22=1 or FFI16_23=1 or FFI16_24=1))
or ((MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4) and (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or 
mm16_12=1 or mm16_13=1 or mm16_14=1 or mm16_15=1 or mm16_16=1 or mm16_17=1 or mm16_18=1 or mm16_19=1 or mm16_20=1 or mm16_21=1 or mm16_22=1 or mm16_23=1 or mm16_24=1)) ) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF  (((FFI1=1 and FFI9<=3) and (FFI16_3=1 or FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or 
FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_16=1 or FFI16_17=1 or FFI16_18=1 or FFI16_19=1 or FFI16_20=1 or FFI16_21=1 or FFI16_22=1 or FFI16_23=1 or FFI16_24=1))
or ((MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3) and (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or 
mm16_12=1 or mm16_13=1 or mm16_14=1 or mm16_15=1 or mm16_16=1 or mm16_17=1 or mm16_18=1 or mm16_19=1 or mm16_20=1 or mm16_21=1 or mm16_22=1 or mm16_23=1 or mm16_24=1)) )  ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16_4=1 or FFI16_5=1 or FFI16_6=1 or FFI16_7=1 or FFI16_8=1 or FFI16_9=1 or FFI16_10=1 or FFI16_11=1 or FFI16_12=1 or FFI16_13=1 or FFI16_14=1 or FFI16_15=1 or FFI16_24=1) or
(MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 or MM16_8=1 or MM16_9=1 or MM16_10=1 or MM16_11=1 or MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_24=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.

***2013 Uganda***.
DATASET ACTIVATE u13.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

compute ACCESS_FINANCIAL=0.
IF ((FFI1=1 or FFI3=1) or 
(MM6A=1 or MM6B=1 or  MM6C=1 or MM6D=1 or MM6E=1 or  MM6F=1 or MM6G=1)) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FFI1=1 or 
(MM8_1=1 or MM8_2=1 or MM8_3=1 or MM8_4=1 or MM8_5=1 or MM8_6=1 or MM8_7=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if ((FFI1=1 and FFI9<=4) or
(MM9_1<=4 or MM9_2<=4 or MM9_3<=4 or MM9_4<=4 or MM9_5<=4 or MM9_6<=4 or MM9_7<=4)) ACTIVE_FINANCIAL=1.

numeric ACCESS_FINANCIAL_ALL.

compute ACTIVE_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=4) and (ffi16c=1 or ffi16d=1 or ffi16e=1  or ffi16f=1 or ffi16g=1 or ffi16l=1 or ffi16m=1 or ffi16n=1 or 
ffi16o=1 or ffi16p=1 or ffi16q=1 or ffi16r=1 or ffi16s=1 or ffi16t=1 or ffi16u=1 or ffi16v=1 or ffi16w=1 or ffi16x=1))
or ((mm9_1<=4 or mm9_2<=4 or mm9_3<=4 or mm9_4<=4 or mm9_5<=4 or mm9_6<=4 or mm9_7<=4) and 
(mm16d=1 or mm16e=1  or mm16f=1 or mm16g=1 or mm16l=1 or mm16m=1 or mm16n=1 or 
mm16o=1 or mm16p=1 or mm16q=1 or mm16r=1 or mm16s=1 or mm16t=1 or mm16u=1 or mm16v=1 or mm16w=1 or mm16x=1))) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF (((FFI1=1 and FFI9<=3) and (ffi16c=1 or ffi16d=1 or ffi16e=1  or ffi16f=1 or ffi16g=1 or ffi16l=1 or ffi16m=1 or ffi16n=1 or 
ffi16o=1 or ffi16p=1 or ffi16q=1 or ffi16r=1 or ffi16s=1 or ffi16t=1 or ffi16u=1 or ffi16v=1 or ffi16w=1 or ffi16x=1))
or ((mm9_1<=3 or mm9_2<=3 or mm9_3<=3 or mm9_4<=3 or mm9_5<=3 or mm9_6<=3 or mm9_7<=3) and 
(mm16d=1 or mm16e=1  or mm16f=1 or mm16g=1 or mm16l=1 or mm16m=1 or mm16n=1 or 
mm16o=1 or mm16p=1 or mm16q=1 or mm16r=1 or mm16s=1 or mm16t=1 or mm16u=1 or mm16v=1 or mm16w=1 or mm16x=1))) ACTIVE30_FINANCIAL_ADV=1.

compute ACCESS_DFS_PAYMENT_TRANSFER=0.
if ((FFI16D=1 or FFI16E=1 or FFI16F=1 or FFI16G=1 or FFI16H=1 or FFI16I=1 or FFI16J=1 or FFI16K=1 or FFI16L=1 or FFI16M=1 or FFI16N=1 or FFI16O=1 or FFI16X=1) or
(MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1 or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16X=1)) ACCESS_DFS_PAYMENT_TRANSFER=1. 

numeric ACCESS_DFS REGISTERED_DFS ACTIVE_DFS ACTIVE_DFS_ADV.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.