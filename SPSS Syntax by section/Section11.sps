* Encoding: UTF-8.
*Section 11.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

compute SAVE=0.
if ad9=1 SAVE=1.

numeric SAVE_KNOW_INTEREST.

compute SAVE_INFML = 0.
if ad9_13=1 or ((FN5_2=2 or FN5_4=2) and ad9_7=1) or ((FN6_2=2 or FN6_4=2) and ad9_8=1)  SAVE_INFML=1.

compute SAVE_FORMAL = 0.
if ad9_1=1 or ad9_2=1 or ad9_3=1 or ad9_4=1 or ad9_5=1 or ad9_6=1 or (FN5_1=1 and FN5_4=1 and ad9_7=1) or (FN6_1=1 and FN6_4=1 and ad9_8=1) or ad9_9=1 save_formal=1.

compute SAVE_BANK=0.
IF (ad9_1=1 or ad9_2=1 or ad9_3=1) save_bank=1.

recode AD9_4 (1=1) (2,sysmis=0) into SAVE_MM.
recode AD9_5 (1=1) (2,sysmis=0) into SAVE_MFI.
recode AD9_6 (1=1) (2,sysmis=0) into SAVE_COOP.
compute SAVE_GROUP=0.
IF (ad9_7=1 or ad9_8=1) SAVE_GROUP=1.
recode AD9_9 (1=1) (2,sysmis=0) into SAVE_POST.
numeric SAVE_SACCO.

*AD9_26 and 28.
compute SAVE_CASH_PROPERTY = 0.
if ad9_10=1 or ad9_11=1 or ad9_12=1 or ad9_14=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

compute SAVE=0.
if ad9=1 SAVE=1.

numeric SAVE_KNOW_INTEREST.
compute SAVE_INFML = 0.
if  AD9_11=1 OR ((FN6_2=2 OR FN6_3=2) and AD9_6=1) save_infml=1.

compute SAVE_FORMAL = 0.
if AD9_1=1 or AD9_12=1 or AD9_13=1 or AD9_14=1 or    AD9_4=1 or   AD9_2=1 or AD9_3=1 or (FN6_1=1 and FN6_3=1 and AD9_6=1) or 
   AD9_5=1 save_formal=1.

compute SAVE_BANK=0.
if ad9_1=1 or ad9_12=1 or ad9_13=1 or ad9_14=1 SAVE_BANK=1.

recode AD9_4 (1=1) (2,sysmis=0) into SAVE_MM.
recode AD9_5 (1=1) (2,sysmis=0) into SAVE_MFI.
recode AD9_6 (1=1) (2,sysmis=0) into SAVE_COOP.
numeric SAVE_GROUP.
recode AD9_2 (1=1) (2,sysmis=0) into SAVE_POST.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if AD9_7=1 or AD9_8=1 or AD9_9=1 OR AD9_10=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_8 FB22_9 FB22_10 Fb22_11 (1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_8<99 or Fb23_8>99 
or Fb23_9<99 or Fb23_9>99) SAVE_KNOW_INTEREST=1.

compute SAVE_INFML = 0.
if fb22_5=1 or  fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_FORMAL = 0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.
compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0. 
if (IFI10_7<=6 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<=6 ) SAVE_COOP=1.
compute SAVE_GROUP=0. 
if (IFI12_7<=6 ) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI13_7<=6 OR FB22_3=1 ) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if fb22_6=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99  or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) Save_know_interest=1.
compute SAVE_INFML=0.
if fb22_8=1 or fb22_9=1 SAVE_INFML=1.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 or fb22_5=1 or fb22_6=1 SAVE_FORMAL=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.
compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0.
if (IFI10_7<7 or FB22_3=1) SAVE_MFI=1.
numeric SAVE_COOP.
compute SAVE_GROUP=0. 
if (IFI12_7<7 or FB22_5=1) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI11_7<7 or FB22_4=1) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY=0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) SAVE_KNOW_INTEREST=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.
*not 100% certain about these, went with keywords in description.
compute SAVE_MFI=0. 
if (IFI10_7<7 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<7) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_7<7) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_7<7 or FB22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 (1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST = 0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) SAVE_KNOW_INTEREST=1.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.
compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0. 
if (IFI10_7<7 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<7) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_7<7) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_7<7 or FB22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 (1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99) SAVE_KNOW_INTEREST=1.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_7=1 or fb22_8=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0. 
if (IFI10_7<7 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<7) SAVE_COOP=1.
compute SAVE_GROUP=0. 
if (IFI12_7<7 or FB22_3=1) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI13_7<7) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if fb22_6=1 or fb22_9=1 or fb22_10=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 FB22_11 (1).
recode SAVE (1 thru highest=1) (else=0).

