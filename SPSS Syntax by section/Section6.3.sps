* Encoding: UTF-8.

*Section 6.3.

*18Bangladesh.
compute YEAR=2018.
compute COUNTRY=Bangladesh.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(sysmis=-2).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(sysmis=-2).
compute R_NOBANK3=ff3_3.
recode R_NOBANK3(sysmis=-2).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(sysmis=-2).
compute R_NOBANK5=ff3_6.
recode R_NOBANK5(sysmis=-2).

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*18India.
compute YEAR=2018.
compute COUNTRY=India.

compute R_NOBANK1=ff3_1.
recode R_NOBANK1(sysmis=-2).
compute R_NOBANK2=ff3_2.
recode R_NOBANK2(sysmis=-2).
compute R_NOBANK3=ff3_3.
recode R_NOBANK3(sysmis=-2).
compute R_NOBANK4=ff3_5.
recode R_NOBANK4(sysmis=-2).
compute R_NOBANK5=ff3_6.
recode R_NOBANK5(sysmis=-2).

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Bangladesh.
compute YEAR=2017.
compute COUNTRY=Bangladesh.

*Review.
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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17India.
compute YEAR=2017.
compute COUNTRY=India.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Kenya.
compute YEAR=2017.
compute COUNTRY=Kenya.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Nigeria.
compute YEAR=2017.
compute COUNTRY=Nigeria.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Paksitan.
compute YEAR=2017.
compute COUNTRY=Paksitan.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Tanzania.
compute YEAR=2017.
compute COUNTRY=Tanzania.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*17Uganda.
compute YEAR=2017.
compute COUNTRY=Uganda.

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

numeric LCT_BANK1.
numeric LCT_BANK2.
numeric LCT_BANK3.
numeric LCT_BANK4.
numeric LCT_BANK5.
numeric LCT_BANK6.
numeric LCT_BANK7.

*16Bangladesh.
compute YEAR=2016.
compute COUNTRY=Bangladesh.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

*Review.
compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
numeric LCT_BANK3.
compute LCT_BANK4=0.
if ff10_3=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_4=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_5=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16India.
compute YEAR=2016.
compute COUNTRY=Inida.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

*Review.
compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16Indonesia.
compute YEAR=2016.
compute COUNTRY=Indonesia.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16Kenya.
*Section 6.1.
compute YEAR=2016.
compute COUNTRY=Kenya.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.

*16Nigeria.
compute YEAR=2016.
compute COUNTRY=Nigeria.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16Pakistan.
compute YEAR=2016.
compute COUNTRY=Pakistan.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16Tanzania.
compute YEAR=2016.
compute COUNTRY=Tanzania.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*16Uganda.
compute YEAR=2016.
compute COUNTRY=Uganda.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*15Bangladesh.
compute YEAR=2015.
compute COUNTRY=Bangladesh.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

*Review.
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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
numeric LCT_BANK3.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.

*15India.
compute YEAR=2015.
compute COUNTRY=India.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

*Review.
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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.

*15Indonesia.
compute YEAR=2015.
compute COUNTRY=Indonesia.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.


*15Kenya.
compute YEAR=2015.
compute COUNTRY=Kenya.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.


*15Nigeria.
compute YEAR=2015.
compute COUNTRY=Nigeria.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.

*15Pakistan.
compute YEAR=2015.
compute COUNTRY=Pakistan.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.


*15Tanzania.
compute YEAR=2015.
compute COUNTRY=Tanzania.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.

*15Uganda.
compute YEAR=2015.
compute COUNTRY=Uganda.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff10_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff10_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff10_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff10_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff10_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff10_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff10_7=1 LCT_BANK7=1.


*14Bangladesh.
compute YEAR=2014.
compute COUNTRY=Bangladesh.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

*Review.
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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.


*14India.
compute YEAR=2014.
compute COUNTRY=India.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.

*14Indonesia.
compute YEAR=2014.
compute COUNTRY=Indonesia.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
numeric LCT_BANK7.

*14Kenya.
compute YEAR=2014.
compute COUNTRY=Kenya.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.

*14Nigeria.
compute YEAR=2014.
compute COUNTRY=Nigeria.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.

*14Pakistan.
compute YEAR=2014.
compute COUNTRY=Pakistan.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.


*14Tanzania.
compute YEAR=2014.
compute COUNTRY=Tanzania.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.


*14Uganda.
compute YEAR=2014.
compute COUNTRY=Uganda.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ff15_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ff15_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ff15_3=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ff15_4=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ff15_5=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ff15_6=1 LCT_BANK6=1.
compute LCT_BANK7=0.
if ff15_7=1 LCT_BANK7=1.


*13Bangladesh.
compute YEAR=2013.
compute COUNTRY=Bangladesh.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

*Review.
compute LCT_BANK1=0.
if ffi11_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11_5=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11_3=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11_4=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11_6=1 LCT_BANK6=1.
numeric LCT_BANK7.

*13India.
compute YEAR=2013.
compute COUNTRY=India.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11_5=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11_3=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11_4=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*13Kenya.
compute YEAR=2013.
compute COUNTRY=Kenya.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11a=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11b=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11e=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11c=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11d=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11f=1 LCT_BANK6=1.
numeric LCT_BANK7.

*13Nigeria.
compute YEAR=2013.
compute COUNTRY=Nigeria.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11a=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11b=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11e=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11c=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11d=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11f=1 LCT_BANK6=1.
numeric LCT_BANK7.

*13Pakistan.
compute YEAR=2013.
compute COUNTRY=Pakistan.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11a=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11b=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11e=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11c=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11d=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11f=1 LCT_BANK6=1.
numeric LCT_BANK7.


*13Tanzania.
compute YEAR=2013.
compute COUNTRY=Tanzaina.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11_1=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11_2=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11_5=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11_3=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11_4=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11_6=1 LCT_BANK6=1.
numeric LCT_BANK7.


*13Uganda.
compute YEAR=2013.
compute COUNTRY=Uganda.

numeric R_NOBANK1.
numeric R_NOBANK2.
numeric R_NOBANK3.
numeric R_NOBANK4.
numeric R_NOBANK5.

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

compute LCT_BANK1=0.
if ffi11a=1 LCT_BANK1=1.
compute LCT_BANK2=0.
if ffi11b=1 LCT_BANK2=1.
compute LCT_BANK3=0.
if ffi11e=1 LCT_BANK2=1.
compute LCT_BANK4=0.
if ffi11c=1 LCT_BANK4=1.
compute LCT_BANK5=0.
if ffi11d=1 LCT_BANK5=1.
compute LCT_BANK6=0.
if ffi11f=1 LCT_BANK6=1.
numeric LCT_BANK7.

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

value labels LCT_BANK1 1"Yes" 0"No".
value labels LCT_BANK2 1"Yes" 0"No".
value labels LCT_BANK3 1"Yes" 0"No".
value labels LCT_BANK4 1"Yes" 0"No".
value labels LCT_BANK5 1"Yes" 0"No".
value labels LCT_BANK6 1"Yes" 0"No".
value labels LCT_BANK7 1"Yes" 0"No".

