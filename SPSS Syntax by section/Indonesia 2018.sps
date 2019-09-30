* Encoding: windows-1252.
* Encoding: .
*Cross section - Indonesia 2018.
*************************************************************************************************************************************.
*Section 1.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2018.
compute CLUSTER=AA0.
compute UR=AA7.
*************************************************************************************************************************************.
*Section 2.
*Please use PPI syntax file for Indonesia 2018.
*************************************************************************************************************************************.
*Section 3.
compute AGE=2019-dg1.

recode AGE (15 thru 24=1)(25 thru 34=2)(35 thru 44=3)(45 thru 54=4)(55 thru highest=5) into AGE_GROUP.

recode dg4 (1=1)(2=2)(4,5=3)(6 thru 8=4)(-2,9 thru HIGHEST=5) into EDU.

compute LITERACY=0.
if ((LN1<=3) and (LN2_1>=3 or LN2_2>=3)) LITERACY=1.

numeric NUMERACY.
numeric FINANCIAL_LITERACY.

count digital_call=mt17_1(1 thru 6).
count digital_text=mt17_2 (1 thru 6).
count digital_adv=mt17_3 mt17_4 mt17_5(1 thru 6).
recode digital_call digital_text digital_adv (1 thru highest=1)(else=0).
compute DIGITAL_LITERACY_INDEX=0.
if (access_phone=0) DIGITAL_LITERACY_INDEX=0.
if (digital_call=1 and digital_text=0 and digital_adv=0) DIGITAL_LITERACY_INDEX=1.
if (digital_text=1 and digital_adv=0) DIGITAL_LITERACY_INDEX=2.
if (digital_adv=1) DIGITAL_LITERACY_INDEX=3.

compute GENDER=dg2.

numeric MARRIAGE.

count HAVE_CHILDREN=I_1_D3 I_2_D3 I_3_D3 I_4_D3 I_5_D3 I_6_D3 I_7_D3 I_8_D3 I_9_D3 I_10_D3(0 thru 17).
recode HAVE_CHILDREN (1 thru highest=1).

numeric SCHOOL_FEE.

compute EMPLOYMENT=dl1.

compute INVOL_AGRI=0.
if DL2=1 or DL2=2 or DL6=1 or DL4_1=1 or DL4_2=1 INVOL_AGRI=1.

compute OWN_FARM=0.
if DL6=1 OWN_FARM=1.

compute WORK_FARM=0.
if DL7=1 WORK_FARM=1.

 * compute SELL_CROP=0.
 * if DL4_1=1  or DL4_2=1 SELL_CROP=1.

compute ID=0.
if dg5_1=1 or dg5_3=1 or dg5_6=1 ID=1.  
*************************************************************************************************************************************.
*Section 4.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_7 MT12_8(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_3 to MT17_5 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

numeric PHONE_CALL.
numeric PHONE_R_CALL.
count PHONE_SMS=MT17_2 (1 thru 6).
count PHONE_INTERNET=MT17_3 (1 thru 6).
numeric PHONE_MVG.
numeric PHONE_TRANSACT.
count PHONE_SOCIAL=MT17_4 (1 thru 6).
numeric PHONE_PICTURE.
count PHONE_APP=MT17_5 (1 thru 6).
numeric PHONE_MMS.
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

compute R_NOPHONE1=0.
if MT9_1=1 R_NOPHONE1=1.
compute R_NOPHONE2=0.
if MT9_2=1 R_NOPHONE2=1.
compute R_NOPHONE3=0.
if MT9_3=1 R_NOPHONE3=1.
compute R_NOPHONE4=0.
if MT9_4=1 R_NOPHONE4=1.
compute R_NOPHONE5=0.
if MT9_5=1 R_NOPHONE5=1.
compute R_NOPHONE6=0.
if MT9_6=1 R_NOPHONE6=1.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
recode MT18A_6 (2 thru 4=1)(else=0) into ABLE_APP.
*************************************************************************************************************************************.
*Section 5.
compute ACCESS_FINANCIAL=0.
IF (OJK1_1=1 or OJK1_2=1 or OJK1_3=1 or OJK1_4=1 or OJK1_5=1 or OJK1_6=1 or OJK1_7=1 or OJK1_8=1 or OJK1_9=1 or OJK1_10=1 or 
     OJK1_11=1 or OJK1_12=1 or OJK1_13=1 or OJK1_14=1 or
     OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1 or 
     OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1 or 
     OJK11_1=1 or COP2=1 or 
     BI_E25D=1) ACCESS_FINANCIAL=1.

compute FI=0.
IF (FNX=1 and ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2) or OJK11_1=1 or COP2=1)) FI=1.

compute ACTIVE_FINANCIAL=0.
if (FNXA<=2 and ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2) or OJK11_1=1 or COP2=1)) ACTIVE_FINANCIAL=1.

compute ACCESS_FINANCIAL_ALL=0.
IF (OJK1_1=1 or OJK1_2=1 or OJK1_3=1 or OJK1_4=1 or OJK1_5=1 or OJK1_6=1 or OJK1_7=1 or OJK1_8=1 or OJK1_9=1 or OJK1_10=1 or 
     OJK1_11=1 or OJK1_12=1 or OJK1_13=1 or OJK1_14=1 or
     OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1 or 
     OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1 or 
     OJK11_1=1 or OJK11_2=1 or OJK11_3=1 or 
     OJK12_1=1 or OJK12_2=1 or OJK12_3=1 or OJK13_1=1 or OJK13_2=1 or OJK13_3=1 or 
     BI_E25D=1) ACCESS_FINANCIAL_ALL=1.

compute ACTIVE_FINANCIAL_ADV=0.
IF FNXA<=2 and ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2) or OJK11_1=1 or COP2=1) and (GF1=1 or GF2=1) ACTIVE_FINANCIAL_ADV=1.

compute ACTIVE30_FINANCIAL_ADV=0.
IF FNXA=1 and ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2) or OJK11_1=1 or COP2=1) and (GF1=1 or GF2=1) ACTIVE30_FINANCIAL_ADV=1.

numeric ACCESS_DFS_PAYMENT_TRANSFER.

compute ACCESS_DFS=0.
if (BPR1=2 or BPR2=2 or BPR3=1 or
    OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1 or 
    OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1 or 
  ((OJK11_1=1 or COP2=1) and COP1=1) or
    BI_E25D=1) ACCESS_DFS=1. 

compute REGISTERED_DFS=0.
if FNX=1 and 
 ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2 and sysmis(BPR1)) or 
 ((OJK11_1=1 or COP2=1) and COP1=1) or 
  (BPR1=2 or BPR2=2 or (BPR2=1 and BPR3=1))) REGISTERED_DFS=1. 

compute ACTIVE_DFS=0.
if FNXA<=2 and 
 ((OJK11_1=2 and OJK11_2=2 and OJK11_3=2 and sysmis(BPR1)) or 
 ((OJK11_1=1 or COP2=1) and COP1=1) or 
  (BPR1=2 or BPR2=2 or (BPR2=1 and BPR3=1))) ACTIVE_DFS=1.

compute ACTIVE_DFS_ADV=0.
IF FNXA<=2 and 
((OJK11_1=2 and OJK11_2=2 and OJK11_3=2 and sysmis(BPR1)) or 
((OJK11_1=1 or COP2=1) and COP1=1) or 
(BPR1=2 or BPR2=2 or (BPR2=1 and BPR3=1))) and
(GF1=1 or GF2=1) ACTIVE_DFS_ADV=1.

compute FINANCIAL_STAGE=0.
if ACCESS_FINANCIAL=1 FINANCIAL_STAGE=1.
if (FINANCIAL_STAGE=1 and FI=1) FINANCIAL_STAGE=2.
if (FINANCIAL_STAGE=2 and ACTIVE_FINANCIAL=1) FINANCIAL_STAGE=3.
if (FINANCIAL_STAGE=3 and ACTIVE_FINANCIAL_ADV=1) FINANCIAL_STAGE=4.
*************************************************************************************************************************************.
*Section 6.1.
count ACCESS_BANK=ojk1_1 ojk1_2 ojk1_3 ojk1_4 ojk1_5 ojk1_6 ojk1_7 ojk1_8 ojk1_9 ojk1_10 ojk1_11 ojk1_12 ojk1_13 ojk1_14(1).
recode ACCESS_BANK (1 THRU HIGHEST=1).

