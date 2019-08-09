﻿* Encoding: UTF-8.
*Section 11.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

compute Save=0.
if ad9=1 Save=1.

numeric SAVE_KNOW_INTEREST.

compute SAVE_INFML = 0.
if ad9_13=1 or ((FN5_2=2 or FN5_4=2) and ad9_7=1) or ((FN6_2=2 or FN6_4=2) and ad9_8=1)  SAVE_INFML=1.

compute SAVE_FORMAL = 0.
if ad9_1=1 or ad9_2=1 or ad9_3=1 or ad9_4=1 or ad9_5=1 or ad9_6=1 or (FN5_1=1 and FN5_4=1 and ad9_7=1) or (FN6_1=1 and FN6_4=1 and ad9_8=1) or ad9_9=1 save_formal=1.

compute save_bank=0.
IF (ad9_1=1 or ad9_2=1 or ad9_3=1) save_bank=1.

recode AD9_4 (1=1) (2=0) into SAVE_MM.
recode AD9_5 (1=1) (2=0) into SAVE_MFI.
recode AD9_6 (1=1) (2=0) into SAVE_COOP.
recode AD9_8 (1=1) (2=0) into SAVE_GROUP.
recode AD9_9 (1=1) (2=0) into SAVE_POST.

*AD9_26 and 28.
compute SAVE_CASH_PROPERTY = 0.
if ad9_10=1 or ad9_11=1 or ad9_12=1 or ad9_14=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind18.

compute Save=0.
if ad9=1 Save=1.

numeric SAVE_KNOW_INTEREST.
compute SAVE_INFML = 0.
if  AD9_11=1 OR ((FN6_2=2 OR FN6_3=2) and AD9_6=1) save_infml=1.

compute SAVE_FORMAL = 0.
if AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or    AD9_4=1 or   AD9_2=1 or AD9_3=1 or (FN6_1=1 and FN6_3=1 and AD9_6=1) or 
   AD9_5=1 save_formal=1.

compute SAVE_BANK=0.
if ad9_1=1 or ad9_12=1 or ad9_13=1 or ad9_14=1 save_bank=1.

recode AD9_4 (1=1) (2=0) into SAVE_MM.
recode AD9_5 (1=1) (2=0) into SAVE_MFI.
numeric SAVE_COOP.
numeric SAVE_GROUP.
recode AD9_2 (1=1) (2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if AD9_7=1 or AD9_8=1 or AD9_9=1 OR AD9_10=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_8 FB22_9 FB22_10 Fb22_11 (1).
recode save (1 thru highest=1) (else=0).

compute Save_know_interest=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_8<99 or Fb23_8>99 
or Fb23_9<99 or Fb23_9>99) Save_know_interest=1.

compute SAVE_INFML = 0.
if fb22_5=1 or  fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_FORMAL = 0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.
compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.
recode FB22_4 (1=1) (2=0) into SAVE_MFI.
numeric SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode FB22_3 (1=1) (2=0) into  SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_6=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind17.

count Save= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode save (1 thru highest=1) (else=0).

compute Save_know_interest=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99  or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.
compute SAVE_INFML=0.
if fb22_8=1 or fb22_9=1 SAVE_INFML=1.
compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 or fb22_5=1 or fb22_6=1 save_formal=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.
compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.
compute SAVE_MFI=0.
if (IFI10_7<7 or FB22_3=1) SAVE_MFI=1.
numeric SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode FB22_4 (1=1) (2=0) into SAVE_POST.
compute SAVE_CASH_PROPERTY=0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken17.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode save (1 thru highest=1) (else=0).

compute Save_know_interest=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.
compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.
*not 100% certain about these, went with keywords in description.
recode FB22_4 (1=1) (2=0) into SAVE_MFI.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.


save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga17.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 (1).
recode save (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST = 0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.
compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_4=1 save_formal=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

recode FB22_4 (1=1) (2=0) into SAVE_MFI.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.

numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.
numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak17.

count Save= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 (1).
recode save (1 thru highest=1) (else=0).

compute Save_know_interest=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99) Save_know_interest=1.
compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_7=1 or fb22_8=1 SAVE_INFML=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

