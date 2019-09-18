* Encoding: UTF-8.
*Section 1.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

*2018---------------------------------------------------------------------***.
DATASET ACTIVATE bng18.

compute AWARE_MM = 0.
if MM0 = 1 AWARE_MM = 1.

rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if AWARE_MM_PROVIDER = 1 and ACCESS_MM = 0 AWARE_NONUSER_MM = 1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (FN2_3_1<=3 or FN2_3_2<=3 or FN2_3_3<=3 or FN2_3_4<=3 or FN2_3_5<=3 or FN2_3_6<=3 or FN2_3_7<=3 or FN2_3_8<=3 or FN2_3_9<=3 or FN2_3_10<=3) ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

rename variables nonregistered_mm = OTC_MM.
*copied from derived variable syntax.
compute MM_BASIC = 0.
if AD1_4 = 1 MM_BASIC = 1.

compute MM_ADV = 0.
if (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1) MM_ADV = 1.

compute REG_MM_BASIC = 0.
if AD1_4 = 1 and FN2_2 = 1 REG_MM_BASIC = 1.

compute REG_MM_ADV = 0.
if MM_ADV = 1 and FN2_2 = 1 REG_MM_ADV = 1.

compute ACTIVE_MM_BASIC=0.
if active_mm = 1 and MM_BASIC = 1 ACTIVE_MM_BASIC=1.

compute ACTIVE_MM_ADV=0.
if (FN2_3_1<=4 or FN2_3_2<=4 or FN2_3_3<=4 or FN2_3_4<=4 or FN2_3_5<=4 or FN2_3_6<=4 or FN2_3_7<=4 or FN2_3_8<=4 or FN2_3_9<=4 or FN2_3_10<=4) and
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1) ACTIVE_MM_ADV=1.

compute ACTIVE30_MM_ADV=0.
if (FN2_3_1<=3 or FN2_3_2<=3 or FN2_3_3<=3 or FN2_3_4<=3 or FN2_3_5<=3 or FN2_3_6<=3 or FN2_3_7<=3 or FN2_3_8<=3 or FN2_3_9<=3 or FN2_3_10<=3) and
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_20=1 or AD11_6=1) ACTIVE30_MM_ADV=1.

numeric LENGTH_MM.

compute MM_STAGE = 0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ind18.

compute AWARE_MM = 0.
if MM0 = 1 AWARE_MM = 1.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if AWARE_MM_PROVIDER = 1 and ACCESS_MM = 0 AWARE_NONUSER_MM = 1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (FN4_3_1<=3 or  FN4_3_2<=3 or  FN4_3_3<=3) ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

rename variables nonregistered_mm = OTC_MM.
*copied from derived variable syntax.
compute MM_BASIC = 0.
if AD1_4 = 1 MM_BASIC = 1.

compute MM_ADV = 0.
if (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1) MM_ADV = 1.

compute REG_MM_BASIC = 0.
if AD1_4 = 1 and FN2_2 = 1 REG_MM_BASIC = 1.

compute REG_MM_ADV = 0.
if MM_ADV = 1 and FN2_2 = 1 REG_MM_ADV = 1.

compute ACTIVE_MM_BASIC=0.
if ACTIVE_MM = 1 and MM_BASIC = 1 ACTIVE_MM_BASIC=1.

compute ACTIVE_MM_ADV=0.
if (FN4_3_1<=4 or  FN4_3_2<=4 or  FN4_3_3<=4) and
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1) ACTIVE_MM_ADV=1.

compute ACTIVE30_MM_ADV=0.
if (FN4_3_1<=3 or  FN4_3_2<=3 or  FN4_3_3<=3) and
   (AD2_4=1 or AD3_4=1 or AD4_4=1 or AD5_4=1 or AD6_4=1 or AD7_4=1 or AD8_4=1 or AD9_4=1 or AD10_22=1 or AD11_11=1) ACTIVE30_MM_ADV=1.

numeric LENGTH_MM.

compute MM_STAGE = 0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

*2017---------------------------------------------------------------------***.
DATASET ACTIVATE bng17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if AWARE_MM_PROVIDER = 1 and ACCESS_MM = 0 AWARE_NONUSER_MM = 1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.  
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM =0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_96<=3) 
ACTIVE30_MM=1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM =0.
if ACCESS_MM = 1 and REGISTERED_MM=0 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) 
MM_BASIC=1.

compute MM_ADV = 0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or 
MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1) 
MM_ADV=1.

compute REG_MM_BASIC = 0.
IF REGISTERED_MM = 1 and MM_BASIC = 1 REG_MM_BASIC = 1.