compute REGISTERED_BANK=0.
IF bi_e1a=1 or bi_e1b=1 or bi_e1c=1 or bi_e1v=1 REGISTERED_BANK=1.

count ACTIVE_BANK=ojk14_1 to ojk14_13(1 thru 2).
recode ACTIVE_BANK (1 THRU HIGHEST=1).

count ACTIVE30_BANK=ojk14_1 to ojk14_13(1).
recode ACTIVE30_BANK (1 THRU HIGHEST=1).

compute INACTIVE_BANK=0.
IF ((ojk14_1>2 or sysmis(OJK14_1)) and (ojk14_2>2 or sysmis(OJK14_2)) and (ojk14_3> 2 or sysmis(OJK14_3)) and (ojk14_4>2 or sysmis(OJK14_4)) and (ojk14_5>2 or sysmis(OJK14_5)) and
 (ojk14_6>2 or sysmis(OJK14_6)) and (ojk14_7>2 or sysmis(OJK14_7)) and (ojk14_8>2 or sysmis(OJK14_8)) and (ojk14_9>2 or sysmis(OJK14_9)) and
(ojk14_10>2 or sysmis(OJK14_10)) and (ojk14_12>2 or sysmis(OJK14_12)) and (ojk14_13>2 or sysmis(OJK14_13))) and (BI_E1A=1 or BI_E1B=1 or BI_E1C=1 or BI_E1V=1) INACTIVE_BANK=1.

count BANK_BASIC=ojk1_2 ojk1_4(1).
recode BANK_BASIC (1 THRU HIGHEST=1).

count BANK_ADV=ojk1_1 ojk1_3 ojk1_5 ojk1_6 ojk1_7 ojk1_8 ojk1_9 ojk1_10 ojk1_11 ojk1_12 ojk1_13(1).
recode BANK_ADV (1 THRU HIGHEST=1).

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
*************************************************************************************************************************************.
*Section 6.2.
count BANK_TRANSFER=ojk1_4(1).
numeric BANK_MERCHANT.
numeric BANK_BILL.
numeric BANK_GOV.
numeric BANK_WAGE.
numeric BANK_INSURANCE.
count BANK_SAVE=ojk1_1(1).
count BANK_INVEST=ojk1_12(1).
count BANK_LOAN=ojk1_5 ojk1_6 ojk1_7 ojk1_8 ojk1_9 ojk1_10(1).
recode BANK_LOAN (1 thru highest=1).
numeric BANK_AIRTIME.

count ACTIVE_BANK_TRANSFER=ojk14_4(1 thru 2).
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
count ACTIVE_BANK_SAVE=ojk14_1(1 thru 2).
count ACTIVE_BANK_INVEST=ojk14_12(1 thru 2).
count ACTIVE_BANK_LOAN=ojk14_5 ojk14_6 ojk14_7 ojk14_8 ojk14_9 ojk14_10(1,2).
recode ACTIVE_BANK_LOAN (1 thru highest=1).
numeric ACTIVE_BANK_AIRTIME.
*************************************************************************************************************************************.
*Section 6.3.
count R_NOBANK1=BI_E2A_G BI_E2B_G BI_E2C_G (1).
recode R_NOBANK1 (1 thru highest=1).
count R_NOBANK2=BI_E2A_E BI_E2B_E BI_E2C_E(1).
recode R_NOBANK2 (1 thru highest=1).
count R_NOBANK3=BI_E2A_B BI_E2A_I BI_E2A_J BI_E2B_B BI_E2B_I BI_E2B_J BI_E2C_B BI_E2C_I BI_E2C_J (1).
recode R_NOBANK3 (1 thru highest=1).
count R_NOBANK4=BI_E2A_D BI_E2B_D BI_E2C_D(1).
recode R_NOBANK4 (1 thru highest=1).
count R_NOBANK5=BI_E2A_F BI_E2B_F BI_E2C_F(1).
recode R_NOBANK5 (1 thru highest=1).

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

numeric USE_BANK_OTC.
numeric USE_BANK_ATM.
numeric USE_BANK_RETAIL.
numeric USE_BANK_ONLINE.
numeric USE_BANK_MOBILE.
numeric USE_BANK_AGENT.
numeric USE_BANK_WALLET.
*************************************************************************************************************************************.
*Section 7.1.
numeric AWARE_MM.

compute AWARE_MM_PROVIDER=0.
if bi_e24d=1 AWARE_MM_PROVIDER=1.

compute AWARE_NONUSER_MM=0.
if AWARE_MM_PROVIDER=1 and ACCESS_MM=0 AWARE_NONUSER_MM=1.

compute ACCESS_MM=0.
if BI_E25D=1 ACCESS_MM=1.

compute REGISTERED_MM=0.
if BI_E26D=1 REGISTERED_MM=1.

compute ACTIVE_MM=0.
if (BI_E26D=1 and GF3B<=2) ACTIVE_MM=1.

compute ACTIVE30_MM=0.
if (BI_E26D=1 and GF3B=1) ACTIVE30_MM=1.

compute INACTIVE_MM=0.
if registered_mm=1 and active_mm=0 INACTIVE_MM=1.

compute DORMANT_MM=0.
if registered_mm=1 and access_mm=0 DORMANT_MM=1.

compute OTC_MM=0.
if registered_mm=0 and access_mm=1 OTC_MM=1.

compute MM_BASIC=0.
if bi_e28d_b=1 or bi_e28d_d=1 MM_BASIC=1.

compute MM_ADV=0.
if bi_e28d_a=1 or bi_e28d_c=1 MM_ADV=1.

compute REG_MM_BASIC=0.
if REGISTERED_MM=1 and MM_BASIC=1 REG_MM_BASIC=1.

compute REG_MM_ADV=0.
if REGISTERED_MM=1 and MM_ADV=1 REG_MM_ADV=1.

compute ACTIVE_MM_BASIC=0.
if ACTIVE_MM=1 and MM_BASIC=1 ACTIVE_MM_BASIC=1.

compute ACTIVE_MM_ADV=0.
if ACTIVE_MM=1 and MM_ADV=1 ACTIVE_MM_ADV=1.

compute ACTIVE30_MM_ADV=0.
if ACTIVE30_MM=1 and MM_ADV=1 ACTIVE30_MM_ADV=1.

numeric LENGTH_MM.

compute MM_STAGE=0.
if access_mm=1 MM_STAGE=1.
if (MM_STAGE=1 and registered_mm=1) MM_STAGE=2.
if (MM_STAGE=2 and active_mm=1) MM_STAGE=3.
if (MM_STAGE=3 and ACTIVE_MM_ADV=1) MM_STAGE=4.
*************************************************************************************************************************************.
*Section 7.2.
compute MM_TRANSFER =0.
if bi_e28d_d=1 MM_TRANSFER=1.
compute MM_MERCHANT =0.
if bi_e28d_a=1 MM_MERCHANT=1. 
compute MM_BILL =0.
if bi_e28d_c=1 MM_BILL=1. 
numeric MM_GOV.
numeric MM_WAGE.
numeric MM_INSURANCE.
numeric MM_SAVE.
numeric MM_INVEST.
numeric MM_LOAN.
numeric MM_AIRTIME.

numeric ACTIVE_MM_TRANSFER.
numeric ACTIVE_MM_MERCHANT.
numeric ACTIVE_MM_BILL.
numeric ACTIVE_MM_GOV.
numeric ACTIVE_MM_WAGE.
numeric ACTIVE_MM_INSURANCE.
numeric ACTIVE_MM_SAVE.
numeric ACTIVE_MM_INVEST.
numeric ACTIVE_MM_LOAN.
numeric ACTIVE_MM_AIRTIME.
*************************************************************************************************************************************.
*Section 7.3.
numeric EXP_MA1.
numeric EXP_MA2.
numeric EXP_MA3.
numeric EXP_MA4.
numeric EXP_MA5.
numeric EXP_MA6.
numeric EXP_MA7.
numeric EXP_MA8.
numeric EXP_MA9.
numeric EXP_MA10.
numeric EXP_MA11.
numeric EXP_MA12.
numeric EXP_MA13.
numeric EXP_MA14.
numeric EXP_MA15.
numeric EXP_MA16.
numeric EXP_MA17.
numeric EXP_MA18.