recode FB22_4 (1=1) (2=0) into SAVE_MFI.
numeric SAVE_COOP.
recode FB22_3 (1=1) (2=0) into SAVE_GROUP.
numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_6=1 or fb22_9=1 or fb22_10=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza17.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 FB22_11 (1).
recode save (1 thru highest=1) (else=0).

compute Save_know_interest=0.
if (FB23_1<99 or FB23_1>99 or FB23_2<99 or FB23_2>99 or FB23_3<99 or FB23_3>99 or FB23_4<99 or FB23_4>99 or FB23_5<99 or FB23_5>99 or FB23_6<99 or FB23_6>99 
or FB23_7<99 or FB23_7>99 or FB23_8<99 or FB23_8>99) Save_know_interest=1.
compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

recode FB22_4 (1=1) (2=0) into SAVE_MFI.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.
numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga17.

count Save= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode save (1 thru highest=1) (else=0).
compute Save_know_interest=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.

compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.

compute save_bank = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute save_mm=1.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

recode FB22_4 (1=1) (2=0) into SAVE_MFI.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

count Save= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode save (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST = 0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.

compute SAVE_INFML = 0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 save_formal=1.
compute SAVE_FORMAL = 0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.
compute SAVE_BANK = 0.
IF (FF14_11=1 or FB22_1=1) save_bank = 1.
count SAVE_MM=MM15_11 FB22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).
recode FB22_4 (1=1) (2=0) into SAVE_MFI.
numeric SAVE_COOP.
recode FB22_6 (1=1) (2=0) into SAVE_GROUP.
compute SAVE_POST = 0.
if FB22_3=1 or IFI13_16=1 SAVE_POST=1.
compute SAVE_CASH_PROPERTY = 0.
*From here on, save_cash_property is newly derived, i.e. not found in prior syntax.
if fb22_7=1 or fb22_11=1 or fb22_12=1 save_cash_property=1.
recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_6 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_7 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_8 (1=1) (2=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2=0) into SAVE_HOUSE.


save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind16.

count Save= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode save (1 thru highest=1) (else=0).
*SKI derivation method test- Mitchell. Replace if incorrect.
count SAVE_KNOW_INTEREST = FB22_1 to FB22_7 (lo thru 98 100 thru hi).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

compute save_formal=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 or fb22_5=1 or fb22_6=1 save_formal=1.
compute SAVE_INFML=0.
if fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK=0.
IF (FF14_11=1 or FB22_1=1) SAVE_BANK=1.

count SAVE_MM=MM15_11 FB22_2 (1).
recode FB22_4 (1=1) (2=0) into SAVE_MFI.
numeric SAVE_COOP.
recode FB22_6 (1=1) (2=0) into SAVE_GROUP.

compute SAVE_POST = 0.
if FB22_3=1 or IFI11_16=1 SAVE_POST=1.

*doesn't include "buying things", but "gold". May not be enough to be compatible.
*count SAVE_CASH_PROPERTY= FB22_8 FB22_12.
numeric SAVE_CASH_PROPERTY.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.

numeric SAVE_SECURITY.
if FB26_6 = 1 or FB26_7 = 1 SAVE_SECURITY = 1.


numeric SAVE_EMERGENCY.
recode FB26_8 (1=1) (2=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2=0) into SAVE_HOUSE.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_96 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_7 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).
*no formal/infml designation known.
numeric SAVE_FORMAL.
numeric SAVE_INFML.
compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1) SAVE_BANK=1.
count save_mm=MM15_16 MM15_17 MM15_18 (1).
recode SAVE_MM (1 thru highest = 1)(else = 0).
numeric SAVE_MFI.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
numeric SAVE_GROUP.
recode IFI13_16 (1=1) (2=0) into SAVE_POST.
count SAVE_CASH_PROPERTY= FB22_5 FB22_8 FB22_9 (1).
recode SAVE_CASH_PROPERTY (1 thru highest = 1)(else = 0).

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
numeric SAVE_SECURITY.
recode FB26_6 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_11 (1=1) (2=0) into SAVE_HOUSE.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count save_mm=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest = 1) (else = 0).
compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) save_mfi=1.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode IFI13_16 (1=1) (2=0) into SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_5 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_6 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_11 (1=1) (2=0) into SAVE_HOUSE.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count save_mm=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest = 1) (else = 0).
compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) save_mfi=1.
recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode IFI13_16 (1=1) (2=0) into SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_5 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_6 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 FB22_96 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).

