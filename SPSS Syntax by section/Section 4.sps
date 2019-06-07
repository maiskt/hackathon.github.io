* Encoding: windows-1252.
**********************.
*Bangladesh 2018.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2018 (public+ANONGPS).sav".
    dataset name ind18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.
variable labels ACCESS_PHONE "Have access to a phone (phone user)".
value labels ACCESS_PHONE 1"Yes" 0"No".

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.
variable labels OWN_PHONE "Own a phone".
value labels OWN_PHONE 1"Yes" 0"No".

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.
variable labels BORROW_PHONE "Use a mobile phone that belongs to someone else or is shared".
value labels BORROW_PHONE 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smart_phone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes"  0"No".

** own_sim.
* Recoded MT12_1:MT12_6 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".


** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_9 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).
variable labels PHONE_ADV "Use advanced functions on phone".
value labels PHONE_ADV 1"Yes" 0"No".

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
variable labels 
PHONE_CALL "Called someone through a mobile phone"
PHONE_R_CALL "Received a call from someone through a mobile phone".
value labels PHONE_CALL PHONE_R_CALL 1"Yes" 0"No".

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
variable labels PHONE_SMS "Ever sent/received text messages".
value labels PHONE_SMS 1 "Yes" 0 "No".

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_4 thru MT17_9 values 1-6 to indicate adv4 thru adv9 "yes".
count PHONE_INTERNET=MT17_4 (1 thru 6).
count PHONE_MVG=MT17_5 (1 thru 6).
count PHONE_TRANSACT=MT17_6 (1 thru 6).
count PHONE_SOCIAL=MT17_7 (1 thru 6).
count PHONE_PICTURE=MT17_8 (1 thru 6).
count PHONE_APP=MT17_9 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Missing variable PHONE_MMS.
numeric PHONE_MMS.
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
* Missing variable PHONE_TSCREEN.
numeric PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** MISSING PHONE_MAP.
numeric PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9_1 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9_1=1 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9_2 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9_2=1 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9_3 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9_3=1 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9_4 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9_4=1 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9_5 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9_5=1 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Missing NOPHONE6.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** able_sms.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate able_message "yes".
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone".
value labels ABLE_SMS 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Recoded MT18A_6 to ABLE_APP.
recode MT18A_6 (2 thru 4=1)(else=0) into ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

**********************.
* India 2018.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2018 (public+ANONGPS).sav".
    dataset name ind18.
    compute YEAR = 2018.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_14 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_9 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_9 values 1-6 to indicate adv4 thru adv9 "yes".
count PHONE_INTERNET=MT17_4 (1 thru 6).
count PHONE_MVG=MT17_5 (1 thru 6).
count PHONE_TRANSACT=MT17_6 (1 thru 6).
count PHONE_SOCIAL=MT17_7 (1 thru 6).
count PHONE_PICTURE=MT17_8 (1 thru 6).
count PHONE_APP=MT17_9 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
numeric PHONE_MMS.

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

** R_NOPHONE1.
* Recoded MT9_1 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9_1=1 R_NOPHONE1=1.

** R_NOPHONE2.
* Recoded MT9_2 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9_2=1 R_NOPHONE2=1.

** R_NOPHONE3.
* Recoded MT9_3 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9_3=1 R_NOPHONE3=1.

** R_NOPHONE4.
* Recoded MT9_4 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9_4=1 R_NOPHONE4=1.

** R_NOPHONE5.
* Recoded MT9_5 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9_5=1 R_NOPHONE5=1.

** R_NOPHONE6.
* Missing MT9_6 variable.
numeric R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
*Bangladesh 2017.
**********************.
get file =  "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2017 (public+ANONGPS).sav".
    dataset name bng17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smart_phone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_6 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 (1).
recode OWN_SIM (1 THRU HIGHEST=1).