numeric EXPSV_MA1.
numeric EXPSV_MA2.
numeric EXPSV_MA3.
numeric EXPSV_MA4.
numeric EXPSV_MA5.
numeric EXPSV_MA6.
numeric EXPSV_MA7.
numeric EXPSV_MA8.
numeric EXPSV_MA9.
numeric EXPSV_MA10.
numeric EXPSV_MA11.
numeric EXPSV_MA12.
numeric EXPSV_MA13.
numeric EXPSV_MA14.
numeric EXPSV_MA15.
numeric EXPSV_MA16.
numeric EXPSV_MA17.
*************************************************************************************************************************************.
*Section 7.4.
numeric R_NOTUSE_MM1.
numeric R_NOTUSE_MM2.
numeric R_NOTUSE_MM3.
numeric R_NOTUSE_MM4.
numeric R_NOTUSE_MM5.
numeric R_NOTUSE_MM6.
numeric R_NOTUSE_MM7.
numeric R_NOTUSE_MM8.

numeric R_NOTREG_MM1.
numeric R_NOTREG_MM2.
numeric R_NOTREG_MM3.
numeric R_NOTREG_MM4.
numeric R_NOTREG_MM5.
numeric R_NOTREG_MM6.
numeric R_NOTREG_MM7.
numeric R_NOTREG_MM8.
numeric R_NOTREG_MM9.
numeric R_NOTREG_MM10.
numeric R_NOTREG_MM11.

numeric R_USE_MM1.
numeric R_USE_MM2.
numeric R_USE_MM3.
numeric R_USE_MM4.
numeric R_USE_MM5.
numeric R_USE_MM6.
numeric R_USE_MM7.
numeric R_USE_MM8.
numeric R_USE_MM9.
*************************************************************************************************************************************.
*Section 7.5.
numeric ACTION_MM1.
numeric ACTION_MM2.
numeric ACTION_MM3.
numeric ACTION_MM4.
numeric ACTION_MM5.
numeric ACTION_MM6.

numeric OPN_MM1.
numeric OPN_MM2.
numeric OPN_MM3.
numeric OPN_MM4.
numeric OPN_MM5.
numeric OPN_MM6.

numeric AWARE_MMP.
numeric ACCESS_MMP.
numeric REGISTERED_MMP.
*************************************************************************************************************************************.
*Section 8.1.
compute ACCESS_NBFI=0.
IF(OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1) or
    (OJK11_1=1 or COP2=1) or
    (OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1)  ACCESS_NBFI=1.

compute ACCESS_NBFI_ALL=0.
IF (OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1 or 
     OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1 or 
     OJK11_1=1 or OJK11_2=1 or OJK11_3=1 or 
     OJK12_1=1 or OJK12_2=1 or OJK12_3=1 or OJK13_1=1 or OJK13_2=1 or OJK13_3=1) ACCESS_NBFI_ALL=1.

NUMERIC REGISTERED_NBFI.

NUMERIC REGISTERED_NBFI_ALL.

NUMERIC REG_DFS_NBFI.

NUMERIC ACTIVE_NBFI.

NUMERIC ACTIVE_NBFI_ALL.

NUMERIC ACTIVE30_NBFI.

NUMERIC INACTIVE_NBFI.

NUMERIC DORMANT_NBFI.

NUMERIC OTC_NBFI.

numeric NBFI_ALL_BASIC.
numeric NBFI_ALL_ADV.
numeric NBFI_BASIC.
numeric NBFI_ADV.
numeric REG_NBFI_BASIC.
NUMERIC REG_NBFI_ADV.

numeric ACTIVE_NBFI_BASIC.
numeric ACTIVE_NBFI_ADV.
numeric ACTIVE30_NBFI_ADV.
numeric NBFI_STAGE.
*************************************************************************************************************************************.
*Section 8.2.*discuss and decide whether to keep.
compute ACCESS_MFI=0.
if (OJK12_1=1 or OJK12_2=1 or OJK12_3=1 or OJK13_1=1 or OJK13_2=1 or OJK13_3=1) ACCESS_MFI=1.
NUMERIC REGISTERED_MFI.
NUMERIC ACTIVE_MFI.

compute ACCESS_COOP=0.
if OJK11_1=1 or COP2=1 ACCESS_COOP=1.
compute REGISTERED_COOP=0.
if (OJK11_1=1 or COP2=1) and BI_E1D=1 REGISTERED_COOP=1.
compute ACTIVE_COOP=0.
if ((OJK11_1=1 or COP2=1) and BI_E1D=1) and (ojk25_1<3 or ojk25_2<3) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1) ACCESS_POST=1.
numeric REGISTERED_POST.
numeric ACTIVE_POST.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.

compute ACCESS_PAWNSHOP=0.
if (OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1) ACCESS_PAWNSHOP=1.
NUMERIC REGISTERED_PAWNSHOP.
NUMERIC ACTIVE_PAWNSHOP.

numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.
*************************************************************************************************************************************.
*Section 8.3.
numeric NBFI_TRANSFER.
numeric NBFI_MERCHANT.
numeric NBFI_BILL.
numeric NBFI_GOV.
numeric NBFI_WAGE.
numeric NBFI_INSURANCE.
NUMERIC NBFI_SAVE.
numeric NBFI_INVEST.
numeric NBFI_LOAN.
numeric NBFI_AIRTIME.

numeric ACTIVE_NBFI_TRANSFER.
numeric ACTIVE_NBFI_MERCHANT.
numeric ACTIVE_NBFI_BILL.
numeric ACTIVE_NBFI_GOV.
numeric ACTIVE_NBFI_WAGE.
numeric ACTIVE_NBFI_INSURANCE.
numeric ACTIVE_NBFI_SAVE.
numeric ACTIVE_NBFI_INVEST.
numeric ACTIVE_NBFI_LOAN.
numeric ACTIVE_NBFI_AIRTIME.
*************************************************************************************************************************************.
*Section 9 .
numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.
*************************************************************************************************************************************.
*Section 10 .
compute LOAN=0.
if bi_e14=1 or bi_e16a=1 or BI_E17=1 or BI_E18A=1 LOAN=1.

compute LOAN_CURRENT=0.
if bi_e14=1 or BI_E17=1 LOAN_CURRENT=1.

numeric LOAN_INTEREST.

compute LOAN_INFML=0.
if bi_e17=1 or bi_e18a=1 LOAN_INFML=1.

compute LOAN_FORMAL=0.
if bi_e14=1 or bi_e16a=1 LOAN_FORMAL=1.

numeric LOAN_STORE.
numeric  LOAN_CREDITCARD.
compute LOAN_MFI=0.
IF (ojk12_2=1 or ojk13_2=1) LOAN_MFI=1.
recode ojk11_2(1=1)(else=0) into LOAN_COOP.
numeric LOAN_MLENDER.
compute LOAN_PAWN=0.
IF (ojk6_1=1 or ojk6_2=1) LOAN_PAWN=1.
numeric LOAN_GROUP.
numeric  LOAN_POST.
numeric LOAN_SACCO.

numeric LOAN_EMERGENCY.
numeric LOAN_DAILY.
numeric LOAN_BUSINESS.
numeric LOAN_HOME.
numeric LOAN_AGRIC.
*************************************************************************************************************************************.
*Section 11 .
compute SAVE=0.
if bi_e5s=1 or bi_e6s=1 or
   ojk1_1=1 or ojk10_1=1 or ojk11_1=1 or ojk12_1=1 or ojk13_1=1 SAVE=1.

numeric SAVE_KNOW_INTEREST.

recode bi_e13(1=1)(else=0) into SAVE_INFML.

compute SAVE_FORMAL=0.
if ojk1_1=1 or ojk10_1=1 or ojk11_1=1 or ojk12_1=1 or ojk13_1=1 SAVE_FORMAL=1.

