* Encoding: UTF-8.
*Section 10.
dataset close all.
insert file = "C:/Users/LENOVO/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/LENOVO/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

recode AD11 (1=1) (else=0) into LOAN.
numeric LOAN_CURRENT.
numeric LOAN_INTEREST.
compute LOAN_INFML = 0.
if ad11_9=1 or ad11_10=1 or ((FN5_2=2 or FN5_4=2) and ad11_11=1) or ((FN6_2=2 or FN6_4=2) and ad11_12=1)  LOAN_INFML=1.

compute LOAN_FORMAL=0.
IF ad11_2=1 or ad11_3=1 or ad11_4=1 or ad11_5=1 or
    ad11_6=1 or 
   (ad11_7=1 or ad11_8=1 or (FN5_1=1 and FN5_4=1 and ad11_11=1) or (FN6_1=1 and FN6_4=1 and ad11_12=1) or ad11_13=1) LOAN_FORMAL=1.

recode AD11_1 (1=1) (else=0) into LOAN_STORE.
recode AD11_2 (1=1) (else=0) into LOAN_CREDITCARD.
recode AD11_7 (1=1) (else=0) into LOAN_MFI.
recode AD11_8 (1=1) (else=0) into LOAN_COOP.
recode AD11_9 (1=1) (else=0) into LOAN_MLENDER.
recode AD11_10 (1=1) (else=0) into LOAN_PAWN.
compute LOAN_GROUP=0.
if ad11_11=1 or ad11_12=1 LOAN_GROUP=1.
recode AD11_13 (1=1) (else=0) into LOAN_POST.
numeric LOAN_SACCO.
*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
recode FB19_5 (1=1) (else=0) into LOAN_AGRIC.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind18.

recode AD11 (1=1) (else=0) into LOAN.
numeric LOAN_CURRENT.
numeric LOAN_INTEREST.
compute LOAN_INFML=0.
if ad11_4=1 or ad11_5=1 or ((FN6_2=2 OR FN6_3=2) and AD11_6=1) LOAN_INFML=1.

compute LOAN_FORMAL = 0.
if (ad11_2=1 or ad11_7=1 or ad11_12=1 or ad11_13=1 or ad11_14=1) or 
    ad11_11=1 or  
    ad11_3=1 or 
   (ad11_8=1 or ad11_9=1 or ad11_10=1 or (FN6_1=1 and FN6_3=1 and AD11_6=1)) LOAN_FORMAL=1.

recode AD11_1 (1=1) (else=0) into LOAN_STORE.
recode AD11_2 (1=1) (else=0) into LOAN_CREDITCARD.
recode AD11_3 (1=1) (else=0) into LOAN_MFI.
recode AD11_6 (1=1) (else=0) into LOAN_COOP.
recode AD11_4 (1=1) (else=0) into LOAN_MLENDER.
recode AD11_5 (1=1) (else=0) into LOAN_PAWN.
numeric LOAN_GROUP.
recode AD11_8 (1=1) (else=0) into LOAN_POST.
numeric LOAN_SACCO.

*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
recode FB19_5 (1=1) (else=0) into LOAN_AGRIC.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96(1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
*CM4?.
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
recode ifi20_2 (1=1)(else=0) into LOAN_INFML.	
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<=6 or FB16A_3=1) LOAN_MFI=1.
recode IFI11_6 (1 thru 6 = 1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
compute LOAN_GROUP=0.
if (IFI12_6<=6 or FB16A_4=1) LOAN_GROUP=1.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4 fb16a_5(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
recode ifi20_2(1=1)(else=0) into LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<=6 or FB16A_2=1) LOAN_MFI=1.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
compute LOAN_GROUP=0.
if (IFI12_6<=6 or FB16A_5=1) LOAN_GROUP=1.
compute LOAN_POST=0.
if (IFI11_6<=6 or FB16A_3=1) LOAN_POST=1.
numeric LOAN_SACCO.

*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
recode ifi20_2(1=1)(else=0) into LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<7 or FB16A_3=1) LOAN_MFI=1.
recode IFI11_6 (1 thru 6 = 1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
compute LOAN_SACCO=0.
if (IFI12_6<7 or FB16A_4=1) LOAN_SACCO=1.
*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
recode ifi20_2(1=1)(else=0) into LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<7 or FB16A_3=1) LOAN_MFI=1.
recode IFI11_6 (1 thru 6 = 1)(else=0) into LOAN_COOP.
*IFI12_6 asks about SACCOs for African countries.
numeric LOAN_GROUP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
compute LOAN_SACCO=0.
if (IFI12_6<7 or FB16A_4=1) LOAN_SACCO=1.
*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
numeric LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<7 or FB16A_3=1) LOAN_MFI=1.
recode IFI11_6 (1 thru 6 = 1)(else=0) into LOAN_COOP.
compute LOAN_GROUP=0.
if (IFI12_6<7 or FB16A_4=1) LOAN_GROUP=1.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza17.