compute REG_MM_ADV =0.
if REGISTERED_MM = 1 and MM_ADV = 1 REG_MM_ADV = 1.

compute ACTIVE_MM_BASIC=0.
if (mm15_1=1 or mm15_2=1 or MM15_6=1
) and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_96<=4)
 ACTIVE_MM_BASIC=1.

compute ACTIVE_MM_ADV=0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1)
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_96<=4)
) ACTIVE_MM_ADV=1.

compute ACTIVE30_MM_ADV=0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1)
and (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_96<=3)
) ACTIVE30_MM_ADV=1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

compute MM_STAGE=0.
if access_mm=1 MM_STAGE=1.
if (mm_stage=1 and registered_mm=1) MM_STAGE=2.
if (mm_stage=2 and active_mm=1) MM_STAGE=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) MM_STAGE=4.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .


DATASET ACTIVATE ind17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

rename variables access_mm = ACCESS_MM.

compute AWARE_NONUSER_MM = 0.
if AWARE_MM_PROVIDER = 1 and ACCESS_MM = 0 AWARE_NONUSER_MM = 1.

rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3 or 
mm8_11<=3 or mm8_12<=3 or mm8_13<=3 or mm8_14<=3 or mm8_15<=3 or mm8_16<=3 or mm8_17<=3 or mm8_96<=3)
 ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

rename variables nonregistered_mm = OTC_MM.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or 
MM15_13=1 or FB22_2=1 or FB16A_4=1) MM_ADV = 1.

compute REG_MM_BASIC = 0.
if MM_BASIC = 1 and REGISTERED_MM = 1 REG_MM_BASIC = 1.

compute REG_MM_ADV = 0.
if MM_ADV = 1 and REGISTERED_MM = 1 REG_MM_ADV = 1.

compute ACTIVE_MM_BASIC = 0.
if MM_BASIC = 1
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_10<=4 or 
mm8_11<=4 or mm8_12<=4 or mm8_13<=4 or mm8_14<=4 or mm8_15<=4 or mm8_16<=4 or mm8_17<=4 or mm8_96<=4)
 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or 
mm15_11=1 or mm15_12=1 or mm15_13=1 or FB22_2=1 or FB16A_4=1) 
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_10<=4 or 
mm8_11<=4 or mm8_12<=4 or mm8_13<=4 or mm8_14<=4 or mm8_15<=4 or mm8_16<=4 or mm8_17<=4 or mm8_96<=4)
) ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or 
mm15_11=1 or mm15_12=1 or mm15_13=1 or FB22_2=1 or FB16A_4=1) 
and (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3 or 
mm8_11<=3 or mm8_12<=3 or mm8_13<=3 or mm8_14<=3 or mm8_15<=3 or mm8_16<=3 or mm8_17<=3 or mm8_96<=3)
) ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

compute MM_STAGE = 0.
if access_mm=1 MM_STAGE=1.
if (mm_stage=1 and registered_mm=1) MM_STAGE=2.
if (mm_stage=2 and active_mm=1) MM_STAGE=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) MM_STAGE=4.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ken17.
numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if AWARE_MM_PROVIDER = 1 and ACCESS_MM = 0 AWARE_NONUSER_MM = 1.
rename variables access_mm = ACCESS_MM.
RENAME VARIABLES registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3) ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

rename variables nonregistered_mm = OTC_MM.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or 
MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1) MM_ADV=1.

compute REG_MM_BASIC = 0.
if MM_BASIC = 1 and REGISTERED_MM = 1 REG_MM_BASIC = 1.

compute REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

compute ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_96<=4)
ACTIVE_MM_BASIC = 1.

COMPUTE ACTIVE_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1) 
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_96<=4)
) ACTIVE_MM_ADV = 1.

COMPUTE ACTIVE30_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1) 
and (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_96<=3)
) ACTIVE30_MM_ADV=1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE = 0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV =1) mm_stage=4.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE nga17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
rename variables access_mm = ACCESS_MM.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) AWARE_NONUSER_MM=1.

rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or 
MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or 
MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or
MM8_96<=4) ACTIVE_MM = 1.

