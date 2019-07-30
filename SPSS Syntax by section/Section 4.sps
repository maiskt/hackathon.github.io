* Encoding: windows-1252.
**********************.
*Bangladesh 2018.
**********************.
compute YEAR = 2018.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Bangladesh".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_9 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_4 (1 thru 6).
count PHONE_MVG=MT17_5 (1 thru 6).
count PHONE_TRANSACT=MT17_6 (1 thru 6).
count PHONE_SOCIAL=MT17_7 (1 thru 6).
count PHONE_PICTURE=MT17_8 (1 thru 6).
count PHONE_APP=MT17_9 (1 thru 6).

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

numeric R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
recode MT18A_6 (2 thru 4=1)(else=0) into ABLE_APP.

**********************.
* India 2018.
**********************.
compute YEAR = 2018.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_9 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_4 (1 thru 6).
count PHONE_MVG=MT17_5 (1 thru 6).
count PHONE_TRANSACT=MT17_6 (1 thru 6).
count PHONE_SOCIAL=MT17_7 (1 thru 6).
count PHONE_PICTURE=MT17_8 (1 thru 6).
count PHONE_APP=MT17_9 (1 thru 6).
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

numeric R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*Bangladesh 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Bangladesh".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 (1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode MT18A_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*India 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10 MT12_11 MT12_12 MT12_13 MT12_14(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
*Kenya 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Kenya".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Nigeria 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables SbjNum = SBJNUM.
compute COUNTRY = "Nigeria".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Pakistan 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Pakistan". 

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_96 (1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Tanzania 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Tanzania". 

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 5).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Uganda 2017.
**********************.
compute YEAR = 2017.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY  = "Uganda".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT2A_1 to MT2A_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

count OWN_SIM=MT12_1 MT12_2 MT12_3 MT12_4 MT12_5 MT12_6 MT12_7 MT12_8 MT12_9 MT12_10(1).
recode OWN_SIM (1 THRU HIGHEST=1).

count PHONE_ADV=MT17_4 to MT17_11 (1 thru 6).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 6).
count PHONE_R_CALL=MT17_2 (1 thru 6).
recode MT17_3 (1 thru 6=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 6).
count PHONE_MVG=MT17_6 (1 thru 6).
count PHONE_TRANSACT=MT17_7 (1 thru 6).
count PHONE_SOCIAL=MT17_9 (1 thru 6).
count PHONE_PICTURE=MT17_10 (1 thru 6).
count PHONE_APP=MT17_11 (1 thru 6).
count PHONE_MMS=MT17_4 (1 thru 6).
numeric PHONE_VIDEO.
numeric PHONE_TSCREEN.
numeric PHONE_MAP.

recode MT9_1 (4,5=1)(else=0) into R_NOPHONE1.
recode MT9_2 (4,5=1)(else=0) into R_NOPHONE2.
recode MT9_3 (4,5=1)(else=0) into R_NOPHONE3.
recode MT9_4 (4,5=1)(else=0) into R_NOPHONE4.
recode MT9_5 (4,5=1)(else=0) into R_NOPHONE5.
recode MT9_6 (4,5=1)(else=0) into R_NOPHONE6.

recode MT18A_1 (2 thru 4=1)(else=0) into ABLE_CALL.
recode MT18A_2 (2 thru 4=1)(else=0) into ABLE_MENU.
recode mt18a_3 (2 thru 4=1)(else=0) into ABLE_SMS.
recode MT18A_4 (2 thru 4=1)(else=0) into ABLE_INTERNET.
recode MT18A_5 (2 thru 4=1)(else=0) into ABLE_TRANSACT.
numeric ABLE_APP.

**********************.
* Bangladesh 2016.
**********************.
compute YEAR = 2016.
string COUNTRY (A10).
rename variables serial = SBJNUM.
compute COUNTRY = "Bangladesh".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
count PHONE_INTERNET=MT17_5 (1 thru 5).
count PHONE_MVG=MT17_6 (1 thru 5).
count PHONE_TRANSACT=MT17_7 (1 thru 5).
count PHONE_SOCIAL=MT17_9 (1 thru 5).
count PHONE_PICTURE=MT17_11 (1 thru 5).
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Indonesia".        

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Kenya".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Nigeria".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Pakistan". 

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Tanzania".     

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2016.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY  = "Uganda".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru highest=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT17_4 to MT17_13 (1 thru 5).
recode PHONE_ADV (1 thru highest=1).