numeric save_formal.
numeric save_infml.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) SAVE_BANK=1.

count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).
compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.


numeric SAVE_COOP.
recode FB22_3 (1=1) (2=0) into SAVE_GROUP.
recode IFI13_16 (1=1) (2=0) into SAVE_POST.
count SAVE_CASH_PROPERTY= FB22_6 FB22_9 FB22_10 (1).
recode SAVE_CASH_PROPERTY (1 thru hi = 1)(else=0).

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_6 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_7 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_8 (1=1) (2=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2=0) into SAVE_HOUSE.


save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode save (1 thru highest=1) (else=0).
count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).
count save_infml=FB22_5 to FB22_7 FB22_9 to FB22_96 (1).
recode save_infml (1 thru highest=1).
*semi-formal is derived in syntax, but not formal?.
numeric save_formal.
compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2(1).
recode SAVE_MM (1 thru hi = 1) (else = 0).

compute save_mfi=0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) save_mfi=1.

recode FB22_3 (1=1) (2=0) into SAVE_COOP.

recode FB22_5 (1=1) (2=0) into SAVE_GROUP.

recode IFI13_16 (1=1) (2=0) into SAVE_POST.

compute save_cash_property = 0.
if FB22_11 = 1 or FB22_10 = 1 or FB22_7 = 1 save_cash_property = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_7 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_8 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_9 (1=1) (2=0) into SAVE_DAILY.
recode FB26_10 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_11 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_12 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga16.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode save (1 thru highest=1) (else=0).
count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode Save_know_interest (1 thru highest=1) (else=0).

numeric save_formal.
numeric save_infml.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.

recode FB22_3 (1=1) (2=0) into SAVE_COOP.
recode FB22_5 (1=1) (2=0) into SAVE_GROUP.

recode IFI13_16 (1=1) (2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
recode FB26_7 (1=1) (2=0) into SAVE_SECURITY.
recode FB26_8 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB26_9 (1=1) (2=0) into SAVE_DAILY.
recode FB26_10 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_11 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_12 (1=1) (2=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2=0) into SAVE_HOUSE.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 Fb23_8 Fb23_9 FB23_10 FB23_12 (1).
recode Save_know_interest (1 thru highest=1) (else=0).

numeric save_formal.
numeric save_infml.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count SAVE_MM=mm15_17 mm15_18 fb22_4 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) save_mfi=1.

compute SAVE_COOP=0.
if (IFI11_18=1 or fb22_3=1) SAVE_COOP=1.

recode IFI12_17 (1=1) (2=0) into SAVE_GROUP.

compute SAVE_POST = 0.
if IFI11_17 = 1 or IFI11_18 = 1 or FB22_3 = 1 SAVE_POST = 1.

*Only cash + gold, no other assets listed.
compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FB25_5 = 1 or FB25_6 = 1 SAVE_SECURITY = 1.
if FB25_5 = 2 or FB25_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

