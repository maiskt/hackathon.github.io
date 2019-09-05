* Encoding: windows-1252.

*Section 6.3.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

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
**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

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
**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(4,5=1)(else=0).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(4,5=1)(else=0).
compute R_NOBANK3=ff3_4.
recode R_NOBANK3(4,5=1)(else=0).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(4,5=1)(else=0).
compute R_NOBANK5=ff3_3.
recode R_NOBANK5(4,5=1)(else=0).

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
**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
numeric USE_BANK_RETAIL.
compute USE_BANK_ONLINE=0.
if ff10_3=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_4=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_5=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.
**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10=1)(else=0) into R_NOBANK2.
recode ff3(6,20,21=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5=1)(else=0) into R_NOBANK5.

numeric R_NOBANK_BUSI1.
numeric R_NOBANK_BUSI2. 
numeric R_NOBANK_BUSI3. 
numeric R_NOBANK_BUSI4. 
numeric R_NOBANK_BUSI5. 
numeric R_NOBANK_BUSI6. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 or ff19_7=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
numeric USE_BANK_RETAIL.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_1=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_2=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_3=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_4=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_5=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_6=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
numeric USE_BANK_RETAIL.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

recode ff3(3=1)(else=0) into R_NOBANK1.
recode ff3(8,10,18=1)(else=0) into R_NOBANK2.
recode ff3(6,23,25=1)(else=0) into R_NOBANK3.
recode ff3(4=1)(else=0) into R_NOBANK4.
recode ff3(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff18_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff18_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff18_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff18_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff18_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff18_7=1 R_NOBANK_BUSI6=1. 

compute EXP_BANK1=0.
if ff19_1=1 EXP_BANK1=1.
compute EXP_BANK2=0.
if ff19_2=1 EXP_BANK2=1.
compute EXP_BANK3=0.
if ff19_3=1 EXP_BANK3=1.
compute EXP_BANK4=0.
if ff19_4=1 EXP_BANK4=1.
compute EXP_BANK5=0.
if ff19_5=1 EXP_BANK5=1.
compute EXP_BANK6=0.
if ff19_6=1 EXP_BANK6=1.

compute USE_BANK_OTC=0.
if ff10_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff10_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff10_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff10_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff10_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff10_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff10_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.
**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1.  

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.
**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

recode ff5(3=1)(else=0) into R_NOBANK1.
recode ff5(8,10,18=1)(else=0) into R_NOBANK2.
recode ff5(6,23,25=1)(else=0) into R_NOBANK3.
recode ff5(4=1)(else=0) into R_NOBANK4.
recode ff5(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ff22_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ff22_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ff22_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ff22_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ff22_6=1 R_NOBANK_BUSI5=1.
compute R_NOBANK_BUSI6=0. 
if ff22_7=1 R_NOBANK_BUSI6=1. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ff15_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ff15_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ff15_3=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ff15_4=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ff15_5=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ff15_6=1 USE_BANK_AGENT=1.
compute USE_BANK_WALLET=0.
if ff15_7=1 USE_BANK_WALLET=1.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21b=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21c=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21d=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21e=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21f=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11_5=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11_3=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11_4=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.
**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21_6=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11_5=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11_3=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11_4=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21b=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21c=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21d=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21e=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21f=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11a=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11b=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11e=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11c=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11d=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11f=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.
**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21b=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21c=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21d=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21e=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21f=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11a=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11b=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11e=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11c=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11d=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11f=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.
**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21b=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21c=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21d=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21e=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21f=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6.  

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11a=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11b=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11e=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11c=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11d=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11f=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21_2=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21_3=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21_4=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21_5=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21_6=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11_1=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11_2=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11_5=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11_3=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11_4=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11_6=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

recode ffi2(3=1)(else=0) into R_NOBANK1.
recode ffi2(8,10,18=1)(else=0) into R_NOBANK2.
recode ffi2(6=1)(else=0) into R_NOBANK3.
recode ffi2(4=1)(else=0) into R_NOBANK4.
recode ffi2(5,11=1)(else=0) into R_NOBANK5.

compute R_NOBANK_BUSI1=0. 
if ffi21b=1 R_NOBANK_BUSI1=1.
compute R_NOBANK_BUSI2=0. 
if ffi21c=1 R_NOBANK_BUSI2=1.
compute R_NOBANK_BUSI3=0. 
if ffi21d=1 R_NOBANK_BUSI3=1.
compute R_NOBANK_BUSI4=0.
if ffi21e=1 R_NOBANK_BUSI4=1. 
compute R_NOBANK_BUSI5=0. 
if ffi21f=1 R_NOBANK_BUSI5=1.
numeric R_NOBANK_BUSI6. 

numeric EXP_BANK1.
numeric EXP_BANK2.
numeric EXP_BANK3.
numeric EXP_BANK4.
numeric EXP_BANK5.
numeric EXP_BANK6.

compute USE_BANK_OTC=0.
if ffi11a=1 USE_BANK_OTC=1.
compute USE_BANK_ATM=0.
if ffi11b=1 USE_BANK_ATM=1.
compute USE_BANK_RETAIL=0.
if ffi11e=1 USE_BANK_RETAIL=1.
compute USE_BANK_ONLINE=0.
if ffi11c=1 USE_BANK_ONLINE=1.
compute USE_BANK_MOBILE=0.
if ffi11d=1 USE_BANK_MOBILE=1.
compute USE_BANK_AGENT=0.
if ffi11f=1 USE_BANK_AGENT=1.
numeric USE_BANK_WALLET.

*****************************************************************************************************************************.
*Labels.

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
