* Encoding: windows-1252.
***********************.
* Bangladesh 2018.
***********************.
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

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** able_sms.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate able_message "yes".
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone".
value labels ABLE_SMS 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Recoded MT18A_6 to ABLE_APP.
compute ABLE_APP=0.
if MT18A_6=1 ABLE_APP=1.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* India 2018.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_14 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_9 values 1-6 to indicate adv4 thru adv9 "yes".
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
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Bangladesh 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

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
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 (1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** able_sms.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate able_message "yes".
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone".
value labels ABLE_SMS 1 "Yes" 0 "No".

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
* Recoded MT17_5 thru MT17_9 values 1-6 to indicate adv4 thru adv9 "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
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

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Recoded MT9_6 to NOPHONE6.
compute R_NOPHONE6=1.
if MT9_6=1 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* India 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_14 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Kenya 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_5 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Nigeria 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_4 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Tanzania 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_7 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Uganda 2017.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_7 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Missing variable PHONE_VIDEO.
numeric PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT2A_3 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
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
* Missing MT9_6 variable.
numeric R_NOPHONE6.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Recoded MT18A_5 to ABLE_TRANSACT.
compute ABLE_TRANSACT=0.
if MT18A_5=1 ABLE_TRANSACT=1.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Bangladesh 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_6 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* India 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_14 MT12_96 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14 MT12_96(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Kenya 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_5 MT12_96 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_96(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Nigeria 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_4 MT12_96 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_96(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Pakistan 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_5 MT12_96 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_96(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Uganda 2016.
******************************.
rename variables serial=SBJNUM.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

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
variable labels borrow_phone "Use a mobile phone that belongs to someone else or is shared".
value labels borrow_phone 1 "Yes" 0 "No".

** basic_phone.
** feature_phone.
** smartphone.
recode MT3_1 to MT3_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
variable labels BASIC_PHONE "Have Basic phone" FEATURE_PHONE "Have Feature phone" SMART_PHONE "Have Smartphone".
value labels BASIC_PHONE FEATURE_PHONE SMART_PHONE 1"Yes" 0"No".

** own_sim.
* Recoded MT12_1:MT12_10 MT12_96 "Do you have an active/working SIM card with the following providers" to include any mobile network provider.
count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_96(1).
recode OWN_SIM (1 THRU HIGHEST=1).
variable labels OWN_SIM "Own a SIM card".
value labels OWN_SIM 1 "Yes" 0 "No".

** ABLE_SMS.
* Recoded MT18A_3 values 2-4 (A little ability, some ability, complete ability) to indicate ABLE_SMS "yes".
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
variable labels ABLE_SMS "Do you have the ability to send and receive text message with mobile phone?".
value labels ABLE_SMS 1"Yes" 0"No/DK".

** phone_adv.
* Recoded MT17_4:MT17_9 values 1-6 to indicate adv_phone "yes".
count PHONE_ADV=MT17_4 to MT17_7 MT17_9 (1 thru 6).
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
* Recoded MT17_5 thru MT17_11 values 1-6 to indicate "yes".
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
variable labels PHONE_INTERNET "Ever used phone to search the internet"
PHONE_MVG "Ever used phone to download music, video or games"
PHONE_TRANSACT "Ever used phone to make a financial transaction such as send or receive money, or make a payment, or a bank transaction"
PHONE_SOCIAL "Ever used phone to use Facebook, WhatsApp, Twitter, Instagram or another social networking application"
PHONE_PICTURE "Ever used phone to take a picture"
PHONE_APP "Ever used phone to download an application".
value labels PHONE_INTERNET PHONE_MVG PHONE_TRANSACT PHONE_SOCIAL PHONE_PICTURE PHONE_APP 1"Yes" 0"No".

** PHONE_MMS.
* Recoded MT17_4 values 1-6 to indicate PHONE_MMS "yes".
count PHONE_MMS=MT17_4 (1 thru 6).
variable labels PHONE_MMS "Ever sent/received photo messages (MMS) with a mobile phone".
value labels PHONE_MMS 1 "Yes" 0 "No".

** PHONE_VIDEO.
* Recoded MT17_8 values 2-4 to indicate PHONE_VIDEO "yes".
recode MT17_8 (2 thru 4=1)(else=0) into PHONE_VIDEO.
variable labels PHONE_VIDEO "Used Call Tunes or other audio/video on-demand from operator services".
value labels PHONE_VIDEO 1 "Yes" 0 "No".

** PHONE_TSCREEN.
recode MT4_5 (1=1)(else=0) into PHONE_TSCREEN.
variable labels PHONE_TSCREEN "Used the touch screen".
value labels PHONE_TSCREEN 1 "Yes" 0 "No".

** PHONE_MAP.
* Recoded MT18_2 values 2-4 to indicate PHONE_MAP "yes".
recode MT18A_2 (2 thru 4=1)(else=0) into PHONE_MAP.
variable labels PHONE_MAP "Used navigation, maps".
value labels PHONE_MAP 1 "Yes" 0 "No".

** R_NOPHONE1.
* Recoded MT9=7 to R_NOPHONE1.
compute R_NOPHONE1=0.
if MT9=7 R_NOPHONE1=1.
variable labels R_NOPHONE1 "Reason for no phone: Lack of money to buy a mobile phone".
value labels R_NOPHONE1 1 "Yes" 0 "No".

** R_NOPHONE2.
* Recoded MT9=10 to R_NOPHONE2.
compute R_NOPHONE2=0.
if MT9=10 R_NOPHONE2=1.
variable labels R_NOPHONE2 "Reason for no phone: No need for a mobile phone".
value labels R_NOPHONE2 1 "Yes" 0 "No".

** R_NOPHONE3.
* Recoded MT9=4 to R_NOPHONE3.
compute R_NOPHONE3=0.
if MT9=4 R_NOPHONE3=1.
variable labels R_NOPHONE3 "Reason for no phone: My mobile phone was lost, broken, or stopped working".
value labels R_NOPHONE3 1 "Yes" 0 "No".

** R_NOPHONE4.
* Recoded MT9=3 to R_NOPHONE4.
compute R_NOPHONE4=0.
if MT9=3 R_NOPHONE4=1.
variable labels R_NOPHONE4 "Reason for no phone: My family members do not want me to have a mobile phone".
value labels R_NOPHONE4 1 "Yes" 0 "No".

** R_NOPHONE5.
* Recoded MT9=9 to R_NOPHONE5.
compute R_NOPHONE5=0.
if MT9=9 R_NOPHONE5=1.
variable labels R_NOPHONE5 "Reason for no phone: There is no mobile phone network where I live".
value labels R_NOPHONE5 1 "Yes" 0 "No".

** R_NOPHONE6.
* Recoded MT9=13 to R_NOPHONE6.
compute R_NOPHONE6=0.
if MT9=13 R_NOPHONE6=1.
variable labels R_NOPHONE6 "Reason for no phone: I don't know how to use a mobile phone".
value labels R_NOPHONE6 1 "Yes" 0 "No".

** ABLE_CALL.
* Recoded MT18A_1 to ABLE_CALL.
compute ABLE_CALL=0.
if MT18A_1=1 ABLE_CALL=1.
variable labels ABLE_CALL "Able to make and receive calls with a mobile phone".
value labels ABLE_CALL 1 "Yes" 0 "No".

** ABLE_MENU.
* Recoded MT18A_2 to ABLE_MENU.
compute ABLE_MENU=0.
if MT18A_2=1 ABLE_MENU=1.
variable labels ABLE_MENU "Able to navigate the menu with a mobile phone".
value labels ABLE_MENU 1 "Yes" 0 "No".

** ABLE_INTERNET.
* Recoded MT18A_4 to ABLE_INTERNET.
compute ABLE_INTERNET=0.
if MT18A_4=1 ABLE_INTERNET=1.
variable labels ABLE_INTERNET "Able to seach the internet with a mobile phone".
value labels ABLE_INTERNET 1 "Yes" 0 "No".

** ABLE_TRANSACT.
* Missing MT18A_5 recoded to ABLE_TRANSACT.
numeric ABLE_TRANSACT.
variable labels ABLE_TRANSACT "Able to make a financial transaction such as send or receive money, or make a payment, or a bank transaction with a mobile phone".
value labels ABLE_TRANSACT 1 "Yes" 0 "No".

** ABLE_APP.
* Missing MT18A_6 recoded to ABLE_APP.
numeric ABLE_APP.
variable labels ABLE_APP "Able to download an application with a mobile phone".
value labels ABLE_APP 1 "Yes" 0 "No".

******************************.
* Bangladesh 2015.
******************************.