COMPUTE ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or 
MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or 
MM8_18<=3 or MM8_19<=3 or MM8_20<=3 or MM8_21<=3 or MM8_22<=3 or MM8_23<=3 or MM8_24<=3 or MM8_25<=3 or
MM8_96<=3) ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or  MM15_9=1 or MM15_10=1 or  
MM15_11=1 or MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1) MM_ADV =1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or 
mm15_10=1 or mm15_11=1 or mm15_12=1 or mm15_13=1 or FB22_2=1 or FB16A_2=1 ) 
and (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or 
MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4 or MM8_15<=4 or MM8_16<=4 or MM8_17<=4 or 
MM8_18<=4 or MM8_19<=4 or MM8_20<=4 or MM8_21<=4 or MM8_22<=4 or MM8_23<=4 or MM8_24<=4 or MM8_25<=4 or
MM8_96<=4)) ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or 
mm15_10=1 or mm15_11=1 or mm15_12=1 or mm15_13=1 or FB22_2=1 or FB16A_2=1 ) 
and (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or 
MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or 
MM8_18<=3 or MM8_19<=3 or MM8_20<=3 or MM8_21<=3 or MM8_22<=3 or MM8_23<=3 or MM8_24<=3 or MM8_25<=3 or
MM8_96<=3)) ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

compute MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV =1) mm_stage=4.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE pak17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) AWARE_NONUSER_MM =1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_10<=4 or mm8_11<=4 or mm8_12<=4 or mm8_96<=4)
 ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC=0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) MM_BASIC=1.

compute MM_ADV=0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 
or MM15_12=1 or MM15_13=1 or FB22_2=1 or FB16A_2=1) MM_ADV=1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

COMPUTE ACTIVE_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1  or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1) 
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_10<=4 or mm8_11<=4 or mm8_12<=4 or mm8_96<=4)
) ACTIVE_MM_ADV = 1.

COMPUTE ACTIVE30_MM_ADV = 0.
if ((mm15_3=1 or mm15_4=1 or mm15_5=1 or mm15_7=1 or mm15_8=1 or mm15_9=1 or mm15_10=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or FB22_2=1 or FB16A_2=1) 
and (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3 or mm8_11<=3 or mm8_12<=3 or mm8_96<=3)
) ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE tza17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

COMPUTE ACTIVE30_MM = 0.
IF (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_3=1  or  MM15_4=1 or MM15_5=1  or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or fb16a_2=1 or fb22_2=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

COMPUTE ACTIVE_MM_ADV = 0.
if ((MM15_3=1 or MM15_4=1 or MM15_5=1  or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or 
MM15_13=1 or fb16a_2=1 or fb22_2=1 ) 
and (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_96<=4)
) ACTIVE_MM_ADV=1.

COMPUTE ACTIVE30_MM_ADV = 0.
if ((MM15_3=1 or MM15_4=1 or MM15_5=1  or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or 
MM15_13=1 or fb16a_2=1 or fb22_2=1 ) 
and (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_96<=3)
) ACTIVE30_MM_ADV=1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.


save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE uga17.

numeric AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

COMPUTE ACTIVE30_MM = 0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3 
or mm8_96<=3) ACTIVE30_MM = 1.

rename variables lapsed_registered_mm = INACTIVE_MM.
COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC=0.
if (MM15_1=1 or MM15_2=1 or MM15_6=1) 
MM_BASIC=1.

compute MM_ADV=0.
IF (MM15_3=1 or MM15_4=1 or MM15_5=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1 or MM15_11=1 or MM15_12=1 or MM15_13=1
or FB22_2=1 or FB16A_2=1) 
MM_ADV=1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if MM_ADV = 1 and ACTIVE30_MM = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 2 LENGTH_MM=1.
 * if MM9 = 3 LENGTH_MM=2.
 * if MM9 ge 4 and MM9 le 6 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2=1)(3=2)(4,5,6=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE = 0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage = 2.
if (mm_stage=2 and active_mm=1) mm_stage = 3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage = 4.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

*2016---------------------------------------------------------------------***.
DATASET ACTIVATE bng16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

compute ACCESS_MM = 0.
IF (MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_96=1) ACCESS_MM=1.

compute REGISTERED_MM = 0.
if (MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_96=1) 
REGISTERED_MM =1.

compute ACTIVE_MM = 0.
if (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or MM8_96<=4) 
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_23=1 or MM15_9=1 or MM15_10=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 
or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

COMPUTE ACTIVE_MM_ADV = 0.
if (( mm15_4=1 or mm15_5=1  or mm15_6=1 or mm15_7=1 or mm15_8=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or mm15_14=1 or mm15_15=1 or mm15_16=1 or mm15_17=1 or mm15_18=1 or mm15_19=1 or 
mm15_20=1 or mm15_21=1 or mm15_22=1 or fb16_2=1 or fb22_2=1) 
and (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_96<=4)
) ACTIVE_MM_ADV=1.

COMPUTE ACTIVE30_MM_ADV = 0.
if (( mm15_4=1 or mm15_5=1  or mm15_6=1 or mm15_7=1 or mm15_8=1 or mm15_11=1 or mm15_12=1 or 
mm15_13=1 or mm15_14=1 or mm15_15=1 or mm15_16=1 or mm15_17=1 or mm15_18=1 or mm15_19=1 or 
mm15_20=1 or mm15_21=1 or mm15_22=1 or fb16_2=1 or fb22_2=1) 
and (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_96<=3)
) ACTIVE30_MM_ADV=1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE = 0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage = 2.
if (mm_stage=2 and active_mm=1) mm_stage = 3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage = 4.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ind16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3
or mm8_11<=3 or mm8_12<=3 or mm8_13<=3 or mm8_14<=3 or mm8_15<=3 or mm8_16<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_9=1 or MM15_10=1 or MM15_23=1) 
MM_BASIC=1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or 
MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or 
MM15_22=1 or fb16_4=1 or fb22_5=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ida16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