recode ojk1_1(1=1)(else=0) into SAVE_BANK.
numeric SAVE_MM.
compute SAVE_MFI=0.
IF (ojk12_1=1 or ojk13_1=1) SAVE_MFI=1.
recode ojk11_1(1=1)(else=0) into SAVE_COOP.
numeric SAVE_GROUP.
recode ojk10_1(1=1)(else=0) into SAVE_POST.
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
*************************************************************************************************************************************.
*Section 12 .
count INSURANCE=ojk2_1 ojk2_2 ojk2_3 ojk2_4 ojk2_5 ojk2_6 ojk2_7 ojk2_8 ojk2_9 ojk2_10 ojk2_11(1).
recode INSURANCE (1 thru highest=1)(else=0).

recode ojk2_4(1=1)(else=0) into INSUR_MEDICAL.
recode ojk2_1(1=1)(else=0) into INSUR_LIFE.
recode ojk2_5(1=1)(else=0) into INSUR_CAR.
numeric INSUR_CROP.
numeric INSUR_PROPERTY.
numeric INSUR_UNEMPLOY.
numeric INSUR_DISABLE.
numeric INSUR_OLDAGE.
recode ojk2_9(1=1)(else=0) into INSUR_LIVESTOCK.
numeric INSUR_FAMILY.
*************************************************************************************************************************************.
*Section 13 .
compute INVEST=0.
if ojk7_1=1 or ojk7_2=1 or ojk7_3=1 or ojk7_4=1 or
   ojk8_1=1 or ojk8_2=1 INVEST=1.

numeric INVEST_OWN.
numeric INVEST_OTHER.
numeric INVEST_INFORMAL.

compute INVEST_INSURANCE=0.
if INVEST=1 or INSURANCE=1 INVEST_INSURANCE=1.
*************************************************************************************************************************************.
*Section 14 .
compute FIN_SITUATION=dl24.
numeric MAIN_EARNER.

numeric FIN_ATT1.
numeric FIN_ATT2.
numeric FIN_ATT3.
numeric FIN_ATT4.
numeric FIN_ATT5.
numeric SCH_FEE_PRB1.
numeric SCH_FEE_PRB2.
numeric SCH_FEE_PRB3.
numeric SCH_FEE_PRB4.
numeric SCH_FEE_PRB5.
*************************************************************************************************************************************.
*Section 15.1 .
numeric HAVE_PLAN.
numeric ECO_VUL.
numeric FIN_SHOCK.
numeric BUDGET_INCOME.
numeric BUDGET_STAY.

numeric FIN_HEA1.
numeric FIN_HEA2.
numeric FIN_HEA3.
numeric FIN_HEA4.
numeric FIN_HEA5.
numeric FIN_HEA6.
numeric FIN_HEA7.
numeric FIN_HEA8.
numeric FIN_HEA9.
numeric FIN_HEA10.
*************************************************************************************************************************************.
*Section 15.2 .
numeric FIN_SHO1.
numeric FIN_SHO2.
numeric FIN_SHO3.
numeric FIN_SHO4.
numeric FIN_SHO5.
numeric FIN_SHO6.
numeric FIN_SHO7.
numeric FIN_SHO8.

compute MONEY_SOU1=0.
if dl4_1=1 or DL4_2=1 MONEY_SOU1=1.
recode DL4_3 (2=0)(else=copy) into MONEY_SOU2.
compute MONEY_SOU3=0.
if DL4_4=1 or DL4_5=1 MONEY_SOU3=1.
recode DL4_6 (2=0)(else=copy) into MONEY_SOU4.
recode DL4_7 (2=0)(else=copy) into MONEY_SOU5.
compute MONEY_SOU6=0.
if DL4_8=1 or DL4_9=1 MONEY_SOU6=1.
recode DL4_10 (2=0)(else=copy) into MONEY_SOU7.
recode DL4_11 (2=0)(else=copy) into MONEY_SOU8.

numeric EXPENSE1.
numeric EXPENSE2.
numeric EXPENSE3.
*************************************************************************************************************************************.
*Section 16.
recode GN1 (-3, -2=99)(else=copy) into ECO_EMP1.
recode GN2 (-3, -2=99)(else=copy) into ECO_EMP2.
recode GN3 (-3, -2=99)(else=copy) into ECO_EMP3.
recode GN4 (-3, -2=99)(else=copy) into ECO_EMP4.
recode GN5 (-3, -2=99)(else=copy) into ECO_EMP5.
recode GN7 (-3, -2=99)(else=copy) into ECO_EMP6.
recode GN8 (-3, -2=99)(else=copy) into ECO_EMP7.
*************************************************************************************************************************************.
*Section 17.
recode BI_E43_1 (1 THRU 2=1)(3=2)(4=3)(-2=99) into BBKM.
recode BI_E43_2 (1 THRU 2=1)(3=2)(4=3)(-2=99) into ATMKM.
NUMERIC MMKM.
recode BI_E43_4 (1 THRU 2=1)(3=2)(4=3)(-2=99) into BAKM.
NUMERIC RSKM.
recode BI_E43_9 (1 THRU 2=1)(3=2)(4=3)(-2=99) into MFIKM.
NUMERIC GRPKM.
NUMERIC INFMLKM.
recode BI_E43_3 (1 THRU 2=1)(3=2)(4=3)(-2=99) into POSTKM.
numeric SACCOKM.
recode BI_E43_6 (1 THRU 2=1)(3=2)(4=3)(-2=99) into COOPKM.

compute POS=0.
if (BBKM=99 or ATMKM=99 or BAKM=99 or MFIKM=99 or POSTKM=99 or COOPKM=99) POS=99.
if (BBKM=3 or ATMKM=3 or BAKM=3 or MFIKM=3 or POSTKM=3 or COOPKM=3) POS=3.
if (BBKM=2 or ATMKM=2 or BAKM=2 or MFIKM=2 or POSTKM=2 or COOPKM=2) POS=2.
if (BBKM=1 or ATMKM=1 or BAKM=1 or MFIKM=1 or POSTKM=1 or COOPKM=1) POS=1.

*************************************************************************************************************************************.
*Labels.
*Section 3.
value labels AGE -2"DK".
value labels AGE_GROUP 1"15-24" 2"25-34" 3"35-44" 4"45-54" 5"55 and over" -2"DK".
value labels EDU 1"No formal education" 2"Primary education" 3"Secondary education" 4"Higher education" 5"Other".
value labels ID 1"Yes" 0"No".
value labels LITERACY 1"Basic literacy" 0"lack of basic literacy".
value labels NUMERACY 1"Basic numeracy" 0"Lack of basic numeracy".
value labels FINANCIAL_LITERACY 0"No" 1"Yes".
value labels DIGITAL_LITERACY_INDEX 0"Not applicable" 1"Low" 2"Moderate" 3"High".
value labels GENDER 1"Male" 2"Female".
value labels MARRIAGE 1"Single/never married" 2"Married" 3"Divorced/Separated" 4"Widowed" 5"Living together/Cohabiting " 96"Other" -2"DK".
value labels HAVE_CHILDREN 1"Yes"0"No".
value labels SCHOOL_FEE 1"Yes"0"No".
value labels EMPLOYMENT  96"Other"
10"Not working because of sickness, disability, etc."
9"Not working because of retirement"
8"Full-time student"
7"Housewife or stay-at-home husband doing household chores"
6"Not working but looking for a job"
5"Self-employed, working for yourself"
4"Working per season (e.g., only during the harvest season)"
3"Working occasionally, irregular pay (whenever the work is available)"
2"Working part-time for a regular salary"
1"Working full-time for a regular salary"
-2"DK".
value labels INVOL_AGRI 1"Yes" 0"No".
value labels OWN_FARM 1"Yes" 0"No".
value labels WORK_FARM 1"Yes" 0"No".
value labels SELL_CROP 1"Yes" 0"No".