count LOAN=FB13a(2 THRU 4).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
recode ifi20_2(1=1)(else=0) into LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<7 or fb16a_3=1) LOAN_MFI=1.
recode IFI11_6 (1 thru 6 = 1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
compute LOAN_SACCO=0.
if (IFI12_6<7 or fb16a_4=1) LOAN_SACCO=1.
*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga17.

count LOAN=FB13a(2 THRU 4).

count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (lo thru 98 100 thru hi).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = fb16a_1 fb16a_2 fb16a_3 fb16a_4 fb16a_5(1).	
recode LOAN_FORMAL (1 thru hi = 1)(else = 0).
recode ifi20_2(1=1)(else=0) into LOAN_INFML.	

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
compute LOAN_MFI=0.
if (IFI10_6<7 or FB16A_3=1) LOAN_MFI=1.
compute LOAN_COOP=0.
if (IFI11_6<7 or FB16A_5=1) LOAN_COOP=1.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_6 (1 thru 6 = 1)(else=0) into LOAN_POST.
compute LOAN_SACCO=0.
if (IFI12_6<7 or FB16A_4=1) LOAN_SACCO=1.
*In the last 12 months.
recode FB19_1 (1=1) (else=0) into LOAN_EMERGENCY.
recode FB19_2 (1=1) (else=0) into LOAN_DAILY.
recode FB19_3 (1=1) (else=0) into LOAN_BUSINESS.
recode FB19_4 (1=1) (else=0) into LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

count LOAN = FB16_1 to FB16_5 FB16_6 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_6 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_5(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_15 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI12_15 (1=1)(else=0) into LOAN_GROUP.
numeric LOAN_SACCO.
count LOAN_POST = FB16_4 IFI13_15 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_6 to FB16_8(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_5(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_2 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
numeric LOAN_COOP.
recode FB16_7 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_GROUP = FB16_6 IFI12_15 (1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
count LOAN_POST = FB16_3 IFI11_15 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_7 to FB16_15(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_12 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
*what is BPR?.
numeric LOAN_MFI.
count LOAN_COOP = FB16_4 IFI11_15 (1).
recode LOAN_COOP (1 thru hi = 1)(else=0).
recode FB16_11 (1=1)(else=0) into LOAN_MLENDER.
*Including both official and unofficial pawnshops  for now.
count LOAN_PAWN = FB16_5 IFI12_15(1) .
recode LOAN_PAWN (1 thru hi = 1)(else = 0).
count LOAN_POST = FB16_6 IFI13_15(1) .
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_GROUP.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_15(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_15 (1=1)(else=0) into LOAN_COOP. 
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
count LOAN_SACCO = IFI12_15 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).
recode IFI13_15 (1=1)(else=0) into LOAN_POST.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
count LOAN_COOP = IFI11_15 FB16_4 (1).
recode LOAN_COOP (1 thru hi = 1).
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_GROUP = IFI12_15(1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
recode IFI13_15 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_4 to FB16_12(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_3(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_9 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_15 (1=1)(else=0) into LOAN_COOP. 
recode FB16_8(1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_GROUP = FB16_6 IFI12_15 (1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
recode IFI13_15 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_15(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_15 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
count LOAN_SACCO = IFI12_15 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).
recode IFI13_15 (1=1)(else=0) into LOAN_POST.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga16.

count LOAN = FB16_1 to FB16_96 (1).
recode LOAN (1 thru hi = 1) (else = 0).
count LOAN_CURRENT = FB16A_1 to FB16A_96 (1).
recode LOAN_CURRENT (1 thru hi = 1) (else = 0).
count LOAN_INTEREST = FB17_1 to FB17_96 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
*and MDI?.
count LOAN_MFI = FB16_3 IFI10_15 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_15 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
count LOAN_SACCO = IFI12_15 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).
recode IFI13_15 (1=1)(else=0) into LOAN_POST.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

count LOAN = FB16_1 to FB16_9 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_9 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_6 to FB16_8(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_5(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_16 FB16_2 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
numeric LOAN_COOP.
recode FB16_7 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_GROUP = IFI12_16(1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
count LOAN_POST = IFI11_16 FB16_3 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind15.

count LOAN = FB16_1 to FB16_9 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_9 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_7 to FB16_8(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_16 FB16_2 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
numeric LOAN_COOP.
recode FB16_7 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_GROUP = IFI12_16 FB16_6 (1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
count LOAN_POST = IFI11_16 FB16_3 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida15.

count LOAN = FB16_1 to FB16_16 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_16 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_7 to FB16_15(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_12 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
count LOAN_COOP = IFI11_17 FB16_4 (1).
recode LOAN_COOP (1 thru hi = 1)(else = 0).
recode FB16_11 (1=1)(else=0) into LOAN_MLENDER.
*official and unofficial pawnshops.
count LOAN_PAWN = IFI12_17 FB16_5(1).
recode LOAN_PAWN (1 thru hi = 1)(else = 0).
numeric LOAN_GROUP.
count LOAN_POST = IFI13_17 FB16_6 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken15.

count LOAN = FB16_1 to FB16_15 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_15 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_17 FB16_3 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_17 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_17 (1 = 1)(else = 0) into LOAN_POST.
count LOAN_SACCO = IFI12_17 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga15.

count LOAN = FB16_1 to FB16_15 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_15 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_4 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_3(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_17 FB16_3 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_17 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
*ASCA and VSLA.
count LOAN_GROUP = IFI12_17(1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
recode IFI13_17 (1 = 1)(else = 0) into LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak15.

count LOAN = FB16_1 to FB16_9 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_9 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_6 to FB16_8(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_5(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_16 FB16_2 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
numeric LOAN_COOP.
recode FB16_7 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
recode ifi12_16 (1=1)(else=0) into LOAN_GROUP.
count LOAN_POST = IFI11_16 FB16_3 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza15.

count LOAN = FB16_1 to FB16_15 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_15 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_17 FB16_3 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_17 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
*Loan from a group, and Saving/lending group.
numeric LOAN_GROUP.
recode IFI13_17 (1 = 1)(else= 0) into LOAN_POST.
count LOAN_SACCO = IFI12_17 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga15.

count LOAN = FB16_1 to FB16_15 (1).
recode LOAN (1 thru hi = 1)(else = 0).
numeric LOAN_CURRENT.
count LOAN_INTEREST = FB17_1 to FB17_15 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FB16_5 to FB16_14(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL = FB16_1 to FB16_4(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

recode FB16_11 (1=1)(else=0) into LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = IFI10_17 FB16_3 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_17 (1=1)(else=0) into LOAN_COOP.
recode FB16_10 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
*ASCA.
numeric LOAN_GROUP.
recode IFI13_17 (1 = 1)(else = 0) into LOAN_POST.
count LOAN_SACCO = IFI12_17 FB16_4 (1).
recode LOAN_SACCO (1 thru hi = 1)(else = 0).

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.
count LOAN = FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7(1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI12_6 (1=1)(else=0) into LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into  LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind14.

count LOAN = FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7 FL10_8 FL10_9(1).
recode LOAN (1 thru hi = 1) (else = 0).
*Missing responses.
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 FL11_8 FL11_9(1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_7 FL10_8(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
*FL10_1 Includes cooperatives with banks according to description.
count LOAN_MFI = FL10_2 IFI10_6 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
numeric LOAN_COOP.
recode FL10_7 (1= 1)(else = 0) into LOAN_MLENDER.
numeric LOAN_PAWN.
count LOAN_POST = FL10_3 IFI11_6 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
count LOAN_GROUP = FL10_6 IFI12_6 (1).
recode LOAN_GROUP (1 thru hi = 1)(else = 0).
numeric LOAN_SACCO.

recode FL9_5 (1=1)(else=0) into LOAN_EMERGENCY.
recode FL9_1 (1=1)(else=0) into  LOAN_DAILY.
* LOAN_BUSINESS and AGRIC are combined.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida14.
*FB7_1 Includes "Gold"? What does this mean in a loan context?.
count LOAN =  FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7 FL10_8 FL10_9(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 FL11_8 FL11_9(1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_7 FL10_8(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
count LOAN_COOP = FL10_3 IFI11_6 (1) .
recode LOAN_COOP  (1 thru hi = 1)(else = 0).
numeric LOAN_MLENDER.
count LOAN_PAWN = FL10_4 IFI12_6 (1).
recode LOAN_PAWN (1 thru hi = 1)(else = 0).
count LOAN_POST = IFI13_6 (1).
recode LOAN_POST (1 thru hi = 1)(else = 0).
numeric LOAN_GROUP.
numeric LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into  LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken14.

count LOAN =FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1) .
recode LOAN_MFI  (1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
*FL10.5.Do you borrow money from any of the following?Informal financial service provider such as Chamas , village savings group etc.
numeric LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
recode IFI12_6 (1=1)(else=0) into LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga14.

count LOAN =FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1) .
recode LOAN_MFI  (1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI12_6 (1=1)(else=0) into LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak14.

count LOAN =FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1). 
recode LOAN_MFI(1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
recode IFI12_6 (1=1)(else=0) into LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza14.

count LOAN =FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
recode IFI12_6 (1=1)(else=0) into LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga14.

count LOAN =FL10_1 FL10_2 FL10_3 FL10_4 FL10_5 FL10_6 FL10_7(1).
recode LOAN (1 thru hi = 1) (else = 0).
recode FL7 (2 thru hi = 1)(else = 0) into LOAN_CURRENT.
count LOAN_INTEREST = FL11_1 FL11_2 FL11_3 FL11_4 FL11_5 FL11_6 FL11_7 (1).
recode LOAN_INTEREST (1 thru hi = 1) (else = 0).

count LOAN_INFML = FL10_1 FL10_2 FL10_3 FL10_4(1).
recode LOAN_INFML (1 thru hi = 1) (else = 0).
count LOAN_FORMAL =FL10_5 FL10_6(1).
recode LOAN_FORMAL (1 thru hi = 1) (else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
count LOAN_MFI = FL10_2 IFI10_6 (1).
recode LOAN_MFI (1 thru hi = 1)(else = 0).
recode IFI11_6 (1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
recode IFI13_6 (1=1)(else=0) into LOAN_POST.
recode IFI12_6 (1=1)(else=0) into LOAN_SACCO.

recode FL9(5=1)(else=0) into LOAN_EMERGENCY.
recode FL9(1=1)(else=0) into LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.
*BL1 is within last 12 months.
numeric LOAN.
numeric LOAN_CURRENT.
numeric LOAN_INTEREST.
numeric LOAN_INFML.
numeric LOAN_FORMAL.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind13.

count LOAN =FB7_1_1 to FB7_1_16 (1).
recode LOAN (1 thru hi = 1 )(else = 0).
numeric LOAN_CURRENT.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
count LOAN_FORMAL =FB7_1_1 FB7_1_2 FB7_1_3 FB7_1_6 FB7_1_7(1).
recode LOAN_FORMAL (1 thru hi = 1 )(else = 0).
count LOAN_INFML =FB7_1_4 FB7_1_5 FB7_1_8 to FB7_1_16(1).
recode LOAN_INFML (1 thru hi = 1 )(else = 0).

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
recode FB7_1_2 (1=1)(else=0) into LOAN_MFI.
numeric LOAN_COOP.
recode FB7_1_4 (1=1)(else=0) into LOAN_MLENDER.
numeric LOAN_PAWN.
recode FB7_1_3 (1=1)(else=0) into LOAN_GROUP.
recode FB7_1_7 (1=1)(else=0) into LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken13.

numeric LOAN.
numeric LOAN_CURRENT.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
numeric LOAN_INFML.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga13.

numeric LOAN.
numeric LOAN_CURRENT.
*BL6?.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
numeric LOAN_INFML.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak13.

numeric LOAN.
numeric LOAN_CURRENT.
*BL6?.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
numeric LOAN_INFML.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza13.

numeric LOAN.
numeric LOAN_CURRENT.
*BL6?.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
numeric LOAN_INFML.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga13.

numeric LOAN.
numeric LOAN_CURRENT.
*BL6?.
numeric LOAN_INTEREST.
numeric LOAN_FORMAL.
numeric LOAN_INFML.

numeric LOAN_STORE.
numeric LOAN_CREDITCARD.
numeric LOAN_MFI.
numeric LOAN_COOP.
numeric LOAN_MLENDER.
numeric LOAN_PAWN.
numeric LOAN_GROUP.
numeric LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL 
LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO 
LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


dataset close all.

*Labels.
variable labels
LOAN	"Ever borrowed money"
LOAN_CURRENT	"Currently have a loan with at least one organization"
LOAN_INTEREST	"Know interest rate paid on loans"
LOAN_INFML	"Ever borrowed money from a informal group"
LOAN_FORMAL		"Ever borrowed money or used credit from a formal financial institution"
LOAN_STORE	"Ever purchased something using credit from a store or shopkeeper"
LOAN_CREDITCARD	"Ever purchased something using a credit card"
LOAN_MFI	"Ever borrowed money or used credit from a MFI"
LOAN_COOP	"Ever borrowed money or used credit from a cooperative"
LOAN_MLENDER	"Ever borrowed money from a private moneylender"
LOAN_PAWN	"Ever borrowed money from a pawnshop"
LOAN_GROUP	"Ever borrowed money from a village savings and loan association"
LOAN_POST	"Ever borrowed money from a post office bank"
LOAN_SACCO	"Ever borrowed money from a SACCO"
LOAN_EMERGENCY	"Reason to borrow money: To pay for emergency expenses (e.g., medical bills)"
LOAN_DAILY	"Reason to borrow money: To pay for daily expenses (e.g., food, transportation, etc.)"
LOAN_BUSINESS	"Reason to borrow money: To pay business expenses or invest in a business"
LOAN_HOME	"Reason to borrow money: To invest in home improvement or construction"
LOAN_AGRIC	"Reason to borrow money: To pay for agricultural inputs".

value labels LOAN 1"Yes" 0"No".
value labels LOAN_CURRENT 1"Yes" 0"No".
value labels LOAN_INTEREST 1"Yes" 0"No".
value labels LOAN_INFML 1"Yes" 0"No".
value labels LOAN_FORMAL 1"Yes" 0"No".
value labels LOAN_STORE 1"Yes" 0"No".
value labels LOAN_CREDITCARD 1"Yes" 0"No".
value labels LOAN_MFI 1"Yes" 0"No".
value labels LOAN_COOP 1"Yes" 0"No".
value labels LOAN_MLENDER 1"Yes" 0"No".
value labels LOAN_PAWN 1"Yes" 0"No".
value labels LOAN_GROUP 1"Yes" 0"No".
value labels LOAN_POST 1"Yes" 0"No".
value labels LOAN_SACCO 1"Yes" 0"No".
value labels LOAN_EMERGENCY 1"Yes" 0"No".
value labels LOAN_DAILY 1"Yes" 0"No".
value labels LOAN_BUSINESS 1"Yes" 0"No".
value labels LOAN_HOME 1"Yes" 0"No".
value labels LOAN_AGRIC 1"Yes" 0"No".