recode FB25_11 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB25_7 (1=1) (2=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind15.

count Save=FB22_1 to FB22_13 (1).
recode save (1 thru highest=1) (else=0).

count Save_know_interest=FB23_1 to FB23_13 (1).
recode save (1 thru highest=1) (else=0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

DATASET ACTIVATE ind15.
count SAVE_BANK=ff14_17 ff14_18 FB22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_17 mm15_18 FB22_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_18=1 or IFI10_17=1 or fb22_2=1) SAVE_MFI=1.

numeric SAVE_COOP.

recode IFI12_17 (1=1) (2=0) into SAVE_GROUP.

compute SAVE_POST = 0.
if IFI11_17 = 1 or FB22_3 = 1 SAVE_POST = 1.
*"Buying things"and "in-kind assets" not an option but "gold" is.
compute SAVE_CASH_PROPERTY = 0.
if FB22_12 = 1 or FB22_8 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB25_5 = 1 or FB25_6 = 1 SAVE_SECURITY = 1.
if FB25_5 = 2 or FB25_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).
numeric SAVE_EMERGENCY.
recode FB25_7 (1=1) (2=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FB23_1 to FB23_10 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
 
count SAVE_MM=mm15_18 to mm15_20  (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if ifi10_18 = 1 or IFI10_19 = 1 SAVE_MFI = 1.

recode IFI11_18 (1=1)(2=0) into SAVE_COOP.

numeric SAVE_GROUP.

recode ifi13_18 (1=1)(2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if FB22_8 = 1 or FB22_9 = 1 or FB22_5 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB25_5 = 1 or FB25_6 = 1 SAVE_SECURITY = 1.
if FB25_5 = 2 or FB25_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FB25_7 (1=1) (2=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_FORMAL.
 *IFI 21.3?.
numeric SAVE_INFML.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode SAVE_BANK (1 thru hi = 1)(else = 0).

count SAVE_MM = mm15_18 to mm15_20 fb22_2 (1).
recode SAVE_MM (1 thru hi = 1)(else = 0).

compute SAVE_MFI = 0.
if (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.

recode IFI11_18 (1=1)(2=0) into SAVE_COOP.

numeric SAVE_GROUP.

recode IFI13_18 (1=1)(2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if FB22_5 = 1 or FB22_8 = 1 or FB22_9 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB26_5 = 1 or FB26_6 = 1 SAVE_SECURITY = 1.
if FB26_5 = 2 or FB26_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.


save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_18 to mm15_20 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0.
IF (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.

compute SAVE_COOP=0. 
if (IFI11_18=1 or IFI11_19=1 or IFI11_20=1) SAVE_COOP=1.

compute SAVE_GROUP = 0.
if FB22_5 = 1 or IFI12_18 = 1 SAVE_GROUP = 1.

recode IFI13_18 (1=1)(2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7=1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB26_5 = 1 or FB26_6 = 1 SAVE_SECURITY = 1.
if FB26_5 = 2 or FB26_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 fb22_13 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_13 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff14_17 ff14_18 fb22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_17 mm15_18 fb22_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_17=1 or IFI10_18=1 or fb22_2=1) SAVE_MFI=1.

compute SAVE_GROUP = 0.
 if (IFI12_17=1 or IFI12_18=1) SAVE_GROUP=1.
 
numeric SAVE_COOP.
 
compute SAVE_POST = 0.
 if FB22_3 = 1 or IFI11_17 = 1  SAVE_POST = 1.
*only gold and cash.
compute SAVE_CASH_PROPERTY = 0.
if fb22_8 = 1 OR fb22_12 = 1 SAVE_CASH_PROPERTY = 1.
 
recode FB25_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB25_5 = 1 or FB25_6 = 1 SAVE_SECURITY = 1.
if FB25_5 = 2 or FB25_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

recode FB25_11 (1=1) (2=0) into SAVE_EMERGENCY.
recode FB25_7 (1=1) (2=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 FB22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_18 to mm15_20 Fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

recode FB22_4 (1=1)(2=0) into SAVE_MFI.

recode IFI11_18 (1=1) (2=0) into SAVE_COOP.

recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode IFI13_18 (1= 1) (2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB26_5 = 1 or FB26_6 = 1 SAVE_SECURITY = 1.
if FB26_5 = 2 or FB26_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga15.

count Save=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1(1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_18 to mm15_20 fb22_2(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.

recode IFI11_18 (1=1) (2=0) into SAVE_COOP.

recode FB22_5 (1=1) (2=0) into SAVE_GROUP.
recode IFI13_18 (1= 1) (2=0) into SAVE_POST.

compute SAVE_CASH_PROPERTY = 0.
if fb22_10 = 1 or fb22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2=0) into SAVE_PRESTIGE.
compute SAVE_SECURITY = 99.
if FB26_5 = 1 or FB26_6 = 1 SAVE_SECURITY = 1.
if FB26_5 = 2 or FB26_6 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 to FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_INFML.
*FL13.6?.
numeric SAVE_FORMAL.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

recode IFI10_4 (1=1)(2=0) into SAVE_MFI.

recode IFI11_4 (1=1) (2=0) into SAVE_COOP.

numeric SAVE_GROUP.

compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.

*Question styles aren't equivalent.
numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind14.

count Save=FL13_1 to FL13_13 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 to FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

numeric SAVE_INFML.
numeric SAVE_FORMAL.

count SAVE_BANK=ff19_24 to ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_22 to mm19_24 FL13_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.

recode IFI11_4 (1=1) (2=0) into SAVE_COOP.

compute SAVE_GROUP=0. 
if (IFI12_4=1 or FL13_9 = 1) SAVE_GROUP=1.

compute SAVE_POST=0. 
if (IFI11_4=1 or FL13_3 = 1) SAVE_POST=1.

compute SAVE_CASH_PROPERTY = 0.
if FL13_8 = 1 or FL13_12 = 1 SAVE_CASH_PROPERTY = 1.

recode FL17_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL17_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL17_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL17_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL17_6 = 1 or FL17_7 = 1 SAVE_SECURITY = 1.
if FL17_6 = 2 or FL17_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

recode FL17_9 (1=1) (2=0) into SAVE_EMERGENCY.
recode FL17_8 (1=1) (2=0) into SAVE_DAILY.
recode FL17_10 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL17_11 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL17_12 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 FL13_8(1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 to FL14_8 (1).
recode SAVE_KNOW_INTEREST(1 thru hi = 1)(else = 0).

numeric SAVE_INFML.
numeric SAVE_FORMAL.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_25 mm19_26 mm19_27 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.

recode IFI11_4 (1=1) (2=0) into SAVE_COOP.

compute SAVE_GROUP=0. 
if (IFI12_4=1) SAVE_GROUP=1.

compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.
*no in-kind asset or "buying" option. Gold.
*count SAVE_CASH_PROPERTY= FL13_12 FL13_8 (1).
numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 FL13_8 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 to FL14_8 (1).
recode SAVE_KNOW_INTEREST(1 thru hi = 1) (else = 0).

numeric SAVE_INFML.
numeric SAVE_FORMAL.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3  (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.

recode IFI11_4 (1=1) (2=0) into SAVE_COOP.

numeric SAVE_GROUP.

compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.

numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 to FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

numeric save_formal.
numeric save_infml.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.
*FL13_4?.
numeric SAVE_COOP.

recode IFI12_4 (1=1)(2=0) into SAVE_GROUP.
recode IFI13_4 (1=1)(2=0) into SAVE_POST.
recode FL13_6 (1=1)(2=0) into SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 to FL14_7(1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

numeric save_formal.
numeric save_infml.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.

compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.

numeric SAVE_GROUP.
recode IFI13_4 (1=1)(2=0) into SAVE_POST.
numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 to FL13_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

count save_infml=FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save_infml (1 thru highest=1).

*Only semi-formal.
numeric save_formal.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.

compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.

numeric SAVE_GROUP.
recode IFI13_4 (1=1)(2=0) into SAVE_POST.

numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga14.

count Save=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode save (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 to FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.

compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.

numeric SAVE_GROUP.
recode IFI13_4 (1=1)(2=0) into SAVE_POST.

numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2=0) into SAVE_PRESTIGE.

compute SAVE_SECURITY = 99.
if FL16_6 = 1 or FL16_7 = 1 SAVE_SECURITY = 1.
if FL16_6 = 2 or FL16_7 = 2 SAVE_SECURITY = 2.
MISSING VALUES SAVE_SECURITY (99).

numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.


count SAVE = SI2_1 to SI2_16 (1).
recode SAVE (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST = SI2_1 to SI2_16 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).


numeric SAVE_INFML.
numeric SAVE_FORMAL.
*Bank and MFI are connected, so can't use either.
recode FF19_24 (1=1)(2=0) into SAVE_BANK.

count SAVE_MM=MM16U MM16V (1).
recode SAVE_MM (1 thru highest=1)(else=0).

numeric SAVE_MFI.
recode SI1_6 (1=1)(2=0) into SAVE_COOP.
recode IFI1_3 (1=1)(2=0) into SAVE_GROUP.
numeric SAVE_POST.
*buying in-kind is technically through "gold, precious metals, jewelery".
compute SAVE_CASH_PROPERTY = 0.
if SI1_3 = 1 or SI1_13 = 1 SAVE_CASH_PROPERTY = 1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind13.

count SAVE = FB7_3_1 to FB7_3_17 (1).
recode SAVE (1 thru hi = 1) (else = 0).

numeric SAVE_KNOW_INTEREST.
numeric SAVE_FORMAL.
numeric SAVE_INFML.
* FB7.3.1 includes cooperatives in "bank" definition.
compute SAVE_BANK = 1.
if FFI16_21 = 1 SAVE_BANK = 1.

count SAVE_MM=MM16_21 MM16_22 FB7_3_6 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

recode FB7_3_2 (1=1) (2=0) into SAVE_MFI.


numeric SAVE_COOP.

recode FB7_3_3 (1=1)(2=0) into SAVE_GROUP.

recode FB7_3_7 (1=1)(2=0) into SAVE_POST.


*No cash/asset option, only gold.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken13.

count SAVE= NP7_1T to NP7_13T (1).
recode SAVE (1 thru hi = 1)(else = 0).
numeric SAVE_KNOW_INTEREST.
numeric SAVE_FORMAL.
numeric SAVE_INFML.
recode FFI16U (1=1)(0=0) into SAVE_BANK.
recode MM16U (1=1)(0=0) into SAVE_MM.

numeric SAVE_MFI.
numeric SAVE_COOP.
numeric SAVE_GROUP.
numeric SAVE_POST.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga13.

count SAVE = SI2_1 to SI2_16 (1).
recode SAVE (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST = SI2_1 to SI2_16 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

numeric SAVE_FORMAL.
*SI1.4?.
numeric SAVE_INFML.

recode FFI16U (1=1)(0=0) into SAVE_BANK.

recode MM16U (1=1)(0=0) into SAVE_MM.
*Bank+MFI combined.
numeric SAVE_MFI.
recode SI1_6 (1=1)(2=0) into SAVE_COOP.
*Village Saving/Loan mentioned, but not specifically savings.
numeric SAVE_GROUP.

numeric SAVE_POST.
compute SAVE_CASH_PROPERTY = 0.
if SI1_3 = 1 or SI1_13 = 1 SAVE_CASH_PROPERTY = 1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak13.

count SAVE = SI2_1 to SI2_16 (1).
recode SAVE (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST = SI2_1 to SI2_16 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

numeric SAVE_FORMAL.
numeric SAVE_INFML.

recode FFI16U (else=copy) into SAVE_BANK.

count SAVE_MM=MM16U MM16V (1).
recode SAVE_MM (1 thru highest=1)(else=0).

numeric SAVE_MFI.
numeric SAVE_GROUP.
recode SI1_6 (1=1) (2=0) into SAVE_COOP.
numeric SAVE_POST.
compute SAVE_CASH_PROPERTY =0.
if SI1_3 = 1 or SI1_13 = 1 SAVE_CASH_PROPERTY = 1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza13.
*only banks and mm.
count SAVE= ffi16_21  ffi16_22 MM16_21 MM16_22 (1).
numeric SAVE_KNOW_INTEREST.
numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK=ffi16_21  ffi16_22(1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=MM16_21 MM16_22 (1).
recode SAVE_MM (1 thru highest=1)(else=0).
numeric SAVE_MFI.
numeric SAVE_GROUP.
numeric SAVE_COOP.
numeric SAVE_POST.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga13.
*only banks and mm.
count SAVE = FFI16U FFI16V MM16U MM16V (1).
numeric SAVE_KNOW_INTEREST.
numeric SAVE_FORMAL.
numeric SAVE_INFML.

count SAVE_BANK = FFI16U FFI16V (1) .
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=MM16U MM16V (1).
recode SAVE_MM (1 thru highest=1)(else=0).
numeric SAVE_MFI.
numeric SAVE_GROUP.
numeric SAVE_COOP.
numeric SAVE_POST.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_SECURITY.
numeric SAVE_EMERGENCY.
numeric SAVE_DAILY.
numeric SAVE_COMMUNITY.
numeric SAVE_CHILDREN_EDU.
numeric SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*dataset close all.