compute SAVE_KNOW_INTEREST=0.
if (FB23_1<99 or FB23_1>99 or FB23_2<99 or FB23_2>99 or FB23_3<99 or FB23_3>99 or FB23_4<99 or FB23_4>99 or FB23_5<99 or FB23_5>99 or FB23_6<99 or FB23_6>99 
or FB23_7<99 or FB23_7>99 or FB23_8<99 or FB23_8>99) SAVE_KNOW_INTEREST=1.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0. 
if (IFI10_7<7 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<7) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_7<7) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_7<7 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE= FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11(1).
recode SAVE (1 thru highest=1) (else=0).
compute SAVE_KNOW_INTEREST=0.
if (Fb23_1<99 or Fb23_1>99 or Fb23_2<99 or Fb23_2>99 or Fb23_3<99 or Fb23_3>99 or Fb23_4<99 or Fb23_4>99 or Fb23_5<99 or Fb23_5>99 or Fb23_6<99 or Fb23_6>99 
or Fb23_7<99 or Fb23_7>99 or Fb23_8<99 or Fb23_8>99) SAVE_KNOW_INTEREST=1.

compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.

compute SAVE_BANK = 0.
if  FF14_11=1 or FB22_1 =1 SAVE_BANK=1.

compute SAVE_MM=0.
if MM15_11=1 or FB22_2=1 SAVE_MM=1.

compute SAVE_MFI=0. 
if (IFI10_7<7 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_7<7) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_7<7) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_7<7 or FB22_4=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if fb22_7=1 or fb22_10=1 or fb22_11=1 save_cash_property=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_10 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL = 0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 or fb22_5=1 SAVE_FORMAL=1.
compute SAVE_INFML = 0.
if fb22_6=1 or fb22_8=1 or fb22_9=1 or fb22_10=1 SAVE_INFML=1.

compute SAVE_BANK=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) SAVE_BANK=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
compute SAVE_GROUP=0.
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1) SAVE_GROUP=1.
compute SAVE_POST=0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1 or FB22_3=1) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
*From here on, save_cash_property is newly derived, i.e. not found in prior syntax.
if fb22_7=1 or fb22_11=1 or fb22_12=1 save_cash_property=1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_6 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_HOUSE.


save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).
*SKI derivation method test- Mitchell. Replace if incorrect.
 * count SAVE_KNOW_INTEREST = FB22_1 to FB22_7 (lo thru 98 100 thru hi).
 * recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7  FB23_9 FB23_10 FB23_11 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_5=1 or fb22_7=1 or fb22_9=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_4=1 or fb22_6=1 or fb22_10=1 or fb22_11=1 SAVE_INFML=1.

compute SAVE_BANK=0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) SAVE_BANK=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_2=1) SAVE_MFI=1.
numeric SAVE_COOP. 
compute SAVE_GROUP=0. 
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_9=1) SAVE_GROUP=1.
compute SAVE_POST = 0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1 or fb22_3=1) SAVE_POST=1.
numeric SAVE_SACCO.

*doesn't include "buying things", but "gold". May not be enough to be compatible.
*count SAVE_CASH_PROPERTY= FB22_8 FB22_12.
compute SAVE_CASH_PROPERTY = 0.
if fb22_8=1 or fb22_12=1 SAVE_CASH_PROPERTY=1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY=0.
if FB26_6 = 1 or FB26_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_HOUSE.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_7 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).
*no formal/infml designation known.
compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_4=1 or fb22_6=1 or fb22_7=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or FB22_1=1) SAVE_BANK=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 FB22_2(1).
recode SAVE_MM (1 thru highest = 1)(else = 0).

numeric SAVE_MFI.
compute SAVE_COOP = 0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST = 0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
numeric SAVE_SACCO.

count SAVE_CASH_PROPERTY= FB22_5 FB22_8 FB22_9 (1).
recode SAVE_CASH_PROPERTY (1 thru highest = 1)(else = 0).

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_6 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_HOUSE.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest = 1) (else = 0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP = 0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST = 0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
compute SAVE_SACCO = 0.
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_6 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_HOUSE.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.

count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest = 1) (else = 0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
compute SAVE_GROUP=0. 
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_6 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_7=1 or fb22_8=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) SAVE_BANK=1.