COMPUTE ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 
or MM8_11<=3 or MM8_96<=3) ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_9=1 or MM15_10=1 or MM15_23=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or 
MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or FB16_2=1 or FB22_2=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ken16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM  = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_23=1 or MM15_9=1 or MM15_10=1) 
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or 
MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or 
MM15_22=1 or fb16_2=1 or fb22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE nga16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM. 
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or 
MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3 or MM8_15<=3 or MM8_16<=3 or MM8_17<=3 or MM8_18<=3 or MM8_19<=3 or MM8_20<=3 or 
MM8_21<=3 or MM8_22<=3 or MM8_23<=3 or MM8_24<=3 or MM8_25<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_9=1 or MM15_10=1 or MM15_23=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1
 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1 )
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE pak16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_8<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.
 
compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_9=1 or MM15_10=1 or MM15_23=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or
 MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or 
MM15_20=1 or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE tza16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_96<=3)
ACTIVE30_mm = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1or MM15_9=1 or MM15_10=1 or MM15_23=1) 
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or 
          MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or
          fb16_2=1 or fb22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM 
REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE uga16.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or MM8_96<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or mm15_9=1 or mm15_10=1 or MM15_23=1) 
MM_BASIC = 1.

compute MM_ADV = 0.
if (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_11=1 or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 
or MM15_21=1 or MM15_22=1 or fb16_2=1 or fb22_2=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

*2015---------------------------------------------------------------------***.
DATASET ACTIVATE bng15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

compute ACCESS_MM=(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1 or MM4_10=1).
recode ACCESS_MM(1=1)(else=0).

compute REGISTERED_MM=(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9 or MM6_10).
recode REGISTERED_MM (1=1)(else=0).

count ACTIVE_MM=MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 MM8_10 (1 thru 4).
recode ACTIVE_MM (1 thru Highest=1).

count ACTIVE30_MM=MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 MM8_10 (1 thru 3).
recode ACTIVE30_MM (1 thru Highest=1).

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

 count MM_BASIC=mm15_1 mm15_2 mm15_3 mm15_26 mm15_10 mm15_11 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_12=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or MM15_23=1 or MM15_24=1 or MM15_25=1 or FB16_4=1 or FB22_4=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ind15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

count ACTIVE_MM=MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 MM8_10 MM8_11 MM8_12 MM8_13 MM8_14 MM8_15 MM8_16 MM8_17 (1 thru 4).
recode ACTIVE_MM (1 thru Highest=1).

count ACTIVE30_MM=MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 MM8_10 MM8_11 MM8_12 MM8_13 MM8_14 MM8_15 MM8_16 MM8_17(1 thru 3).
recode ACTIVE30_MM (1 thru Highest=1).

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm15_1 mm15_2 mm15_3 mm15_10 mm15_11 mm15_26 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_12=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or 
MM15_20=1 or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or FB16_4=1 or FB22_5=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ida15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

compute ACCESS_MM=(MM4_1=1 or MM4_2=1 or MM4_3=1 or MM4_4=1 or MM4_5=1 or MM4_6=1 or MM4_7=1 or MM4_8=1 or MM4_9=1).
recode ACCESS_MM(1=1)(else=0).

compute REGISTERED_MM=(MM6_1=1 or MM6_2=1 or MM6_3=1 or MM6_4=1 or MM6_5=1 or MM6_6=1 or MM6_7=1 or MM6_8=1 or MM6_9=1).
recode REGISTERED_MM (1=1)(else=0).

count ACTIVE_MM =MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 (1 thru 4).
recode ACTIVE_MM (1 thru Highest=1).

count ACTIVE30_MM =MM8_1 MM8_2 MM8_3 MM8_4 MM8_5 MM8_6 MM8_7 MM8_8 MM8_9 (1 thru 3).
recode ACTIVE30_MM (1 thru Highest=1).

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_11=1 or MM15_12=1 or MM15_28=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 
or MM15_20=1 or MM15_21=1 or MM15_22=1
or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ken15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4)
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=mm15_1 mm15_2 mm15_3 mm15_11 mm15_12 mm15_28 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE nga15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if  (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4 or MM8_7<=4 or 
MM8_8<=4 or MM8_9<=4 or MM8_10<=4 or MM8_11<=4 or MM8_12<=4 or MM8_13<=4 or MM8_14<=4)
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3 or MM8_7<=3 or 
MM8_8<=3 or MM8_9<=3 or MM8_10<=3 or MM8_11<=3 or MM8_12<=3 or MM8_13<=3 or MM8_14<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=mm15_1 mm15_2 mm15_3 mm15_11 mm15_12 mm15_28 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 
or MM15_21=1 or MM15_22=1 or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE pak15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.

rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if (mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4 or mm8_9<=4 or mm8_10<=4)
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if (mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3 or mm8_9<=3 or mm8_10<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM15_1=1 or MM15_2=1 or MM15_3=1 or MM15_10=1 or MM15_11=1 or MM15_26=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 
or MM15_12=1 or MM15_13=1 or MM15_14=1 or MM15_15=1 
or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1 or 
MM15_23=1 or MM15_24=1 or MM15_25=1 or FB16_4=1 or FB22_5=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.
compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * if MM9 ge 9 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE tza15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.

compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if (MM8_1<=4 or MM8_2<=4 or MM8_3<=4 or MM8_4<=4 or MM8_5<=4 or MM8_6<=4)
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if (MM8_1<=3 or MM8_2<=3 or MM8_3<=3 or MM8_4<=3 or MM8_5<=3 or MM8_6<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.
 
compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=mm15_1 mm15_2 mm15_3 mm15_11 mm15_12 mm15_28 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB22_2=1 or FB16_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * if MM9 = 99 LENGTH_MM = 99.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE uga15.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

compute ACTIVE_MM = 0.
if mm8_1<=4 or mm8_2<=4 or mm8_3<=4 or mm8_4<=4 or mm8_5<=4 or mm8_6<=4 or mm8_7<=4 or mm8_8<=4
ACTIVE_MM = 1.

compute ACTIVE30_MM = 0.
if mm8_1<=3 or mm8_2<=3 or mm8_3<=3 or mm8_4<=3 or mm8_5<=3 or mm8_6<=3 or mm8_7<=3 or mm8_8<=3
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm15_1 mm15_2 mm15_3 mm15_11 mm15_12  mm15_28(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM15_4=1 or MM15_5=1 or MM15_6=1 or MM15_7=1 or MM15_8=1 or MM15_9=1 or MM15_10=1
or MM15_13=1 or MM15_14=1 or MM15_15=1 or MM15_16=1 or MM15_17=1 or MM15_18=1 or MM15_19=1 or MM15_20=1 or MM15_21=1 or MM15_22=1
or MM15_23=1 or MM15_24=1 or MM15_25=1 or MM15_26=1 or MM15_27=1 or FB16_2=1 or FB22_2=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

 * compute LENGTH_MM=0.
 * if MM9 le 3 LENGTH_MM=1.
 * if MM9 = 4 LENGTH_MM=2.
 * if MM9 = 5 LENGTH_MM=3.
 * MISSING VALUES LENGTH_MM (0).
recode MM9(1,2,3=1)(4=2)(5=3)(else=4) into LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

*2014---------------------------------------------------------------------***.
DATASET ACTIVATE bng14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 or mm14_7<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_30=1 or mm19_31=1 or mm19_32=1
or FL10_3=1 or FL13_3=1) 
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ind14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 or mm14_7<=3 or mm14_8<=3 or mm14_9<=3 or mm14_10<=3
or mm14_11<=3 or mm14_12<=3 or mm14_13<=3 or mm14_14<=3 or mm14_15<=3 or mm14_16<=3 or mm14_17<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM19_4=1 or MM19_5=1 or MM19_6=1 or MM19_7=1 or MM19_8=1 or MM19_9=1 or MM19_10=1
or MM19_15=1 or MM19_16=1 or MM19_17=1 or MM19_18=1 or MM19_19=1 or MM19_20=1 or MM19_21=1 or MM19_22=1
or MM19_23=1 or MM19_24=1 or MM19_25=1 or MM19_26=1 or MM19_27=1 or FL10_4=1 or FL13_5=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ida14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

COMPUTE ACTIVE_MM = 0.
if MM14_1 le 4 or MM14_2 le 4 or MM14_3 le 4 or MM14_4 le 4 or MM14_5 le 4 or MM14_6 le 4 or MM14_7 le 4
ACTIVE_MM = 1. 

COMPUTE ACTIVE30_MM = 0.
if MM14_1 <=3 or MM14_2 <=3 or MM14_3 <=3 or MM14_4 <=3 or MM14_5 <=3 or MM14_6 <=3 or MM14_7 <=3
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM19_1=1 or MM19_2=1 or MM19_3=1 or MM19_12=1 or MM19_13=1 or MM19_14=1 or MM19_15=1) 
MM_BASIC = 1.

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 or mm19_11=1
or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 or mm19_31=1 or mm19_32=1
or fl10_5=1 or fl13_4=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ken14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 )
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 or 
mm19_31=1 or mm19_32=1 or fl10_3=1 or FL13_3=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE nga14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 or MM14_7<=3 or 
MM14_8<=3 or MM14_9<=3 or MM14_10<=3 or MM14_11<=3 or MM14_12<=3 or MM14_13<=3 or mm14_14<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 or 
mm19_31=1 or mm19_32=1 or fl10_3=1 or FL13_3=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE pak14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 or mm14_7<=3 or mm14_8<=3 
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM19_1=1 or MM19_2=1 or MM19_3=1 or MM19_11=1 or MM19_12=1 or MM19_13=1 or MM19_14=1)
MM_BASIC = 1.

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 or 
mm19_31=1 or MM19_32=1 or fl10_3=1 or FL13_3=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE tza14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM. 
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM14_1<=3 or MM14_2<=3 or MM14_3<=3 or MM14_4<=3 or MM14_5<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC =mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14 (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 
or mm19_31=1 or mm19_32=1 or FL13_3=1 or FL10_3=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE uga14.

rename variables aware_mm = AWARE_MM.
rename variables aware_mm_provider = AWARE_MM_PROVIDER.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM. 
rename variables registered_mm = REGISTERED_MM.

rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm14_1<=3 or mm14_2<=3 or mm14_3<=3 or mm14_4<=3 or mm14_5<=3 or mm14_6<=3 )
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=mm19_1 mm19_2 mm19_3 mm19_11 mm19_12 mm19_13 mm19_14(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm19_4=1 or mm19_5=1 or mm19_6=1 or mm19_7=1 or mm19_8=1 or mm19_9=1 or mm19_10=1 
or mm19_15=1 or mm19_16=1 or mm19_17=1 or mm19_18=1 or mm19_19=1 or mm19_20=1 or mm19_21=1 or mm19_22=1 
or mm19_23=1 or mm19_24=1 or mm19_25=1 or mm19_26=1 or mm19_27=1 or mm19_28=1 or mm19_29=1 or mm19_30=1 
or mm19_31=1 or mm19_32=1 or fl10_3=1 or FL13_3=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

*2013---------------------------------------------------------------------***.
*CHECK AWARE_MM SYNTAX.
DATASET ACTIVATE bng13.

rename variables aware_mm = AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if  (mm9_1<=3 or mm9_2<=3 or mm9_3<=3 or mm9_4<=3 or mm9_5<=3 or mm9_6<=3 or mm9_7<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=MM16A MM16B MM16C MM16H MM16I MM16J MM16K (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
if (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 
or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 
or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or
SI1_12=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV 
REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ind13.

rename variables aware_mm = AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
*ACCESS_MM is present.
rename variables registered_mm = REGISTERED_MM.

*ACTIVE_MM is present.
compute ACTIVE30_MM = 0.
if (MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3 or MM9_7<=3 or MM9_8<=3 or MM9_9<=3 or MM9_10<=3
 or MM9_11<=3 or MM9_12<=3 or MM9_13<=3 or MM9_14<=3 or MM9_15<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=MM16_1 MM16_2 MM16_3 MM16_8 MM16_9 MM16_10 MM16_11(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 
or MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_16=1 or MM16_17=1 or MM16_18=1 or MM16_19=1 
or MM16_20=1 or MM16_21=1 or MM16_22=1 or MM16_23=1 or MM16_24=1 or MM16_25=1 or FB7_1_6=1 or FB7_3_6=1 or FB7_4_6=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE ken13.

rename variables aware_mm = AWARE_MM_PROVIDER.
numeric aware_mm.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.

rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (mm9_1<=3 or mm9_2<=3 or mm9_3<=3 or mm9_4<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=MM16A MM16B MM16C MM16H MM16I MM16J MM16K (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm16d=1 or mm16e=1 or mm16f=1 or mm16g=1 
or mm16l=1 or mm16m=1 or mm16n=1 or mm16o=1 or mm16p=1 or mm16q=1 or mm16r=1 or mm16s=1 
or mm16t=1 or mm16u=1 or mm16v=1 or mm16w=1 or mm16x=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE nga13.

rename variables aware_mm = AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

*ACCESS_MM is present. 
rename variables registered_mm = REGISTERED_MM.

*ACTIVE_MM is present.
compute ACTIVE30_MM = 0.
if (mm9_1<=3 or mm9_2<=3 or mm9_3<=3 or mm9_4<=3 or mm9_5<=3 or mm9_6<=3 or mm9_7<=3 or mm9_8<=3 or 
mm9_9<=3 or mm9_10<=3 or mm9_11<=3 or mm9_12<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=MM16A MM16B MM16C MM16H MM16I MM16J MM16K (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 
or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 
or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE pak13.

rename variables aware_mm= AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if (MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3 or MM9_6<=3)
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

compute MM_BASIC = 0.
if (MM16A=1 or MM16B=1 or MM16C=1 or MM16H=1 or MM16I=1 or MM16J=1 or MM16K=1) 
MM_BASIC = 1.

compute MM_ADV = 0.
IF (MM16D=1 or MM16E=1 or MM16F=1 or MM16G=1 
or MM16L=1 or MM16M=1 or MM16N=1 or MM16O=1 or MM16P=1 or MM16Q=1 or MM16R=1 or MM16S=1 
or MM16T=1 or MM16U=1 or MM16V=1 or MM16W=1 or MM16X=1 or SI1_12=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE tza13.

rename variables AWARE_MM = AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.
*ACCESS_MM is present.
rename variables registered_mm = REGISTERED_MM.

*ACTIVE_MM is present.
compute ACTIVE30_MM = 0.
if MM9_1<=3 or MM9_2<=3 or MM9_3<=3 or MM9_4<=3 or MM9_5<=3
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if REGISTERED_MM = 0 and ACCESS_MM = 1 OTC_MM = 1.

count MM_BASIC=MM16_1 MM16_2 MM16_3 MM16_8 MM16_9 MM16_10 MM16_11(1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (MM16_4=1 or MM16_5=1 or MM16_6=1 or MM16_7=1 
or MM16_12=1 or MM16_13=1 or MM16_14=1 or MM16_15=1 or MM16_16=1 or MM16_17=1 or MM16_18=1 or MM16_19=1 
or MM16_20=1 or MM16_21=1 or MM16_22=1 or MM16_23=1 or MM16_24=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.
.
save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

DATASET ACTIVATE uga13.

rename variables AWARE_MM = AWARE_MM_PROVIDER.
numeric AWARE_MM.
compute AWARE_NONUSER_MM = 0.
if (aware_mm_provider=1 and access_mm=0) aware_nonuser_mm=1.

rename variables access_mm = ACCESS_MM.
rename variables registered_mm = REGISTERED_MM.
rename variables active_mm = ACTIVE_MM.

compute ACTIVE30_MM = 0.
if mm9_1<=3 or mm9_2<=3 or mm9_3<=3 or mm9_4<=3 or mm9_5<=3 or mm9_6<=3 or mm9_7<=3
ACTIVE30_MM = 1.

compute INACTIVE_MM = 0.
IF registered_mm = 1 and active_mm = 0 INACTIVE_MM = 1.

COMPUTE DORMANT_MM  = 0.
IF registered_mm = 1 and access_mm = 0 DORMANT_MM = 1.

compute OTC_MM = 0.
if registered_mm = 0 and access_mm = 1 OTC_MM = 1.

count MM_BASIC=MM16A MM16B MM16C MM16H MM16I MM16J MM16K (1).
RECODE MM_BASIC (1 thru highest=1).

compute MM_ADV = 0.
IF (mm16d=1 or mm16e=1 or mm16f=1 or mm16g=1 
or mm16l=1 or mm16m=1 or mm16n=1 or mm16o=1 or mm16p=1 or mm16q=1 or mm16r=1 or mm16s=1 
or mm16t=1 or mm16u=1 or mm16v=1 or mm16w=1 or mm16x=1)
MM_ADV = 1.

COMPUTE REG_MM_BASIC = 0.
IF MM_BASIC = 1 AND REGISTERED_MM = 1 REG_MM_BASIC = 1.

COMPUTE REG_MM_ADV = 0.
IF MM_ADV = 1 AND REGISTERED_MM = 1 REG_MM_ADV = 1.

COMPUTE ACTIVE_MM_BASIC = 0.
IF MM_BASIC = 1 AND ACTIVE_MM = 1 ACTIVE_MM_BASIC = 1.

compute ACTIVE_MM_ADV = 0.
if ACTIVE_MM = 1 and MM_ADV = 1 ACTIVE_MM_ADV = 1.

compute ACTIVE30_MM_ADV = 0.
if ACTIVE30_MM = 1 and MM_ADV = 1 ACTIVE30_MM_ADV = 1.

numeric LENGTH_MM.

COMPUTE MM_STAGE =0.
if access_mm=1 mm_stage=1.
if (mm_stage=1 and registered_mm=1) mm_stage=2.
if (mm_stage=2 and active_mm=1) mm_stage=3.
if (mm_stage=3 and ACTIVE_MM_ADV=1) mm_stage=4.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR AWARE_MM AWARE_MM_PROVIDER AWARE_NONUSER_MM ACCESS_MM
 REGISTERED_MM ACTIVE_MM ACTIVE30_MM INACTIVE_MM DORMANT_MM OTC_MM MM_BASIC MM_ADV
 REG_MM_BASIC REG_MM_ADV ACTIVE_MM_BASIC ACTIVE_MM_ADV ACTIVE30_MM_ADV LENGTH_MM MM_STAGE .

dataset close all.

*Labels.
variable labels
AWARE_MM	"Aware of mobile money service"
AWARE_MM_PROVIDER	"Aware of at least one of the mobile money providers"
AWARE_NONUSER_MM	"Aware mobile money providers but never used any"
ACCESS_MM	"Ever used mobile money service"
REGISTERED_MM	"Have a mobile money account"
ACTIVE_MM	"Used registered mobile money accounts in past 90 days"
ACTIVE30_MM	"Used own mobile money accounts in past 30 days"
INACTIVE_MM	"Mobile money account owner who haven't used any mobile money services in past 90 days"
DORMANT_MM	"Mobile money account owner who never used any mobile money services"
OTC_MM	"Nonregistered users of mobile money"
MM_BASIC	"Ever used mobile money to do basic activities"
MM_ADV	"Ever used mobile money to do advanced activities"
REG_MM_BASIC	"Conduct basic activity thru own mobile money account"
REG_MM_ADV	"Conduct advanced activity thru own mobile money account"
ACTIVE_MM_BASIC	"Used own mobile money account in past 90 days and have used at least one basic financial service"
ACTIVE_MM_ADV	"Used own mobile money account in past 90 days and have used at least one advanced financial service"
ACTIVE30_MM_ADV	"Used own mobile money account in past 30 days and have used at least one advanced financial service"
LENGTH_MM	"Length of time using mobile money services"
MM_STAGE	"Customer journey segmentation of mobile money".

value labels AWARE_MM 1"Yes" 0"No".
value labels AWARE_MM_PROVIDER 1"Yes" 0"No".
value labels AWARE_NONUSER_MM 1"Yes" 0"No".
value labels ACCESS_MM 1"Yes" 0"No".
value labels REGISTERED_MM 1"Yes" 0"No".
value labels ACTIVE_MM 1"Yes" 0"No".
value labels ACTIVE30_MM 1"Yes" 0"No".
value labels INACTIVE_MM 1"Yes" 0"No".
value labels DORMANT_MM 1"Yes" 0"No".
value labels OTC_MM 1"Yes" 0"No".
value labels MM_BASIC 1"Yes" 0"No".
value labels MM_ADV 1"Yes" 0"No".
value labels REG_MM_BASIC 1"Yes" 0"No".
value labels REG_MM_ADV 1"Yes" 0"No".
value labels ACTIVE_MM_BASIC 1"Yes" 0"No".
value labels ACTIVE_MM_ADV 1"Yes" 0"No".
value labels ACTIVE30_MM_ADV 1"Yes" 0"No".
value labels LENGTH_MM 1"0-6 months" 2"6-12 months" 3"Greater than 12 months" 4"DK/NA".
value labels MM_STAGE 0"Mobile money nonuser"
1"Unregistered mobile money user"
2"Inactive registered mobile money user"
3"Active mobile money basic user"
4"Active mobile money advanced user".