count PHONE_CALL=MT17_1 (1 thru 5).
count PHONE_R_CALL=MT17_2 (1 thru 5).
recode MT17_3 (1 thru 5=1)(else=0) into PHONE_SMS.
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
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Bangladesh". 

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

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
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Indonesia".    

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
* Kenya 2015.
**********************.
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Kenya".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
* Nigeria 2015.
**********************.
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Nigeria".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
* Pakistan 2015.
**********************.
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Pakistan".  

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

recode MT3_1 to MT3_3 (1 thru 98=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.
recode MT10 (1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Tanzania". 

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
* Uganda 2015.
**********************.
compute YEAR = 2015.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY  = "Uganda".

COMPUTE ACCESS_PHONE=0.
IF MT2=1 OR MT7=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT2=1 OWN_PHONE=1.

recode MT7 (1=1)(else=0) into BORROW_PHONE.

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
* Bangladesh 2014.
**********************.
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Bangladesh".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10).
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables ID = SBJNUM.
compute COUNTRY = "Indonesia".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Kenya".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
count PHONE_PICTURE=MT10_10 (1 thru 5).
count PHONE_APP=MT10_11 (1 thru 5).
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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Nigeria".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables QN = SBJNUM.
compute COUNTRY = "Pakistan".  

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Tanzania".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2014.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY  = "Uganda".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT3=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT3 (1=1)(else=0) into BORROW_PHONE.

numeric BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT7(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables SERIAL = SBJNUM.
compute COUNTRY = "Bangladesh".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT11_4 to MT11_8 (1).
recode PHONE_ADV (1 thru highest=1) (else=0).

count PHONE_CALL=MT11_1 (1).
count PHONE_R_CALL=MT11_2 (1).
recode MT11_3 (1=1)(else=0) into PHONE_SMS.
recode MT11_4 (1=1)(else=0) into PHONE_MMS.
count PHONE_INTERNET=MT11_5 (1).
numeric PHONE_MVG.
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
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "India".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables SERIAL = SBJNUM.
compute COUNTRY = "Kenya".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY = "Nigeria".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT11D MT11E MT11F MT11G MT11H (1).
recode PHONE_ADV (1 thru highest=1).

recode MT11A (1=1)(else=0) into PHONE_CALL.
recode MT11B (1=1)(else=0) into PHONE_R_CALL.
recode MT11C (1=1)(else=0) into PHONE_SMS.
recode MT11D (1=1)(else=0) into PHONE_MMS.
recode MT11E (1=1)(else=0) into PHONE_INTERNET.
numeric PHONE_MVG.
recode MT11G (1=1)(else=0) into PHONE_TRANSACT.
recode MT11H (1=1)(else=0) into PHONE_VIDEO.
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
compute YEAR = 2013.
string COUNTRY (A10).
rename variables serial = SBJNUM.
compute COUNTRY = "Pakistan".     

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

count PHONE_ADV=MT11_4 MT11_5 MT11_6 MT11_7 MT11_8 (1).
recode PHONE_ADV (1 thru highest=1).

recode MT11_1 (1=1)(else=0) into PHONE_CALL.
recode MT11_2 (1=1)(else=0) into PHONE_R_CALL.
recode MT11_3 (1=1)(else=0) into PHONE_SMS.
recode MT11_4 (1=1)(else=0) into PHONE_MMS.
recode MT11_5 (1=1)(else=0) into PHONE_INTERNET.
numeric PHONE_MVG.
recode MT11_7 (1=1)(else=0) into PHONE_TRANSACT.
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
* Tanzania 2013.
**********************.
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables SERIAL = SBJNUM.
compute COUNTRY = "Tanzania". 

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4_1 to MT4_3 (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

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
compute YEAR = 2013.
string COUNTRY (A10). 
rename variables serial = SBJNUM.
compute COUNTRY  = "Uganda".

COMPUTE ACCESS_PHONE=0.
IF MT1=1 OR MT2=1 ACCESS_PHONE=1.

compute OWN_PHONE=0.
if MT1=1 OWN_PHONE=1.

recode MT2 (1=1)(else=0) into BORROW_PHONE.

recode MT4A to MT4C (1=1)(else=0) into BASIC_PHONE FEATURE_PHONE SMART_PHONE.

recode MT5(1=1)(else=0) into OWN_SIM.

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

******************************************************************************************************************************.
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