variable labels AGE"Age"
AGE_GROUP"Age groups"
EDU"Education"
ID"Have required ID for registration financial account"
LITERACY"Literacy"
NUMERACY"Basic numeracy"
FINANCIAL_LITERACY"Financial literacy"
DIGITAL_LITERACY_INDEX"Digital literacy index"
GENDER"Gender"
MARRIAGE"Marital status"
HAVE_CHILDREN"Have children"
SCHOOL_FEE"Have ever paid a school fee"
EMPLOYMENT"Mainly doing for work in past 12 months"
INVOL_AGRI"Involved in agriculture"
OWN_FARM"Someone in your household own or lease a farm/farmland"
WORK_FARM"Work on the farm that someone in your household owned or leased yourself"
SELL_CROP"Selling products of agriculture or rearing livestock".
*Section 4.
variable labels ACCESS_PHONE "Have access to a phone (phone user)".
value labels ACCESS_PHONE 1"Yes" 0"No".
variable labels OWN_PHONE "Own a phone".
value labels OWN_PHONE 1"Yes" 0"No".
variable labels BORROW_PHONE "Use a mobile phone that belongs to someone else or is shared".
value labels BORROW_PHONE 1 "Yes" 0 "No".
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes"  0"No".
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".
variable labels PHONE_ADV "Use advanced functions on phone".
value labels PHONE_ADV 1"Yes" 0"No".
variable labels 
PHONE_CALL "Called someone through a mobile phone"
PHONE_R_CALL "Received a call from someone through a mobile phone".
value labels PHONE_CALL PHONE_R_CALL 1"Yes" 0"No".
variable labels PHONE_SMS "Ever sent/received text messages".
value labels PHONE_SMS 1 "Yes" 0 "No".
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone".
value labels ABLE_SMS 1 "Yes" 0 "No".
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".
*Section 5.
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
*Section 6.1.
value labels ACCESS_BANK 1"Yes" 0"No".
value labels REGISTERED_BANK 1"Yes" 0"No".
value labels ACTIVE_BANK 1"Yes" 0"No".
value labels ACTIVE30_BANK 1"Yes" 0"No".
value labels INACTIVE_BANK 1"Yes" 0"No".
value labels DORMANT_BANK 1"Yes" 0"No".
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
DORMANT_BANK	"Bank account owner who never used any bank services"
BANK_BASIC	"Ever used bank to do basic activities"
BANK_ADV	"Ever used bank to do advanced activities"
REG_BANK_BASIC	"Conduct basic activity thru own bank account"
REG_BANK_ADV	"Conduct advanced activity thru own bank account"
ACTIVE_BANK_BASIC	"Used own bank account in past 90 days and have used at least one basic financial service"
ACTIVE_BANK_ADV	"Used own bank account in past 90 days and have used at least one advanced financial service"
ACTIVE30_BANK_ADV	"Used own bank account in past 30 days and have used at least one advanced financial service"
BANK_STAGE	"Customer journey segmentation of bank".
*Section 6.2.
value labels BANK_TRANSFER 1"Yes" 0"No".
value labels BANK_MERCHANT 1"Yes" 0"No".
value labels BANK_BILL 1"Yes" 0"No".
value labels BANK_GOV 1"Yes" 0"No".
value labels BANK_WAGE 1"Yes" 0"No".
value labels BANK_INSURANCE 1"Yes" 0"No".
value labels BANK_SAVE 1"Yes" 0"No".
value labels BANK_INVEST 1"Yes" 0"No".
value labels BANK_LOAN 1"Yes" 0"No".
value labels BANK_AIRTIME 1"Yes" 0"No".

value labels ACTIVE_BANK_TRANSFER 1"Yes" 0"No".
value labels ACTIVE_BANK_MERCHANT 1"Yes" 0"No".
value labels ACTIVE_BANK_BILL 1"Yes" 0"No".
value labels ACTIVE_BANK_GOV 1"Yes" 0"No".
value labels ACTIVE_BANK_WAGE 1"Yes" 0"No".
value labels ACTIVE_BANK_INSURANCE 1"Yes" 0"No".
value labels ACTIVE_BANK_SAVE 1"Yes" 0"No".
value labels ACTIVE_BANK_INVEST 1"Yes" 0"No".
value labels ACTIVE_BANK_LOAN 1"Yes" 0"No".
value labels ACTIVE_BANK_AIRTIME 1"Yes" 0"No".

VARIABLE LABELS BANK_TRANSFER	"Ever used bank to send money to, or receive money from someone"
BANK_MERCHANT	"Ever used bank to buy goods and service"
BANK_BILL	"Ever used bank to pay a bill"
BANK_GOV	"Ever used bank to receive money from the government"
BANK_WAGE	"Ever used bank to receive payment from an exmployer"
BANK_INSURANCE	"Ever used bank to pay for insurance or receive payment from insurance"
BANK_SAVE	"Ever used bank to save money"
BANK_INVEST	"Ever used bank to make an investment"
BANK_LOAN	"Ever used bank to borrow money or get  credit"
BANK_AIRTIME	"Ever used bank to buy airtime top-ups or pay a mobile phone bill"
ACTIVE_BANK_TRANSFER	"Used bank to send money to, or receive money from someone in past 90 days"
ACTIVE_BANK_MERCHANT	"Used bank to buy goods and service in past 90 days"
ACTIVE_BANK_BILL	"Used bank to pay a bill in past 90 days"
ACTIVE_BANK_GOV	"Used bank to receive money from the government in past 90 days"
ACTIVE_BANK_WAGE	"Used bank to receive payment from an exmployer in past 90 days"
ACTIVE_BANK_INSURANCE	"Used bank to pay for insurance or receive payment from insurance in past 90 days"
ACTIVE_BANK_SAVE	"Used bank to save money in past 90 days"
ACTIVE_BANK_INVEST	"Used bank to make an investment in past 90 days"
ACTIVE_BANK_LOAN	"Used bank to borrow money  or get credit in past 90 days"
ACTIVE_BANK_AIRTIME	"Used bank to buy airtime top-ups or pay a mobile phone bill in past 90 days".
*Section 6.3.
value labels R_NOBANK1 1"Yes" 0"No".
value labels R_NOBANK2 1"Yes" 0"No".
value labels R_NOBANK3 1"Yes" 0"No".
value labels R_NOBANK4 1"Yes" 0"No".
value labels R_NOBANK5 1"Yes" 0"No".

value labels R_NOBANK_BUSI1 1"Yes" 0"No".
value labels R_NOBANK_BUSI2 1"Yes" 0"No". 
value labels R_NOBANK_BUSI3 1"Yes" 0"No". 
value labels R_NOBANK_BUSI4 1"Yes" 0"No". 
value labels R_NOBANK_BUSI5 1"Yes" 0"No".
value labels R_NOBANK_BUSI6 1"Yes" 0"No". 

value labels EXP_BANK1 1"Yes" 0"No".
value labels EXP_BANK2 1"Yes" 0"No".
value labels EXP_BANK3 1"Yes" 0"No".
value labels EXP_BANK4 1"Yes" 0"No".
value labels EXP_BANK5 1"Yes" 0"No".
value labels EXP_BANK6 1"Yes" 0"No".

value labels USE_BANK_OTC 1"Yes" 0"No".
value labels USE_BANK_ATM 1"Yes" 0"No".
value labels USE_BANK_RETAIL 1"Yes" 0"No".
value labels USE_BANK_ONLINE 1"Yes" 0"No".
value labels USE_BANK_MOBILE 1"Yes" 0"No".
value labels USE_BANK_AGENT 1"Yes" 0"No".
value labels USE_BANK_WALLET 1"Yes" 0"No".