count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP = 0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
compute SAVE_GROUP = 0.
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1) SAVE_GROUP=1.
compute SAVE_POST = 0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
numeric SAVE_SACCO.

count SAVE_CASH_PROPERTY= FB22_6 FB22_9 FB22_10 (1).
recode SAVE_CASH_PROPERTY (1 thru hi = 1)(else=0).

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_6 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (2,sysmis=0) into SAVE_HOUSE.


save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).
count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.
*semi-formal is derived in syntax, but not formal?.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2(1).
recode SAVE_MM (1 thru hi = 1) (else = 0).

compute SAVE_MFI=0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
compute SAVE_SACCO=0.
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FB22_11 = 1 or FB22_10 = 1 or FB22_7 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_FAMILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_11 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_12 (1=1) (2,sysmis=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (ELSE=0) into SAVE_HOUSE.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga16.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_96 (1).
recode SAVE (1 thru highest=1) (else=0).
count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 FB23_7 Fb23_8 Fb23_9 FB23_96 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

compute SAVE_BANK = 0.
IF (FF14_16=1 or FF14_17=1 or FF14_18=1 or fb22_1=1) save_bank=1.
count SAVE_MM=MM15_16 MM15_17 MM15_18 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if (IFI10_16=1 or IFI10_17=1 or IFI10_18=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0.
if (IFI11_16=1 or IFI11_17=1 or IFI11_18=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0.
if (IFI13_16=1 or IFI13_17=1 or IFI13_18=1) SAVE_POST=1.
compute SAVE_SACCO=0.
if (IFI12_16=1 or IFI12_17=1 or IFI12_18=1 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (else=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (else=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (else=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (else=0) into SAVE_PRESTIGE.
recode FB26_7 (1=1) (else=0) into SAVE_FAMILY.
recode FB26_8 (1=1) (else=0) into SAVE_EMERGENCY.
recode FB26_9 (1=1) (else=0) into SAVE_DAILY.
recode FB26_10 (1=1) (else=0) into SAVE_COMMUNITY.
recode FB26_11 (1=1) (else=0) into SAVE_CHILDREN_EDU.
recode FB26_12 (1=1) (else=0) into SAVE_WEDDING.
recode FB26_5 (1=1) (else=0) into SAVE_HOUSE.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=Fb23_1 Fb23_2 FB23_3 FB23_4 FB23_5 FB23_6 Fb23_8 Fb23_9 FB23_10 FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 or fb22_6=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_8=1 or fb22_9=1 or fb22_10=1 SAVE_INFML=1.

count SAVE_BANK=ff14_17 ff14_18 fb22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_17 mm15_18 fb22_4 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI = 0.
if (IFI10_17=1 or IFI10_18=1 or fb22_2=1) save_mfi=1.
numeric SAVE_COOP.
compute SAVE_GROUP = 0.
if IFI12_17 = 1 or IFI12_18 = 1 SAVE_GROUP = 1.
compute SAVE_POST = 0.
if IFI11_17 = 1 or IFI11_18 = 1 or FB22_3 = 1 SAVE_POST = 1.
numeric SAVE_SACCO.

*Only cash + gold, no other assets listed.
compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY=0.
if FB25_5 = 1 or FB25_6 = 1 SAVE_FAMILY = 1.
recode FB25_11 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB25_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind15.

count SAVE=FB22_1 to FB22_13 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=FB23_1 to FB23_13 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_5=1 or fb22_7=1 or fb22_9=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_4=1 or fb22_6=1 or fb22_10=1 or fb22_11=1 SAVE_INFML=1.

count SAVE_BANK=ff14_17 ff14_18 FB22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm15_17 mm15_18 FB22_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_18=1 or IFI10_17=1 or fb22_2=1) SAVE_MFI=1.
numeric SAVE_COOP.
compute SAVE_GROUP = 0.
if IFI12_17 = 1 or IFI12_18 = 1 or fb22_9=1 SAVE_GROUP = 1.
compute SAVE_POST = 0.
if IFI11_17 = 1 or IFI11_18 = 1 or FB22_3 = 1 SAVE_POST = 1.
numeric SAVE_SACCO.
*"Buying things"and "in-kind assets" not an option but "gold" is.
compute SAVE_CASH_PROPERTY = 0.
if FB22_12 = 1 or FB22_8 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY=0.
if FB25_5 = 1 or FB25_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB25_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FB23_1 to FB23_10 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_4=1 or fb22_6=1 or fb22_7=1 SAVE_INFML=1.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 FB22_1(1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm15_18 to mm15_20 FB22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI. 
compute SAVE_COOP = 0.
if ifi11_18 = 1 or IFI11_19 = 1 or IFI11_20 = 1 SAVE_COOP = 1.
numeric SAVE_GROUP.
compute SAVE_POST = 0.
if ifi13_18 = 1 or IFI13_19 = 1 or IFI13_20 = 1 SAVE_POST = 1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if FB22_8 = 1 or FB22_9 = 1 or FB22_5 = 1 SAVE_CASH_PROPERTY = 1.

recode FB25_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FB25_5 = 1 or FB25_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB25_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru highest = 1)(else = 0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode SAVE_BANK (1 thru hi = 1)(else = 0).
count SAVE_MM = mm15_18 to mm15_20 fb22_2 (1).
recode SAVE_MM (1 thru hi = 1)(else = 0).

compute SAVE_MFI = 0.
if (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP = 0.
if (IFI11_18=1 or IFI11_19=1 or IFI11_20=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST = 0.
if (IFI13_18=1 or IFI13_19=1 or IFI13_20=1) SAVE_POST=1.
compute SAVE_SACCO= 0.
if (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7=1 or FB22_10=1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FB26_5 = 1 or FB26_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.


save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru highest = 1) (else = 0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_3=1 or fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_18 to mm15_20 fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0.
IF (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_18=1 or IFI11_19=1 or IFI11_20=1) SAVE_COOP=1.
compute SAVE_GROUP=0. 
if (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI13_18=1 or IFI13_19=1 or IFI13_20=1) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7=1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FB26_5 = 1 or FB26_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB26_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12 fb22_13 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FB23_1 to FB23_13 (1).
recode SAVE_KNOW_INTEREST (1 thru highest = 1)(else = 0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_5=1 or fb22_7=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_4=1 or fb22_6=1 or fb22_9=1 or fb22_10=1 or fb22_11=1 SAVE_INFML=1.

count SAVE_BANK=ff14_17 ff14_18 fb22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm15_17 mm15_18 fb22_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_17=1 or IFI10_18=1 or fb22_2=1) SAVE_MFI=1.
compute SAVE_GROUP=0. 
if (IFI12_17=1 or IFI12_18=1) SAVE_GROUP=1.
numeric SAVE_COOP.
compute SAVE_POST = 0.
if IFI11_17=1 or IFI11_18=1 or fb22_3=1 SAVE_POST = 1.
numeric SAVE_SACCO.
*only gold and cash.
compute SAVE_CASH_PROPERTY = 0.
if fb22_8 = 1 OR fb22_12 = 1 SAVE_CASH_PROPERTY = 1.
 
recode FB25_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FB25_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FB25_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FB25_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FB25_5 = 1 or FB25_6 = 1 SAVE_FAMILY = 1.
recode FB25_11 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FB25_7 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FB25_8 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FB25_9 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FB25_10 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 FB22_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm15_18 to mm15_20 Fb22_2 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or FB22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_18=1 or IFI11_19=1 or IFI11_20=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_18=1 or IFI13_19=1 or IFI13_20=1) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or FB22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FB22_7 = 1 or FB22_10 = 1 or FB22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (else=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (else=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (else=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (else=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FB26_5 = 1 or FB26_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (else=0) into SAVE_DAILY.
recode FB26_8 (1=1) (else=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (else=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (else=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga15.

count SAVE=FB22_1 FB22_2 FB22_3 FB22_4 FB22_5 FB22_6 FB22_7 FB22_8 FB22_9 FB22_10 Fb22_11 FB22_12(1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST=FB23_1 to FB23_12 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

compute SAVE_FORMAL=0.
if fb22_1=1 or fb22_2=1 or fb22_3=1 or fb22_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fb22_5=1 or fb22_6=1 or fb22_8=1 or fb22_9=1 SAVE_INFML=1.

count SAVE_BANK=ff14_18 ff14_19 ff14_20 fb22_1(1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm15_18 to mm15_20 fb22_2(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_18=1 or IFI10_19=1 or IFI10_20=1 or fb22_4=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_18=1 or IFI11_19=1 or IFI11_20=1) SAVE_COOP=1.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_18=1 or IFI13_19=1 or IFI13_20=1) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_18=1 or IFI12_19=1 or IFI12_20=1 or fb22_3=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if fb22_7= 1 or fb22_10 = 1 or fb22_11 = 1 SAVE_CASH_PROPERTY = 1.

recode FB26_1 (1=1) (else=0) into SAVE_BUSINESS.
recode FB26_2 (1=1) (else=0) into SAVE_EDUCATION.
recode FB26_3 (1=1) (else=0) into SAVE_RETIREMENT.
recode FB26_4 (1=1) (else=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY =0.
if FB26_5 = 1 or FB26_6 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FB26_7 (1=1) (else=0) into SAVE_DAILY.
recode FB26_8 (1=1) (else=0) into SAVE_COMMUNITY.
recode FB26_9 (1=1) (else=0) into SAVE_CHILDREN_EDU.
recode FB26_10 (1=1) (else=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 FL14_2 FL14_3 FL14_4 FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest = 1)(else = 0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_4=1 or fl13_5=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.
recode IFI11_4 (1=1) (2,sysmis=0) into SAVE_COOP.
recode IFI12_4 (1=1) (2,sysmis=0) into  SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.
numeric SAVE_SACCO.

*Question styles aren't equivalent.
compute SAVE_CASH_PROPERTY=0.
if fl13_6=1 SAVE_CASH_PROPERTY=1.

recode FL16_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY =0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ind14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 FL13_8 FL13_9 FL13_10 FL13_11 FL13_12 FL13_13 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 FL14_2 FL14_3 FL14_4 FL14_5 FL14_6 FL14_7 FL14_9 FL14_10 FL14_11 FL14_13(1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1)(else = 0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 or fl13_5=1 or fl13_7=1 or fl13_9=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_4=1 or fl13_6=1 or fl13_10=1 or fl13_11=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24 to ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_22 to mm19_24 FL13_5 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.
numeric SAVE_COOP.
compute SAVE_GROUP=0. 
if (IFI12_4=1 or FL13_9 = 1) SAVE_GROUP=1.
compute SAVE_POST=0. 
if (IFI11_4=1 or FL13_3 = 1) SAVE_POST=1.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if FL13_8 = 1 or FL13_12 = 1 SAVE_CASH_PROPERTY = 1.

recode FL17_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL17_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL17_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL17_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL17_6 = 1 or FL17_7 = 1 SAVE_FAMILY = 1.
recode FL17_9 (1=1) (2,sysmis=0) into SAVE_EMERGENCY.
recode FL17_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL17_10 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL17_11 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL17_12 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ida14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 FL13_8(1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 FL14_2 FL14_3 FL14_4 FL14_5 FL14_6 FL14_7 FL14_8 (1).
recode SAVE_KNOW_INTEREST(1 thru highest  = 1)(else = 0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 or fl13_4=1 or fl13_5=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_6=1 or fl13_7=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1(1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_25 mm19_26 mm19_27 fl13_4(1).
recode SAVE_MM (1 thru highest=1)(else=0).

numeric SAVE_MFI. 
compute SAVE_COOP=0. 
if (IFI11_4=1 or fl13_3=1) SAVE_COOP=1.
numeric SAVE_GROUP. 
compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.
numeric SAVE_SACCO.
*no in-kind asset or "buying" option. Gold.
*count SAVE_CASH_PROPERTY= FL13_12 FL13_8 (1).
numeric SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY=0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE ken14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 FL13_8 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 FL14_2 FL14_3 FL14_4 FL14_5 FL14_8 (1).
recode SAVE_KNOW_INTEREST(1 thru highest = 1) (else = 0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 or fl13_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_5=1 or fl13_6=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3  (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.
recode IFI11_4 (1=1) (2,SYSMIS=0) into SAVE_COOP.
numeric SAVE_GROUP.
compute SAVE_POST=0. 
if (IFI13_4=1) SAVE_POST=1.
compute SAVE_SACCO=0. 
if (IFI12_4=1) SAVE_SACCO=1.

compute SAVE_CASH_PROPERTY = 0.
if FL13_7= 1 SAVE_CASH_PROPERTY = 1.

recode FL16_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE nga14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 FL14_2 FL14_3 FL14_4 FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_4=1 or fl13_5=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).

count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.
recode IFI12_4 (1=1)(2,sysmis=0) into SAVE_GROUP.
recode IFI13_4 (1=1)(2,sysmis=0) into SAVE_POST.
numeric SAVE_SACCO.

recode FL13_6 (1=1)(2,sysmis=0) into SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE pak14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST= FL14_1 FL14_2 FL14_3 fl14_4 FL14_7(1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_4=1 or fl13_5=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.
compute SAVE_GROUP=0. 
if (IFI12_4=1) SAVE_GROUP=1.
recode IFI13_4 (1=1)(2,sysmis=0) into SAVE_POST.
numeric SAVE_SACCO.

recode FL13_6 (1=1)(2,sysmis=0) into SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (2,sysmis=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (2,sysmis=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (2,sysmis=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (2,sysmis=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (2,sysmis=0) into SAVE_DAILY.
recode FL16_9 (1=1) (2,sysmis=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (2,sysmis=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (2,sysmis=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE tza14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 FL14_2 FL14_3 FL14_4 FL13_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 or fl13_4=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_5=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 FL13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3(1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or FL13_2=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.
numeric SAVE_GROUP.
recode IFI13_4 (1=1)(else=0) into SAVE_POST.
recode IFI12_4 (1=1)(else=0) into SAVE_SACCO.

recode FL13_6 (1=1)(else=0) into SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (else=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (else=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (else=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (else=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (else=0) into SAVE_DAILY.
recode FL16_9 (1=1) (else=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (else=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (else=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


DATASET ACTIVATE uga14.

count SAVE=FL13_1 FL13_2 FL13_3 FL13_4 FL13_5 FL13_6 FL13_7 (1).
recode SAVE (1 thru highest=1) (else=0).

count SAVE_KNOW_INTEREST = FL14_1 FL14_2 FL14_3 FL14_4 FL14_7 (1).
recode SAVE_KNOW_INTEREST (1 thru highest=1) (else=0).

compute SAVE_FORMAL=0.
if fl13_1=1 or fl13_2=1 or fl13_3=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if fl13_4 or fl13_5=1 SAVE_INFML=1.

count SAVE_BANK=ff19_24  ff19_25 ff19_26 fl13_1 (1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=mm19_24 mm19_25 mm19_26 FL13_3 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

compute SAVE_MFI=0. 
if (IFI10_4=1 or fl13_2=1) SAVE_MFI=1.
compute SAVE_COOP=0. 
if (IFI11_4=1) SAVE_COOP=1.
numeric SAVE_GROUP.
recode IFI13_4 (1=1)(else=0) into SAVE_POST.
recode IFI12_4 (1=1)(else=0) into SAVE_SACCO.

recode FL13_6 (1=1)(else=0) into SAVE_CASH_PROPERTY.

recode FL16_1 (1=1) (else=0) into SAVE_BUSINESS.
recode FL16_2 (1=1) (else=0) into SAVE_EDUCATION.
recode FL16_3 (1=1) (else=0) into SAVE_RETIREMENT.
recode FL16_4 (1=1) (else=0) into SAVE_PRESTIGE.
compute SAVE_FAMILY = 0.
if FL16_6 = 1 or FL16_7 = 1 SAVE_FAMILY = 1.
numeric SAVE_EMERGENCY.
recode FL16_8 (1=1) (else=0) into SAVE_DAILY.
recode FL16_9 (1=1) (else=0) into SAVE_COMMUNITY.
recode FL16_10 (1=1) (else=0) into SAVE_CHILDREN_EDU.
recode FL16_11 (1=1) (else=0) into SAVE_WEDDING.
numeric SAVE_HOUSE.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR SAVE SAVE_KNOW_INTEREST SAVE_INFML SAVE_FORMAL SAVE_BANK SAVE_MM SAVE_MFI SAVE_COOP SAVE_GROUP SAVE_POST SAVE_CASH_PROPERTY 
 SAVE_BUSINESS SAVE_EDUCATION SAVE_RETIREMENT SAVE_PRESTIGE SAVE_SECURITY SAVE_EMERGENCY SAVE_DAILY SAVE_COMMUNITY SAVE_CHILDREN_EDU SAVE_WEDDING SAVE_HOUSE.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

count SAVE = SI1_1 to SI1_16 (1).
recode SAVE (1 thru hi = 1) (else = 0).

compute SAVE_KNOW_INTEREST=0.
if si2_1<999 or si2_2<999 or si2_3<999 or si2_6<999 or si2_7<999 or si2_8<999 or
   si2_9<999 or si2_10<999 or si2_11<999 or si2_12<999 or si2_13<999 or si2_14<999 or si2_15<999 or si2_16<999 SAVE_KNOW_INTEREST=1.

compute SAVE_FORMAL=0.
if si1_1=1 or si1_2=1 or si1_6=1 or si1_12=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if si1_7=1 or si1_8=1 or si1_14=1 or si1_15=1 or si1_16=1 SAVE_INFML=1.
*Bank and MFI are connected, so can't use either.
count SAVE_BANK=FFI16U FFI16V(1).
recode SAVE_BANK (1 thru highest=1)(else=0).
count SAVE_MM=MM16U MM16V SI1_12 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

numeric SAVE_MFI.
recode SI1_6 (1=1)(2,sysmis=0) into SAVE_COOP.
numeric SAVE_GROUP.
numeric SAVE_POST.
*buying in-kind is technically through "gold, precious metals, jewelery".
compute SAVE_CASH_PROPERTY = 0.
if SI1_3 = 1 or SI1_13 = 1 SAVE_CASH_PROPERTY = 1.
numeric SAVE_SACCO.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

compute SAVE_FORMAL=0.
if FB7_3_1=1 or FB7_3_2=1 or FB7_3_3=1 or FB7_3_6=1 or FB7_3_7=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if FB7_3_4=1 or FB7_3_5=1 or FB7_3_8=1 or FB7_3_9=1 or FB7_3_13=1 or FB7_3_14=1 or FB7_3_15=1 or FB7_3_16=1 or FB7_3_17=1 SAVE_INFML=1.
* FB7.3.1 includes cooperatives in "bank" definition.
compute SAVE_BANK = 0.
if FFI16_21 = 1 or FFI16_22 = 1 or FB7_3_1=1 SAVE_BANK = 1.

count SAVE_MM=MM16_21 MM16_22 FB7_3_6 (1).
recode SAVE_MM (1 thru highest=1)(else=0).

recode FB7_3_2 (1=1) (2,sysmis=0) into SAVE_MFI.
numeric SAVE_COOP.
recode FB7_3_3 (1=1)(2,sysmis=0) into SAVE_GROUP.
recode FB7_3_7 (1=1)(2,sysmis=0) into SAVE_POST.
numeric SAVE_SACCO.

*No cash/asset option, only gold.
compute SAVE_CASH_PROPERTY=0.
if FB7_3_11=1 SAVE_CASH_PROPERTY=1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

numeric SAVE.
numeric SAVE_KNOW_INTEREST.
numeric SAVE_FORMAL.
numeric SAVE_INFML.
count SAVE_BANK=FFI16U FFI16V(1).
recode SAVE_BANK (1 thru hi = 1) (else = 0).
count SAVE_MM=MM16U MM16V(1).
recode SAVE_MM (1 thru hi = 1) (else = 0).

numeric SAVE_MFI.
numeric SAVE_COOP.
numeric SAVE_GROUP.
numeric SAVE_POST.
numeric SAVE_CASH_PROPERTY.
numeric SAVE_SACCO.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE = SI1_1 to SI1_16 (1).
recode SAVE (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST = SI2_1 to SI2_16 (1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

compute SAVE_FORMAL=0.
if si1_1=1 or si1_2=1 or si1_6=1 or si1_12=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if si1_4=1 or si1_5=1 or si1_7=1 or si1_8=1 or si1_14=1 or si1_15=1 or si1_16=1 SAVE_INFML=1.

count SAVE_BANK=FFI16U FFI16V(1).
recode SAVE_BANK (1 thru hi = 1) (else = 0).
count SAVE_MM=MM16U MM16V si1_12(1).
recode SAVE_MM (1 thru hi = 1) (else = 0).
*Bank+MFI combined.
numeric SAVE_MFI.
recode SI1_6 (1=1)(2,sysmis=0) into SAVE_COOP.
*Village Saving/Loan mentioned, but not specifically savings.
numeric SAVE_GROUP.
numeric SAVE_POST.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY = 0.
if SI1_3 = 1 or SI1_13 = 1 SAVE_CASH_PROPERTY = 1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

count SAVE = SI1_1 to SI1_18 (1).
recode SAVE (1 thru hi = 1) (else = 0).

count SAVE_KNOW_INTEREST = SI2_1 to SI2_18(1).
recode SAVE_KNOW_INTEREST (1 thru hi = 1) (else = 0).

compute SAVE_FORMAL=0.
if si1_1=1 or si1_2=1 or si1_6=1 or si1_12=1 SAVE_FORMAL=1.
compute SAVE_INFML=0.
if si1_4=1 or si1_5=1 or si1_7=1 or si1_8=1 or si1_14=1 or si1_17=1 SAVE_INFML=1.

count SAVE_BANK=FFI16U FFI16V(1).
recode SAVE_BANK (1 thru hi = 1) (else = 0).
count SAVE_MM=MM16U MM16V si1_12(1).
recode SAVE_MM (1 thru hi = 1) (else = 0).

numeric SAVE_MFI.
numeric SAVE_GROUP.
recode SI1_6 (1=1) (2=0) into SAVE_COOP.
numeric SAVE_POST.
numeric SAVE_SACCO.

compute SAVE_CASH_PROPERTY =0.
if SI1_3 = 1 or SI1_13 = 1 or si1_18=1 SAVE_CASH_PROPERTY = 1.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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
numeric SAVE.
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
numeric SAVE_SACCO.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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
numeric SAVE.
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
numeric SAVE_SACCO.
numeric SAVE_CASH_PROPERTY.

numeric SAVE_BUSINESS.
numeric SAVE_EDUCATION.
numeric SAVE_RETIREMENT.
numeric SAVE_PRESTIGE.
numeric SAVE_FAMILY.
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

*Labels.
variable labels
SAVE	"Ever saved money"
SAVE_KNOW_INTEREST	"Know the interest rate earned on saving"
SAVE_INFML	"Ever saved with informal institution"
SAVE_FORMAL	"Ever saved with formal institution"
SAVE_BANK	"Ever saved money with bank"
SAVE_MM	"Ever saved money with mobile money"
SAVE_MFI	"Ever saved money with MFI"
SAVE_COOP	"Ever saved money with cooperative"
SAVE_GROUP	"Ever saved money with savings group"
SAVE_POST	"Ever saved money with post office bank"
SAVE_SACCO	"Ever saved money with SACCO"
SAVE_CASH_PROPERTY	"Ever saved with cash or property"
SAVE_BUSINESS	"Prupose to save: Start/expand your own business"
SAVE_EDUCATION	"Purpose to save: Education for yourself"
SAVE_RETIREMENT	"Purpose to save: Get ready for retirement"
SAVE_PRESTIGE	"Purpose to save: Buy expensive and prestigious things such as an expensive car, jewelry, designer clothes, high-end electronics, big house"
SAVE_FAMILY	"Purpose to save: Protect your family from poverty and crime/protect your belongings"
SAVE_EMERGENCY	"Purpose to save: In case of emergency"
SAVE_DAILY	"Purpose to save: Just make ends meet on a daily basis"
SAVE_COMMUNITY	"Purpose to save: Give back to your community by giving out money, creating a charitable organization (e.g., orphanage, senior home, free school, etc.), or creating jobs "
SAVE_CHILDREN_EDU	"Purpose to save: Build children’s fund for education"
SAVE_WEDDING	"Purpose to save: Build children’s fund for wedding (the ceremony and/or dowry)"
SAVE_HOUSE	"Purpose to save: Save for a house(Improvements/Buying/Building)".

value labels SAVE 1"Yes" 0"No".
value labels SAVE_KNOW_INTEREST 1"Yes" 0"No".
value labels SAVE_INFML 1"Yes" 0"No".
value labels SAVE_FORMAL 1"Yes" 0"No".
value labels SAVE_BANK 1"Yes" 0"No".
value labels SAVE_MM 1"Yes" 0"No".
value labels SAVE_MFI 1"Yes" 0"No".
value labels SAVE_COOP 1"Yes" 0"No".
value labels SAVE_GROUP 1"Yes" 0"No".
value labels SAVE_POST 1"Yes" 0"No".
value labels SAVE_SACCO 1"Yes" 0"No".
value labels SAVE_CASH_PROPERTY 1"Yes" 0"No".
value labels SAVE_BUSINESS 1"Yes" 0"No".
value labels SAVE_EDUCATION 1"Yes" 0"No".
value labels SAVE_RETIREMENT 1"Yes" 0"No".
value labels SAVE_PRESTIGE 1"Yes" 0"No".
value labels SAVE_FAMILY 1"Yes" 0"No".
value labels SAVE_EMERGENCY 1"Yes" 0"No".
value labels SAVE_DAILY 1"Yes" 0"No".
value labels SAVE_COMMUNITY 1"Yes" 0"No".
value labels SAVE_CHILDREN_EDU 1"Yes" 0"No".
value labels SAVE_WEDDING 1"Yes" 0"No".
value labels SAVE_HOUSE 1"Yes" 0"No".



