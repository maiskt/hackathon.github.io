* Encoding: windows-1252.
******Bangladesh 2018 datathon******.
***reorder variables***.
add files file *
/keep Year Serial Country Latitude Longitude Weight UR Cluster ppi_score ppi_prob ppi_cutoff Poverty 
access_phone	own_phone	FI	active_financial	access_financial_all	access_financial	access_dfs	active_dfs	active_dfs_adv	access_mm	active_mm
age
age_group
Literacy
Numeracy
edu
financial_stage
access_bank_full
registered_bank_full
active_bank_full
aware_mm_provider
registered_mm
nonregistered_mm
access_nbfi
registered_nbfi
active_nbfi
access_mfi
registered_mfi
active_mfi
access_coop
registered_coop
active_coop
access_post
registered_post
active_post
access_sacco
registered_sacco
active_sacco
access_bpr
registered_bpr
active_bpr
access_pawnshop
registered_pawnshop
active_pawnshop
access_payment
registered_payment
active_payment
access_group
registered_group
active_group
age_small
young_old
all.
execute.

add files file *
/keep Year to young_old dg2 all.

***derive variables***.
***demo***.
compute Year=2018.
formats Year (f4.0).

string Country (a12).
compute country="Bangladesh".

rename variables AA6="Cluster".

***poverty***.

***key indicators***.
compute access_phone=0.
IF MT2=1 OR MT7=1 access_phone=1.
value labels access_phone 1"Yes" 0"No".

compute own_phone=0.
if MT2=1 own_phone=1.
value labels own_phone 1"Yes" 0"No".

compute FI=0.
IF ((FN1_2=1 or FN1_3=1) or
      FN2_2=1 or
     (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
     (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
     (FN5_1=1 and FN5_4=1) or
     (FN6_1=1 and FN6_4=1) or
      FN7_2=1) FI=1.
value labels FI 1 "Financial included" 0 "Financial excluded".

compute active_financial=0.
if (FN1_6<=4 or
   (FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) or
   (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
   (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or 
   (FN5_1=1 and FN5_4=1 and FN5_3<=4) or
   (FN6_1=1 and FN6_4=1 and FN6_3<=4) or
    FN7_3<=4) active_financial=1.
value labels  active_financial 1"Yes" 0"No".

compute access_financial_all=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN2_1=1 or
     FN3_1=1 or
     FN4_1=1 or
    (FN5_1=1 and FN5_4=1) or
    (FN6_1=1 and FN6_4=1) or
     FN7_1=1) access_financial_all=1.
Value labels access_financial_all 1 "Yes" 0 "No".

compute access_financial=0.
IF (FN1_1=1 or FN1_2=1 or FN1_3=1 or
     FN2_1=1 or
    (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) or
    (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) or
    (FN5_1=1 and FN5_4=1) or
    (FN6_1=1 and FN6_4=1) or
     FN7_1=1) access_financial=1.
Value labels access_financial 1 "Yes" 0 "No".

compute access_dfs=0.
if (FN1_1=1 or FN1_2=1 or FN1_3=1 or
    FN2_1=1 or
   (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
   (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or
    FN7_1=1) access_dfs=1. 
value labels access_dfs 0"No"1"Yes".

compute active_dfs=0.
if (FN1_6<=4 or
   (FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) or
   (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
   (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or 
    FN7_3<=4) active_dfs=1.
value labels active_dfs 0"No"1"Yes".

compute active_dfs_adv=0.
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
     (AD2_9=1 or AD3_9=1 or AD4_9=1 or AD5_9=1 or AD6_9=1 or AD7_9=1 or AD8_9=1 or AD9_9=1 or AD10_25=1 or AD11_13=1))) active_dfs_adv=1.
value labels active_dfs_adv 0"No" 1"Yes".

compute access_mm=0.
if FN2_1=1 access_mm=1.
value labels access_mm 1"Yes" 0"No".

compute active_mm=0.
if FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4
 active_mm=1.
value labels  active_mm 1"Yes" 0"No".

***main derived variables***.
numeric access_sacco
registered_sacco
active_sacco
access_bpr
registered_bpr
active_bpr
access_pawnshop
registered_pawnshop
active_pawnshop
access_payment
registered_payment
active_payment.

recode age_group(1=1)(2,3=2)(4,5=3) into age_small.