variable labels R_NOBANK1"Reasons for NO bank account: You don't have the required documents"
R_NOBANK2"Reasons for NO bank account: Fees and expenses for using banks are too high"
R_NOBANK3"Reasons for NO bank account: You don't need a bank account"
R_NOBANK4"Reasons for NO bank account: The closest bank is too far away"
R_NOBANK5"Reasons for NO bank account: You don't have enough money to use the account"
R_NOBANK_BUSI1"Reasons for NOT use bank for business payments/purchases: Have to pay extra taxes"
R_NOBANK_BUSI2"Reasons for NOT use bank for business payments/purchases: Have to pay bribes to government officials to avoid taxation/licensing/paper work"
R_NOBANK_BUSI3"Reasons for NOT use bank for business payments/purchases: Business is not registered, it is not formal "
R_NOBANK_BUSI4"Reasons for NOT use bank for business payments/purchases: Have to raise prices to pay account fees and people won’t buy "
R_NOBANK_BUSI5"Reasons for NOT use bank for business payments/purchases: Business is too small to need a bank account "
R_NOBANK_BUSI6"Reasons for NOT use bank for business payments/purchases: Use other methods of payment"
EXP_BANK1"Experience using a bank account: Unexpected charges"
EXP_BANK2"Experience using a bank account: Lost money"
EXP_BANK3"Experience using a bank account: Registered a complaint or called a customer care line"
EXP_BANK4"Experience using a bank account: ATM not working"
EXP_BANK5"Experience using a bank account: Debit/credit card did not work when paying for goods/services"
EXP_BANK6"Experience using a bank account: Could not use your bank account because of system outages (online/offline)"
USE_BANK_OTC"Use over the counter at a bank branch"
USE_BANK_ATM"Use bank ATM"
USE_BANK_RETAIL"Use bank deposits or withdrawals over the counter at a retail store"
USE_BANK_ONLINE"Use bank’s website/online banking"
USE_BANK_MOBILE"Use bank via mobile app/mobile banking"
USE_BANK_AGENT"Use a door-to-door banking agent or another person who is associated with this bank or MFI/money collector/banking agent"
USE_BANK_WALLET"Use bank mobile wallet".
*Section 7.1.
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
value labels LENGTH_MM 1"0-6 months" 2"6-12 months" 3"Greater than 12 months".
value labels MM_STAGE 0"Mobile money nonuser"
1"Unregistered mobile money  user"
2"Inactive registered mobile money user"
3"Active mobile money basic user"
4"Active mobile money advanced user".
*Section 7.2.
variable labels
MM_TRANSFER	"Ever used MM to send money to, or receive money from someone"
MM_MERCHANT	"Ever used MM to buy goods and service"
MM_BILL	"Ever used MM to pay a bill"
MM_GOV	"Ever used MM to receive money from the government"
MM_WAGE	"Ever used MM to receive payment from an exmployer"
MM_INSURANCE	"Ever used MM to pay for insurance or receive payment from insurance"
MM_SAVE	"Ever used MM to save money"
MM_INVEST	"Ever used MM to make an investment"
MM_LOAN	"Ever used MM to borrow money or get credit"
MM_AIRTIME	"Ever used MM to buy airtime top-ups or pay a mobile phone bill"
ACTIVE_MM_TRANSFER	"Used MM to send money to, or receive money from someone in past 90 days"
ACTIVE_MM_MERCHANT	"Used MM to buy goods and service in past 90 days"
ACTIVE_MM_BILL	"Used MM to pay a bill in past 90 days"
ACTIVE_MM_GOV	"Used MM to receive money from the government in past 90 days"
ACTIVE_MM_WAGE	"Used MM to receive payment from an exmployer in past 90 days"
ACTIVE_MM_INSURANCE	"Used MM to pay for insurance or receive payment from insurance in past 90 days"
ACTIVE_MM_SAVE	"Used MM to save money in past 90 days"
ACTIVE_MM_INVEST	"Used MM to make an investment in past 90 days"
ACTIVE_MM_LOAN	"Used MM to borrow money or get credit in past 90 days"
ACTIVE_MM_AIRTIME	"Used MM to buy airtime top-ups or pay a mobile phone bill in past 90 days".

value labels MM_TRANSFER 1"Yes" 0"No".
value labels MM_MERCHANT 1"Yes" 0"No".
value labels MM_BILL 1"Yes" 0"No".
value labels MM_GOV 1"Yes" 0"No".
value labels MM_WAGE 1"Yes" 0"No".
value labels MM_INSURANCE 1"Yes" 0"No".
value labels MM_SAVE 1"Yes" 0"No".
value labels MM_INVEST 1"Yes" 0"No".
value labels MM_LOAN 1"Yes" 0"No".
value labels MM_AIRTIME 1"Yes" 0"No".
value labels ACTIVE_MM_TRANSFER 1"Yes" 0"No".
value labels ACTIVE_MM_MERCHANT 1"Yes" 0"No".
value labels ACTIVE_MM_BILL 1"Yes" 0"No".
value labels ACTIVE_MM_GOV 1"Yes" 0"No".
value labels ACTIVE_MM_WAGE 1"Yes" 0"No".
value labels ACTIVE_MM_INSURANCE 1"Yes" 0"No".
value labels ACTIVE_MM_SAVE 1"Yes" 0"No".
value labels ACTIVE_MM_INVEST 1"Yes" 0"No".
value labels ACTIVE_MM_LOAN 1"Yes" 0"No".
value labels ACTIVE_MM_AIRTIME 1"Yes" 0"No".
*Section 7.3.
variable labels EXP_MA1	"Experience with MM agent: Agent was absent"
EXP_MA2	"Experience with MM agent: Agent provided poor service"
EXP_MA3	"Experience with MM agent: Agent did not have enough money to complete the transaction"
EXP_MA4	"Experience with MM agent: Agent did not know how to perform the transaction"
EXP_MA5	"Experience with MM agent: Agent overcharged for the transaction"
EXP_MA6	"Experience with MM agent: Agent did not give all the cash that was owed"
EXP_MA7	"Experience with MM agent: Agent system or mobile network was down"
EXP_MA8	"Experience with MM agent: Agent was dismissive of women"
EXP_MA9	"Experience with MM agent: Agent’s place was not secure or there were suspicious people at agent’s place"
EXP_MA10	"Experience with MM agent: Agent shared your personal or account information with other people without your knowledge or permission"
EXP_MA11	"Experience with MM agent: Agent was rude"
EXP_MA12	"Experience with MM agent: Agent refused to perform the transaction for no reason"
EXP_MA13	"Experience with MM agent: It was very time-consuming/it took you a lot of time to do the transaction"
EXP_MA14	"Experience with MM agent: You did not get a receipt"
EXP_MA15	"Experience with MM agent: Agent charged you for depositing money"
EXP_MA16	"Experience with MM agent: Agent asked for your PIN number"
EXP_MA17	"Experience with MM agent: Agent committed fraud"
EXP_MA18	"Experience with MM agent: Agent refused to do the transaction because you did not have your ID"
EXPSV_MA1	"Issue with MM agent solved: Agent was absent"
EXPSV_MA2	"Issue with MM agent solved: Agent was rude"
EXPSV_MA3	"Issue with MM agent solved: Agent did not have enough cash or e-float and could not perform the transaction"
EXPSV_MA4	"Issue with MM agent solved: Agent refused to perform the transaction for no reason"
EXPSV_MA5	"Issue with MM agent solved: Agent did not know how to perform the transaction"
EXPSV_MA6	"Issue with MM agent solved: Agent overcharged for the transaction or asked you to pay a deposit"
EXPSV_MA7	"Issue with MM agent solved: Agent did not give all the cash that was owed"
EXPSV_MA8	"Issue with MM agent solved: Agent system or mobile network was down"
EXPSV_MA9	"Issue with MM agent solved: It was very time-consuming/it took you a lot of time to do the transaction"
EXPSV_MA10	"Issue with MM agent solved: You did not get a receipt"
EXPSV_MA11	"Issue with MM agent solved: Agent charged you for depositing money"
EXPSV_MA12	"Issue with MM agent solved: Agent asked for your PIN number"
EXPSV_MA13	"Issue with MM agent solved: Agent was dismissive of women"
EXPSV_MA14	"Issue with MM agent solved: Agent committed fraud"
EXPSV_MA15	"Issue with MM agent solved: Agent’s place was not secure/there were suspicious people at agent’s place"
EXPSV_MA16	"Issue with MM agent solved: Agent shared your personal/account information with other people without your knowledge/permission"
EXPSV_MA17	"Issue with MM agent solved: Agent refused to do the transaction because you did not have your ID".

