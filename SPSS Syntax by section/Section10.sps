﻿* Encoding: UTF-8.
*Section 10.
dataset close all.
insert file = "C:/Users/mitchell.shuey/Documents/GitHub/Codebook/SPSS Syntax by Section/Dataset Loading Syntax.sps".
cd "C:/Users/mitchell.shuey/Documents".

*2018---------------------------------------------------------------------***.

DATASET ACTIVATE bng18.

LOAN.
LOAN_CURRENT.
LOAN_INTEREST.
LOAN_INFML.
LOAN_FORMAL.
LOAN_STORE.
LOAN_CREDITCARD.
LOAN_BANK.
IF (ad11_2=1 or ad11_3=1 or ad11_4=1 or ad11_5=1) loan_bank=1.
LOAN_MM.
LOAN_MFI.
LOAN_COOP.
LOAN_MLENDER.
LOAN_PAWN.
LOAN_GROUP.
LOAN_POST.
.
LOAN_SACCO.

LOAN_EMERGENCY.
LOAN_DAILY.
LOAN_BUSINESS.
LOAN_HOME.
LOAN_AGRIC.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind18.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2017---------------------------------------------------------------------***.

DATASET ACTIVATE bng17.

save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind17.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken17.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga17.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak17.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza17.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga17.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2016---------------------------------------------------------------------***.

DATASET ACTIVATE bng16.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind16.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida16.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken16.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga16.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak16.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza16.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga16.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2015---------------------------------------------------------------------***.

DATASET ACTIVATE bng15.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind15.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida15.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken15.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga15.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak15.

save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza15.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga15.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2014---------------------------------------------------------------------***.

DATASET ACTIVATE bng14.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind14.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ida14.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken14.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga14.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak14.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza14.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga14.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ind13.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE ken13.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE nga13.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE pak13.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE tza13.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


DATASET ACTIVATE uga13.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR LOAN LOAN_CURRENT LOAN_INTEREST LOAN_INFML LOAN_FORMAL LOAN_STORE LOAN_CREDITCARD LOAN_BANK LOAN_MM LOAN_MFI LOAN_COOP LOAN_MLENDER LOAN_PAWN LOAN_GROUP LOAN_POST LOAN_SACCO LOAN_EMERGENCY LOAN_DAILY LOAN_BUSINESS LOAN_HOME LOAN_AGRIC.


*dataset close all.