** able_sms.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate able_message "yes".
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
** phone_adv.
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_9 values 1-6 to indicate adv4 thru adv9 "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
* Missing variable PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
*India 2017.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2017 (public+ANONGPS).sav".
    dataset name ind17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_14 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT7_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
*Kenya 2017.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Kenya\Kenya 2013-2017\FII Kenya 2017 (public+ANONGPS).sav".
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_5 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
* Nigeria 2017.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Nigeria\Nigeria 2013-2017\FII Nigeria 2017 (public+ANONGPS).sav".
    dataset name nga17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables SbjNum = SBJNUM.
    compute COUNTRY = "Nigeria".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_4 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
* Pakistan 2017.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Pakistan\Pakistan 2013-2017\FII Pakistan 2017 (public+ANONGPS).sav".
    dataset name pak17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_5 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_96 (1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values  (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
* Tanzania 2017.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Tanzania\Tanzania 2013-2017\FII Tanzania 2017 (public+ANONGPS).sav".
    dataset name tza17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_7 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values  (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 5).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
* Uganda 2017.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Uganda\Uganda 2013-2017\FII Uganda 2017 (public+ANONGPS).sav".
    dataset name uga17.
    compute YEAR = 2017.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
* Recoded MT12_1:MT12_7 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10(1).
recode OWN_SIM (1 THRU HIGHEST=1).

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.

** phone_adv.
count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

** PHONE_CALL.
** PHONE_R_CALL.
* Recoded MT17_1 values 1-6 to indicate phone_call "yes".
* Recoded MT17_2 values 1-6 to indicate phone_r_call "yes".
count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).

** PHONE_SMS.
* Recoded MT17_3 values 1-6 to indicate PHONE_SMS "yes".
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.

** PHONE_INTERNET.
** PHONE_MVG.
** PHONE_TRANSACT.
** PHONE_SOCIAL.
** PHONE_PICTURE.
** PHONE_APP.
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.

** PHONE_TSCREEN.
numeric PHONE_TSCREEN.

** MISSING PHONE_MAP.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

** ABLE_CALL.
* Recoded MT18A_1 values 2-4 to indicate ABLE_CALL "yes".
recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.

**********************.
* Bangladesh 2016.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2016 (public+ANONGPS).sav".
    dataset name bng16.
    compute YEAR = 2016.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "Bangladesh".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*India 2016.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2016 (public+ANONGPS).sav".
    dataset name ind16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_1 (1 thru 5).
count PHONE_APP=MT17_10 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*Indonesia 2016.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Indonesia\Indonesia 2014-2016\FII Indonesia 2016 (public+ANONGPS).sav".
    dataset name ida16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Indonesia".        

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.
** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Kenya 2016.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Kenya\Kenya 2013-2017\FII Kenya 2016 (public+ANONGPS).sav".
    dataset name ken16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Recoded MT18A_3 value 1 to indicate ABLE_SMS "yes".
recode mt18a_3 (1=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Nigeria 2016.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Nigeria\Nigeria 2013-2017\FII Nigeria 2016 (public+ANONGPS).sav".
    dataset name nga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Recoded MT18A_3 value 1 to indicate ABLE_SMS "yes".
recode mt18a_3 (1=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Pakistan 2016.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Pakistan\Pakistan 2013-2017\FII Pakistan 2016 (public+ANONGPS).sav".
    dataset name pak16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (1=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Tanzania 2016.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Tanzania\Tanzania 2013-2017\FII Tanzania 2016 (public+ANONGPS).sav".
    dataset name tza16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania".     

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Recoded MT18A_3 value 1 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (1=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*Uganda 2016.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Uganda\Uganda 2013-2017\FII Uganda 2016 (public+ANONGPS).sav".
    dataset name uga16.
    compute YEAR = 2016.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (1=1)(else=0) into ABLE_SMS.

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
count PHONE_MMS=MT17_4 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Bangladesh 2015.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2015 (public+ANONGPS).sav".
    dataset name bng15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT22_4 to MT22_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT22_1 (1 thru 5).
count PHONE_R_CALL=MT22_2 (1 thru 5).
recode MT22_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT22_4 (1 thru 5).
count PHONE_INTERNET=MT22_5 (1 thru 5).
count PHONE_MVG=MT22_6 (1 thru 5).
count PHONE_TRANSACT=MT22_7 (1 thru 5).
recode MT22_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT22_9 (1 thru 5).
count PHONE_APP=MT22_10 (1 thru 5).
count PHONE_PICTURE=MT22_11 (1 thru 5).
recode MT22_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT22_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* India 2015.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2015 (public+ANONGPS).sav".
    dataset name ind15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Indonesia 2015.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Indonesia\Indonesia 2014-2016\FII Indonesia 2015 (public+ANONGPS).sav".
    dataset name ida15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Indonesia".    

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_7, MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Kenya 2015.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Kenya\Kenya 2013-2017\FII Kenya 2015 (public+ANONGPS).sav".
    dataset name ken15. 
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Kenya".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_7, MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Nigeria 2015.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Nigeria\Nigeria 2013-2017\FII Nigeria 2015 (public+ANONGPS).sav".
    dataset name nga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_7, MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Pakistan 2015.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Pakistan\Pakistan 2013-2017\FII Pakistan 2015 (public+ANONGPS).sav".
    dataset name pak15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".  

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT10 (1=1)(else=0) into OWN_SIM.

** ABLE_SMS.
* Missing variable ABLE_SMS.
numeric ABLE_SMS.

** phone_adv.
* Recoded MT22_4:MT22_7, MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT22_4 to MT22_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_ADV=MT22_4 to MT22_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).
count PHONE_CALL=MT22_1 (1 thru 5).
count PHONE_R_CALL=MT22_2 (1 thru 5).
recode MT22_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT22_4 (1 thru 5).
count PHONE_INTERNET=MT22_5 (1 thru 5).
count PHONE_MVG=MT22_6 (1 thru 5).
count PHONE_TRANSACT=MT22_7 (1 thru 5).
recode MT22_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT22_9 (1 thru 5).
count PHONE_APP=MT22_10 (1 thru 5).
count PHONE_PICTURE=MT22_11 (1 thru 5).
recode MT22_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT22_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Tanzania 2015.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Tanzania\Tanzania 2013-2017\FII Tanzania 2015 (public+ANONGPS).sav".
    dataset name tza15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT10 (1=1)(else=0) into OWN_SIM.


** phone_adv.
* Recoded MT17_4:MT17_7, MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Uganda 2015.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Uganda\Uganda 2013-2017\FII Uganda 2015 (public+ANONGPS).sav".
    dataset name uga15.
    compute YEAR = 2015.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

** borrow_phone.
recode MT7 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT10 (1=1)(else=0) into OWN_SIM.

** phone_adv.
* Recoded MT17_4:MT17_7, MT17_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_MMS=MT17_4 (1 thru 5).
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
recode MT17_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_10 (1 thru 5).
count PHONE_APP=MT17_11 (1 thru 5).
recode MT17_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
recode MT17_13 (1 thru 5=1)(else=0) into PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Bangladesh 2014.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2014 (public+ANONGPS).sav".
    dataset name bng14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Bangladesh".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT7(1=1)(else=0) into own_sim.

** phone_adv.
* Recoded MT10_4:MT10_7, MT10_9 values 1-5 to indicate adv_phone "yes".
count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* India 2014.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2014 (public+ANONGPS).sav".
    dataset name ind14.
    compute YEAR = 2014.
    string COUNTRY (A10).
     rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_11 (1 thru 5).
count PHONE_APP=MT10_10 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Indonesia 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Indonesia\Indonesia 2014-2016\FII Indonesia 2014 (public+ANONGPS).sav".
    dataset name ida14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables ID = SBJNUM.
    compute COUNTRY = "Indonesia".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.


**********************.
* Kenya 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Kenya\Kenya 2013-2017\FII Kenya 2014 (public+ANONGPS).sav".
    dataset name ken14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Kenya".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_11 (1 thru 5).
count PHONE_APP=MT10_10 (1 thru 5).
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Nigeria 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Nigeria\Nigeria 2013-2017\FII Nigeria 2014 (public+ANONGPS).sav".
    dataset name nga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Nigeria".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Pakistan 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Pakistan\Pakistan 2013-2017\FII Pakistan 2014 (public+ANONGPS).sav".
    dataset name pak14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables QN = SBJNUM.
    compute COUNTRY = "Pakistan".  

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Tanzania 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Tanzania\Tanzania 2013-2017\FII Tanzania 2014 (public+ANONGPS).sav".
    dataset name tza14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Tanzania".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Uganda 2014.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Uganda\Uganda 2013-2017\FII Uganda 2014 (public+ANONGPS).sav".
    dataset name uga14.
    compute YEAR = 2014.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT3 (1=1)(else=0) into BORROW_PHONE.

** MISSING basic_phone.
** MISSING feature_phone.
** MISSING smartphone.
numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into own_sim.

count PHONE_ADV=MT10_4 MT10_5 MT10_6 MT10_7 MT10_8 MT10_9 MT10_10 MT10_11 MT10_12 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT10_1 (1 thru 5).
count PHONE_R_CALL=MT10_2 (1 thru 5).
recode MT10_3 (1 thru 5=1)(else=0) into PHONE_SMS.
recode MT10_4 (1 thru 5=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT10_5 (1 thru 5).
count PHONE_MVG=MT10_6 (1 thru 5).
count PHONE_TRANSACT=MT10_7 (1 thru 5).
recode MT10_8 (1 thru 5=1)(else=0) into PHONE_VIDEO.
count PHONE_SOCIAL=MT10_9 (1 thru 5).
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
recode MT10_12 (1 thru 5=1)(else=0) into PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Bangladesh 2013.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Bangladesh\Bangladesh 2013-2018\FII Bangladesh 2013 (public+ANONGPS).sav".
    dataset name bng13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Bangladesh".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
* Recoded MT11_4:MT11_7 value 1 to indicate adv_phone "yes".
count PHONE_ADV=MT11_4 to MT11_8 (1).
recode PHONE_ADV (1 thru highest=1) (else=0).

count PHONE_CALL=MT11_1 (1).
count PHONE_R_CALL=MT11_2 (1).
recode MT11_3 (1=1)(else=0) into PHONE_SMS.
recode MT11_4 (1=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT11_5 (1).
count PHONE_MVG=MT11_6 (1).
count PHONE_TRANSACT=MT11_7 (1).
recode MT11_8 (1=1)(else=0) into PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*India 2013.
**********************.
 get file =  "C:\Users\klinek\Desktop\FII Anonymized Coordinates\India\India 2013-2018\FII India 2013 (public+ANONGPS).sav".
    dataset name ind13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "India".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
* Recoded MT11_4:MT11_7 value 1 to indicate adv_phone "yes".
numeric PHONE_ADV.

numeric PHONE_CALL.
numeric PHONE_R_CALL.
numeric PHONE_SMS.
numeric PHONE_MMS.
numeric PHONE_INTERNET.
numeric PHONE_MVG.
numeric PHONE_TRANSACT.
numeric PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Kenya 2013.
**********************.
get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Kenya\Kenya 2013-2017\FII Kenya 2013 (public+ANONGPS).sav".
    DATASET NAME ken13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Kenya".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
numeric PHONE_ADV.

numeric PHONE_CALL.
numeric PHONE_R_CALL.
numeric PHONE_SMS.
numeric PHONE_MMS.
numeric PHONE_INTERNET.
numeric PHONE_MVG.
numeric PHONE_TRANSACT.
numeric PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Nigeria 2013.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Nigeria\Nigeria 2013-2017\FII Nigeria 2013 (public+sbjnum).sav".
    dataset name nga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY = "Nigeria".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
count PHONE_ADV=MM11D MM11E MM11F MM11G MM11H (1).
recode PHONE_ADV (1 thru highest=1).

recode MM11A (1=1)(else=0) into PHONE_CALL.
recode MM11B (1=1)(else=0) into PHONE_R_CALL.
recode MM11C (1=1)(else=0) into PHONE_SMS.
recode MM11D (1=1)(else=0) into PHONE_MMS.
recode MM11E (1=1)(else=0) into PHONE_INTERNET.
numeric PHONE_MVG.
recode MM11G (1=1)(else=0) into PHONE_TRANSACT.
recode MM11H (1=1)(else=0) into PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Pakistan 2013.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Pakistan\Pakistan 2013-2017\FII Pakistan 2013 (public+ANONGPS).sav".
    dataset name pak13.
    compute YEAR = 2013.
    string COUNTRY (A10).
    rename variables serial = SBJNUM.
    compute COUNTRY = "Pakistan".     

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
count PHONE_ADV=MM11_4 MM11_5 MM11_6 MM11_7 MM11_8 (1).
recode PHONE_ADV (1 thru highest=1).

recode MM11_1 (1=1)(else=0) into PHONE_CALL.
recode MM11_2 (1=1)(else=0) into PHONE_R_CALL.
recode MM11_3 (1=1)(else=0) into PHONE_SMS.
recode MM11_4 (1=1)(else=0) into PHONE_MMS.
recode MM11_5 (1=1)(else=0) into PHONE_INTERNET.
numeric PHONE_MVG.
recode MM11_7 (1=1)(else=0) into PHONE_TRANSACT.
recode MM11_8 (1=1)(else=0) into PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Tanzania 2013.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Tanzania\Tanzania 2013-2017\FII Tanzania 2013 (public+sbjnum).sav".
    dataset name tza13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables SERIAL = SBJNUM.
    compute COUNTRY = "Tanzania". 

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
numeric PHONE_ADV.

numeric PHONE_CALL.
numeric PHONE_R_CALL.
numeric PHONE_SMS.
numeric PHONE_MMS.
numeric PHONE_INTERNET.
numeric PHONE_MVG.
numeric PHONE_TRANSACT.
numeric PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Uganda 2013.
**********************.
 get file = "C:\Users\klinek\Desktop\FII Anonymized Coordinates\Uganda\Uganda 2013-2017\FII Uganda 2013 (public+ANONGPS).sav".
    dataset name uga13.
    compute YEAR = 2013.
    string COUNTRY (A10). 
    rename variables serial = SBJNUM.
    compute COUNTRY  = "Uganda".

** access_phone.
COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

** own_phone.
compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

** borrow_phone.
recode MT2 (1=1)(else=0) into BORROW_PHONE.

** basic_phone.
** feature_phone.
** smartphone.
recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

** own_sim.
recode MT5(1=1)(else=0) into own_sim.

** phone_adv.
numeric PHONE_ADV.

numeric PHONE_CALL.
numeric PHONE_R_CALL.
numeric PHONE_SMS.
numeric PHONE_MMS.
numeric PHONE_INTERNET.
numeric PHONE_MVG.
numeric PHONE_TRANSACT.
numeric PHONE_VIDEO.
numeric PHONE_SOCIAL.
numeric PHONE_PICTURE.
numeric PHONE_APP.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

numeric R_NOPHONE1.
numeric R_NOPHONE2.
numeric R_NOPHONE3.
numeric R_NOPHONE4.
numeric R_NOPHONE5.
numeric R_NOPHONE6.

numeric ABLE_CALL.
numeric ABLE_MENU.
numeric ABLE_SMS.
numeric ABLE_INTERNET.
numeric ABLE_TRANSACT.
numeric ABLE_APP.