value labels EXP_MA1 1"Yes" 0"No".
value labels EXP_MA2	1"Yes" 0"No".
value labels EXP_MA3	1"Yes" 0"No".
value labels EXP_MA4	1"Yes" 0"No".
value labels EXP_MA5	1"Yes" 0"No".
value labels EXP_MA6	1"Yes" 0"No".
value labels EXP_MA7	1"Yes" 0"No".
value labels EXP_MA8	1"Yes" 0"No".
value labels EXP_MA9	1"Yes" 0"No".
value labels EXP_MA10	1"Yes" 0"No".
value labels EXP_MA11	1"Yes" 0"No".
value labels EXP_MA12	1"Yes" 0"No".
value labels EXP_MA13	1"Yes" 0"No".
value labels EXP_MA14	1"Yes" 0"No".
value labels EXP_MA15	1"Yes" 0"No".
value labels EXP_MA16	1"Yes" 0"No".
value labels EXP_MA17	1"Yes" 0"No".
value labels EXP_MA18	1"Yes" 0"No".
value labels EXPSV_MA1	1"Yes" 0"No".
value labels EXPSV_MA2	1"Yes" 0"No".
value labels EXPSV_MA3	1"Yes" 0"No".
value labels EXPSV_MA4	1"Yes" 0"No".
value labels EXPSV_MA5	1"Yes" 0"No".
value labels EXPSV_MA6	1"Yes" 0"No".
value labels EXPSV_MA7	1"Yes" 0"No".
value labels EXPSV_MA8	1"Yes" 0"No".
value labels EXPSV_MA9 1"Yes" 0"No".
value labels EXPSV_MA10	1"Yes" 0"No".
value labels EXPSV_MA11	1"Yes" 0"No".
value labels EXPSV_MA12	1"Yes" 0"No".
value labels EXPSV_MA13	1"Yes" 0"No".
value labels EXPSV_MA14	1"Yes" 0"No".
value labels EXPSV_MA15	1"Yes" 0"No".
value labels EXPSV_MA16	1"Yes" 0"No".
value labels EXPSV_MA17	1"Yes" 0"No".
*Section 7.4.
variable labels
R_NOTUSE_MM1	"Reason to NOT use MM: You don't know enough about mobile money services"
R_NOTUSE_MM2	"Reason to NOT use MM: You don't need to use a mobile money service"
R_NOTUSE_MM3	"Reason to NOT use MM: You don't have the required documents"
R_NOTUSE_MM4	"Reason to NOT use MM: You don't have enough money to use mobile money services"
R_NOTUSE_MM5	"Reason to NOT use MM: You don't trust mobile money"
R_NOTUSE_MM6	"Reason to NOT use MM: You feel at risk of losing money"
R_NOTUSE_MM7	"Reason to NOT use MM: You prefer to use cash"
R_NOTUSE_MM8	"Reason to NOT use MM: Fees and expenses to using mobile money services are too high"
R_NOTREG_MM1	"Reason to NOT register MM: A friend or family member has an account that you can use"
R_NOTREG_MM2	"Reason to NOT register MM: You do not have the required identification documents"
R_NOTREG_MM3	"Reason to NOT register MM: You do not use products and services that require a registered account"
R_NOTREG_MM4	"Reason to NOT register MM: You do not know how to register an account"
R_NOTREG_MM5	"Reason to NOT register MM: You had an account previously but not anymore"
R_NOTREG_MM6	"Reason to NOT register MM: You prefer to use a different financial account instead of mobile money"
R_NOTREG_MM7	"Reason to NOT register MM: You don't have enough money to use a registered account"
R_NOTREG_MM8	"Reason to NOT register MM: You don't trust mobile money"
R_NOTREG_MM9	"Reason to NOT register MM: You feel at rist of losing money"
R_NOTREG_MM10	"Reason to NOT register MM: You prefer to use cash"
R_NOTREG_MM11	"Reason to NOT register MM: Fees and expenses to using a mobile money account are too high"
R_USE_MM1	"Reason to start use MM: To send or receive money"
R_USE_MM2	"Reason to start use MM: To save money"
R_USE_MM3	"Reason to start use MM: To have a secure place to store money"
R_USE_MM4	"Reason to start use MM: You were registered to a mobile money account by someone else"
R_USE_MM5	"Reason to start use MM: To borrow money"
R_USE_MM6	"Reason to start use MM: To make a purchase"
R_USE_MM7	"Reason to start use MM: To make an investment"
R_USE_MM8	"Reason to start use MM: To pay a bill "
R_USE_MM9	"Reason to start use MM: You got an incentive from the mobile money service during a promotion ".

value labels R_NOTUSE_MM1 1"Yes" 0"No".
value labels R_NOTUSE_MM2 1"Yes" 0"No".
value labels R_NOTUSE_MM3 1"Yes" 0"No".
value labels R_NOTUSE_MM4 1"Yes" 0"No".
value labels R_NOTUSE_MM5 1"Yes" 0"No".
value labels R_NOTUSE_MM6 1"Yes" 0"No".
value labels R_NOTUSE_MM7 1"Yes" 0"No".
value labels R_NOTUSE_MM8 1"Yes" 0"No".
value labels R_NOTREG_MM1 1"Yes" 0"No".
value labels R_NOTREG_MM2 1"Yes" 0"No".
value labels R_NOTREG_MM3 1"Yes" 0"No".
value labels R_NOTREG_MM4 1"Yes" 0"No".
value labels R_NOTREG_MM5 1"Yes" 0"No".
value labels R_NOTREG_MM6 1"Yes" 0"No".
value labels R_NOTREG_MM7 1"Yes" 0"No".
value labels R_NOTREG_MM8 1"Yes" 0"No".
value labels R_NOTREG_MM9 1"Yes" 0"No".
value labels R_NOTREG_MM10 1"Yes" 0"No".
value labels R_NOTREG_MM11 1"Yes" 0"No".
value labels R_USE_MM1 1"Yes" 0"No".
value labels R_USE_MM2 1"Yes" 0"No".
value labels R_USE_MM3 1"Yes" 0"No".
value labels R_USE_MM4 1"Yes" 0"No".
value labels R_USE_MM5 1"Yes" 0"No".
value labels R_USE_MM6 1"Yes" 0"No".
value labels R_USE_MM7 1"Yes" 0"No".
value labels R_USE_MM8 1"Yes" 0"No".
value labels R_USE_MM9 1"Yes" 0"No".
*Section 7.5.
variable labels
ACTION_MM1	"Difficulty or ease to perform the action without assistance: Open the mobile money menu"
ACTION_MM2	"Difficulty or ease to perform the action without assistance: Find a particular menu option, such as send money"
ACTION_MM3	"Difficulty or ease to perform the action without assistance: Complete a transaction"
ACTION_MM4	"Difficulty or ease to perform the action without assistance: Correct an error in the amount of money to send"
ACTION_MM5	"Difficulty or ease to perform the action without assistance: Correct an error in the amount or phone number for a transaction recipient"
ACTION_MM6	"Difficulty or ease to perform the action without assistance: Reverse or cancel a transaction"
OPN_MM1	"Mobile money allows you to keep money on your phone"
OPN_MM2	"Mobile money allows you to get a loan"
OPN_MM3	"You can deposit and withdraw in cash using mobile money"
OPN_MM4	"You can send money to someone using mobile money"
OPN_MM5	"You can save money on a mobile phone"
OPN_MM6	"You can pay for goods and services through your mobile phone"
AWARE_MMP	"Aware of non-MM mobile-based financial pruducts"
ACCESS_MMP	"Eved used non-MM mobile-based financial products"
REGISTERED_MMP	"Have account of non-MM mobile-based financial pruducts".

