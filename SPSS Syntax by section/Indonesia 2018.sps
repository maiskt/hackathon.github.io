* Encoding: UTF-8.
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
*Need confirm.
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

compute SELL_CROP=0.
if DL4_1=1  or DL4_2=1 SELL_CROP=1.
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
*Need double check.
compute ACTIVE_FINANCIAL_ADV=0.
IF FNXA<=2 and (GF1=1 or GF2=1) ACTIVE_FINANCIAL_ADV=1.
*Need double check.
compute ACTIVE30_FINANCIAL_ADV=0.
IF FNXA=1 and (GF1=1 or GF2=1) ACTIVE30_FINANCIAL_ADV=1.

numeric ACCESS_DFS_PAYMENT_TRANSFER.

compute ACCESS_DFS=0.
if (BPR1=2 or BPR2=2 or BPR3=1 or
    OJK6_1=1 or OJK6_2=1 or OJK6_3=1 or OJK6_4=1 or 
    OJK10_1=1 or OJK10_2=1 or OJK10_3=1 or OJK10_4=1 or 
  ((OJK11_1=1 or COP2=1) and COP1=1) or
    BI_E25D=1) ACCESS_DFS=1. 
*Need double check.
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
IF ojk14_1>2 and ojk14_2>2 and ojk14_3>2 and ojk14_4>2 and ojk14_5>2 and ojk14_6>2 and ojk14_7>2 and ojk14_8>2 and
    ojk14_9>2 and ojk14_10>2 and ojk14_11>2 and ojk14_12>2 and ojk14_13>2 and INACTIVE_BANK=1.

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

count ACTIVE_BANK_TRANSFER=ojk14_(1 thru 2).
recode ACTIVE_BANK_TRANSFER (1 thru highest=1).
numeric ACTIVE_BANK_MERCHANT.
numeric ACTIVE_BANK_BILL.
numeric ACTIVE_BANK_GOV.
numeric ACTIVE_BANK_WAGE.
numeric ACTIVE_BANK_INSURANCE.
count ACTIVE_BANK_SAVE=ojk14_1(1 thru 2).
recode ACTIVE_BANK_SAVE (1 thru highest=1).
count ACTIVE_BANK_INVEST=ojk14_12(1 thru 2).
recode ACTIVE_BANK_INVEST (1 thru highest=1).
count ACTIVE_BANK_LOAN=ojk14_5 ojk14_6 ojk14_7 ojk14_8 ojk14_9 ojk14_10(1 thru 4).
recode ACTIVE_BANK_LOAN (1 thru highest=1).
numeric ACTIVE_BANK_AIRTIME.
*************************************************************************************************************************************.
*Section 6.3.
compute R_NOBANK1=0.
if ff3_1=1 R_NOBANK1=1.
compute R_NOBANK2=0.
if ff3_2=1 R_NOBANK2=1.
compute R_NOBANK3=0.
if ff3_3=1 R_NOBANK3=1.
compute R_NOBANK4=0.
if ff3_5=1 R_NOBANK4=1.
compute R_NOBANK5=0.
if ff3_6=1 R_NOBANK5=1.

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

*Labels.
*Section 3.
value labels AGE -2"DK".
value labels AGE_GROUP 1"15-24" 2"25-34" 3"35-44" 4"45-54" 5"55 and over" -2"DK".
value labels EDU 1"No formal education" 2"Primary education" 3"Secondary education" 4"Higher education" 5"Other".
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
*Section 6.1.
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
