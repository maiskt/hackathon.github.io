﻿* Encoding: UTF-8.
*Section 7.2.
cd "C:/Users/shueym/Documents".
*2018---------------------------------------------------------------------***.
DATASET ACTIVATE bng18.
compute MM_TRANSFER = 99.
if AD1_4 = 1 or AD1_4 = 1 MM_TRANSFER = 1.
if AD1_4 = 2 or AD1_4 = 2 MM_TRANSFER = 0.
MISSING VALUES MM_TRANSFER (99).

compute MM_MERCHANT = 99.
if AD2_4 = 1 MM_MERCHANT = 1. 
if AD2_4 = 2 MM_MERCHANT = 0.
MISSING VALUES MM_MERCHANT (99).

compute MM_BILL = 99.
if AD3_4 = 1 MM_BILL = 1. 
if AD3_4 = 2 MM_BILL = 0.
MISSING VALUES MM_BILL (99).

compute MM_GOV = 99.
if AD6_4 = 1 MM_GOV = 1.
if AD6_4 = 2 MM_GOV = 2.
MISSING VALUES MM_GOV (99).

compute MM_WAGE = 99.
if AD7_4 = 1 MM_WAGE = 1.
if AD7_4 = 2 MM_WAGE = 0.
MISSING VALUES MM_WAGE (99).

compute MM_INSURANCE = 99.
if AD8_4 = 1 MM_INSURANCE = 1.
if AD8_4 = 2 MM_INSURANCE = 0.
MISSING VALUES MM_INSURANCE (99).

compute MM_SAVE = 99.
if AD9_4 = 1 MM_SAVE = 1.
if AD9_4 = 2 MM_SAVE = 0.
MISSING VALUES MM_SAVE (99).

COMPUTE MM_INVEST = 99.
IF AD10_20 = 1 MM_INVEST = 1.
IF AD10_20 = 2 MM_INVEST = 0.
MISSING VALUES MM_SAVE (99).

COMPUTE ACTIVE_MM_LOAN = 99.
IF AD11_6 = 1 ACTIVE_MM_LOAN = 1.
IF AD11_6 = 2 ACTIVE_MM_LOAN = 0.

*ACTIVE.

compute ACTIVE_MM_TRANSFER = 99.
if AD1_15 le 4  ACTIVE_MM_TRANSFER = 1.
if AD1_15 gt 4 ACTIVE_MM_TRANSFER = 0.
MISSING VALUES ACTIVE_MM_TRANSFER (99).


compute ACTIVE_MM_MERCHANT = 99.
if AD2_14 le 4 ACTIVE_MM_MERCHANT = 1. 
if AD2_14 gt 4 ACTIVE_MM_MERCHANT = 0.
MISSING VALUES ACTIVE_MM_MERCHANT (99).

compute ACTIVE_MM_BILL = 99.
if AD3_14 le 4 ACTIVE_MM_BILL = 1. 
if AD3_14 gt 4 ACTIVE_MM_BILL = 0.
MISSING VALUES ACTIVE_MM_BILL (99).

compute ACTIVE_MM_GOV = 99.
if AD6_13 le 4 ACTIVE_MM_GOV = 1.
if AD6_13 gt 4 ACTIVE_MM_GOV = 2.
MISSING VALUES ACTIVE_MM_GOV (99).

compute ACTIVE_MM_WAGE = 99.
if AD7_13 le 4 ACTIVE_MM_WAGE = 1.
if AD7_13 gt 4 ACTIVE_MM_WAGE = 0.
MISSING VALUES ACTIVE_MM_WAGE (99).

compute ACTIVE_MM_INSURANCE = 99.
if AD8_14 le 4 ACTIVE_MM_INSURANCE = 1.
if AD8_14 gt 4 ACTIVE_MM_INSURANCE = 0.
MISSING VALUES ACTIVE_MM_INSURANCE (99).

compute ACTIVE_MM_SAVE = 99.
if AD9_18 le 4 ACTIVE_MM_SAVE = 1.
if AD9_18 gt 4 ACTIVE_MM_SAVE = 0.
MISSING VALUES ACTIVE_MM_SAVE (99).

COMPUTE ACTIVE_MM_INVEST = 99.
IF AD10_30 le 4 ACTIVE_MM_INVEST = 1.
IF AD10_30 gt 4 ACTIVE_MM_INVEST = 0.
MISSING VALUES ACTIVE_MM_SAVE (99).

COMPUTE ACTIVE_MM_LOAN = 99.
IF AD11_20 le 4 ACTIVE_MM_LOAN = 1.
IF AD11_20 gt 4 ACTIVE_MM_LOAN = 0.

*can't find airtime/phone bill question.

save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER
MM_MERCHANT MM_BILL MM_GOV
 MM_WAGE MM_INSURANCE MM_SAVE
MM_INVEST MM_LOAN MM_AIRTIME
ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL
ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE
ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind18.

save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*2017---------------------------------------------------------------------***.
DATASET ACTIVATE bng17.
compute MM_TRANSFER = 0.
if MM18_1 ne 5 AND MM18_1 ne 99 AND MM18_2 ne 5 AND MM18_2 ne 99 MM_TRANSFER = 1.


compute MM_AIRTIME = 99.
if MM15_2 = 1 MM_AIRTIME = 1.

compute MM_ACTIVE_AIRTIME
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind17.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken17.

save outfile = "data/ken17.sav"
compute MM_ACTIVE_AIRTIME
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind17.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken17.

/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE nga17.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE pak17.

save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE tza17.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE uga17.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*2016---------------------------------------------------------------------***.
DATASET ACTIVATE bng16.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind16.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ida16.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken16.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE nga16.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE pak16.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE tza16.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE uga16.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*2015---------------------------------------------------------------------***.
DATASET ACTIVATE bng15.

save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind15.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ida15.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken15.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE nga15.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE pak15.

save outfile = "data/kpak15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE tza15.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE uga15.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*2014---------------------------------------------------------------------***.
DATASET ACTIVATE bng14.

save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind14.

save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ida14.

save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken14.

save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE nga14.

save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE pak14.

save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE tza14.

save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE uga14.

save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*2013---------------------------------------------------------------------***.
DATASET ACTIVATE bng13.

save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ind13.

save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE ken13.

save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE nga13.

save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR UR.

DATASET ACTIVATE pak13.

save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

DATASET ACTIVATE tza13.

save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER.

DATASET ACTIVATE uga13.

save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR MM_TRANSFER MM_MERCHANT MM_BILL MM_GOV  MM_WAGE MM_INSURANCE MM_SAVE MM_INVEST MM_LOAN MM_AIRTIME ACTIVE_MM_TRANSFER ACTIVE_MM_MERCHANT ACTIVE_MM_BILL ACTIVE_MM_GOV ACTIVE_MM_WAGE ACTIVE_MM_INSURANCE ACTIVE_MM_SAVE ACTIVE_MM_INVEST ACTIVE_MM_LOAN ACTIVE_MM_AIRTIME.

*dataset close all.