value labels ACTION_MM1 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels ACTION_MM2 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels ACTION_MM3 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels ACTION_MM4 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels ACTION_MM5 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels ACTION_MM6 1"Very difficult" 2"Somewhat difficult" 3"Neither difficult, nor easy" 4"Somewhat easy" 5"Very easy" -2"DK".
value labels OPN_MM1 1"Yes" 2"No" -2"DK".
value labels OPN_MM2 1"Yes" 2"No" -2"DK".
value labels OPN_MM3 1"Yes" 2"No" -2"DK".
value labels OPN_MM4 1"Yes" 2"No" -2"DK".
value labels OPN_MM5 1"Yes" 2"No" -2"DK".
value labels OPN_MM6 1"Yes" 2"No" -2"DK".
value labels AWARE_MMP 1"Yes" 0"No".
value labels ACCESS_MMP 1"Yes" 0"No".
value labels REGISTERED_MMP 1"Yes" 0"No".
*Section 8.1.
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
value labels REG_NBF_ADV	1"Yes" 0"No".
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
REG_NBF_ADV	"Conduct advanced activity thru own full service NBFI account"
ACTIVE_NBFI_BASIC	"Used own full service NBFI account in past 90 days and have used at least one basic financial service"
ACTIVE_NBFI_ADV	"Used own full service NBFI account in past 90 days and have used at least one advanced financial service"
ACTIVE30_NBFI_ADV	"Used own full service NBFI account in past 30 days and have used at least one advanced financial service"
NBFI_STAGE	"Customer journey segmentation of NBFI".
*Section 8.2.
value labels ACCESS_MFI 1"Yes" 0"No".
value labels REGISTERED_MFI 1"Yes" 0"No".
value labels ACTIVE_MFI 1"Yes" 0"No".
value labels ACCESS_COOP 1"Yes" 0"No".
value labels REGISTERED_COOP 1"Yes" 0"No".
value labels ACTIVE_COOP 1"Yes" 0"No".
value labels ACCESS_POST 1"Yes" 0"No".
value labels REGISTERED_POST 1"Yes" 0"No".
value labels ACTIVE_POST 1"Yes" 0"No".
value labels ACCESS_SACCO 1"Yes" 0"No".
value labels REGISTERED_SACCO 1"Yes" 0"No".
value labels ACTIVE_SACCO 1"Yes" 0"No".
value labels ACCESS_BPR 1"Yes" 0"No".
value labels REGISTERED_BPR 1"Yes" 0"No".
value labels ACTIVE_BPR 1"Yes" 0"No".
value labels ACCESS_PAWNSHOP 1"Yes" 0"No".
value labels REGISTERED_PAWNSHOP 1"Yes" 0"No".
value labels ACTIVE_PAWNSHOP 1"Yes" 0"No".
value labels AWARE_PAYMENT_BANK_PROVIDER 1"Yes" 0"No".
value labels ACCESS_PAYMENT 1"Yes" 0"No".
value labels REGISTERED_PAYMENT 1"Yes" 0"No".
value labels ACTIVE_PAYMENT 1"Yes" 0"No".
value labels ACCESS_GROUP 1"Yes" 0"No".
value labels REGISTERED_GROUP 1"Yes" 0"No".
value labels ACTIVE_GROUP 1"Yes" 0"No".

variable labels ACCESS_MFI	"Ever used full service MFI"
REGISTERED_MFI	"Have a full service MFI account"
ACTIVE_MFI	"Used own full service MFI accounts within past 90 days"
ACCESS_COOP	"Ever used full service Cooperative"
REGISTERED_COOP	"Have a full service Cooperative account"
ACTIVE_COOP	"Used own full service Cooperative accounts within past 90 days"
ACCESS_POST	"Ever used full service Post office bank"
REGISTERED_POST	"Have a full service Post office bank account"
ACTIVE_POST	"Used own full service Post office bank accounts within past 90 days"
ACCESS_SACCO	"Ever used full service SACCO"
REGISTERED_SACCO	"Have a full service SACCO account"
ACTIVE_SACCO	"Used own full service SACCO accounts within past 90 days"
ACCESS_BPR	"Ever used full service Bank Perkreditan Rakyat (BPR)"
REGISTERED_BPR	"Have a full service Bank Perkreditan Rakyat (BPR) account"
ACTIVE_BPR	"Used own full service Bank Perkreditan Rakyat (BPR) accounts within past 90 days"
ACCESS_PAWNSHOP	"Ever used full service Pawnshop"
REGISTERED_PAWNSHOP	"Have a full service Pawnshop account"
ACTIVE_PAWNSHOP	"Used own full service Pawnshop accounts within past 90 days"
AWARE_PAYMENT_BANK_PROVIDER	"Aware payment banks providers"
ACCESS_PAYMENT	"Ever used full service payment bank"
REGISTERED_PAYMENT	"Have a full service payment bank account"
ACTIVE_PAYMENT	"Used own full service payment bank accounts within past 90 days"
ACCESS_GROUP	"Ever used full service savings group"
REGISTERED_GROUP	"Have a full service savings group account"
ACTIVE_GROUP	"Used own full service savings group accounts within past 90 days".
*Section 8.3.
value labels NBFI_TRANSFER 1"Yes" 0"No".
value labels NBFI_MERCHANT 1"Yes" 0"No".
value labels NBFI_BILL 1"Yes" 0"No".
value labels NBFI_GOV 1"Yes" 0"No".
value labels NBFI WAGE 1"Yes" 0"No".
value labels NBFI_INSURANCE 1"Yes" 0"No".
value labels NBFI_SAVE 1"Yes" 0"No".
value labels NBFI_INVEST 1"Yes" 0"No".
value labels NBFI_LOAN 1"Yes" 0"No".
value labels NBFI_AIRTIME 1"Yes" 0"No".
value labels ACTIVE_NBFI_TRANSFER 1"Yes" 0"No".
value labels ACTIVE_NBFI_MERCHANT 1"Yes" 0"No".
value labels ACTIVE_NBFI_BILL 1"Yes" 0"No".
value labels ACTIVE_NBFI_GOV 1"Yes" 0"No".
value labels ACTIVE_NBFI WAGE 1"Yes" 0"No".
value labels ACTIVE_NBFI_INSURANCE 1"Yes" 0"No".
value labels ACTIVE_NBFI_SAVE 1"Yes" 0"No".
value labels ACTIVE_NBFI_INVEST 1"Yes" 0"No".
value labels ACTIVE_NBFI_LOAN 1"Yes" 0"No".
value labels ACTIVE_NBFI_AIRTIME 1"Yes" 0"No".
value labels R_STOPMFI1 1"Yes" 2"No".
value labels R_STOPMFI2 1"Yes" 2"No".
value labels R_STOPMFI3 1"Yes" 2"No".
value labels R_STOPMFI4 1"Yes" 2"No".
value labels R_STOPMFI5 1"Yes" 2"No".
value labels R_STOPMFI6 1"Yes" 2"No".
value labels R_STOPMFI7 1"Yes" 2"No".

variable labels NBFI_TRANSFER	"Ever used NBFI to send money to, or receive money from someone"
NBFI_MERCHANT	"Ever used NBFI to buy goods and service"
NBFI_BILL	"Ever used NBFI to pay a bill"
NBFI_GOV	"Ever used NBFI to receive money from the government"
NBFI_WAGE	"Ever used NBFI to receive payment from an exmployer"
NBFI_INSURANCE	"Ever used NBFI to pay for insurance or receive payment from insurance"
NBFI_SAVE	"Ever used NBFI to save money"
NBFI_INVEST	"Ever used NBFI to make an investment"
NBFI_LOAN	"Ever used NBFI to borrow money or get  credit"
NBFI_AIRTIME	"Ever used NBFI to buy airtime top-ups or pay a mobile phone bill"
ACTIVE_NBFI_TRANSFER	"Used NBFI to send money to, or receive money from someone in past 90 days"
ACTIVE_NBFI_MERCHANT	"Used NBFI to buy goods and service in past 90 days"
ACTIVE_NBFI_BILL	"Used NBFI to pay a bill in past 90 days"
ACTIVE_NBFI_GOV	"Used NBFI to receive money from the government in past 90 days"
ACTIVE_NBFI WAGE	"Used NBFI to receive payment from an exmployer in past 90 days"
ACTIVE_NBFI_INSURANCE	"Used NBFI to pay for insurance or receive payment from insurance in past 90 days"
ACTIVE_NBFI_SAVE	"Used NBFI to save money in past 90 days"
ACTIVE_NBFI_INVEST	"Used NBFI to make an investment in past 90 days"
ACTIVE_NBFI_LOAN	"Used NBFI to borrow money or get credit in past 90 days"
ACTIVE_NBFI_AIRTIME	"Used NBFI to buy airtime top-ups or pay a mobile phone bill in past 90 days".






