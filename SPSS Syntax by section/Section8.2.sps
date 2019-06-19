* Encoding: UTF-8.

*Section 8.2.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

compute ACCESS_MFI=0.
if (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (FN3_2=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (FN3_3<=4 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1)) ACTIVE_MFI=1.

compute ACCESS_COOPs_coop=0.
if (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (FN4_2=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (FN4_3<=4 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1)) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if FN7_1=1 ACCESS_POST=1.

compute REGISTERED_POST=0.
if (FN7_2=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if FN7_3<=4 ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
*Ask Xiaoyan.
compute ACCESS_GROUP=0.
if  (FN5_1=1 and FN5_4=1) or (FN6_1=1 and FN6_4=1)  ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if  (FN5_1=1 and FN5_4=1) or (FN6_1=1 and FN6_4=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if  (FN5_1=1 and FN5_4=1 and FN5_3<=4) or (FN6_1=1 and FN6_4=1 and FN6_3<=4) ACTIVE_GROUP=1.


**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.
*Need double check. Not NBFI.
compute ACCESS_MFI=0.
if FN5_1=1 ACCESS_MFI=1.
*Need double check. Not NBFI.
compute REGISTERED_MFI=0.
if FN5_2=1 REGISTERED_MFI=1.
*Need double check. Not NBFI.
compute ACTIVE_MFI=0.
if FN5_3<=4 ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if FN6_1=1 and FN6_3=1 ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if FN6_1=1 and FN6_3=1 REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if FN6_1=1 and FN6_3=1 and FN6_4<=4 ACTIVE_COOP=1.

compute ACCESS_POST=0.
if FN2_1=1 ACCESS_POST=1.

compute REGISTERED_POST=0.
if FN2_2=1 REGISTERED_POST=1.

compute ACTIVE_POST=0.
if FN2_3<=4 ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
*Need double check.
compute AWARE_PAYMENT_BANK_PROVIDER=0.
if PB1_1=1 or PB1_2=1 or PB1_3=1 or PB1_4=1 or PB1_5=1 or PB1_6=1 or PB1_7=1 AWARE_PAYMENT_BANK_PROVIDER=1.

compute ACCESS_PAYMENT=0.
if FN3_1=1 ACCESS_PAYMENT=1.

compute REGISTERED_PAYMENT=0.
if FN3_2=1 REGISTERED_PAYMENT=1.

compute ACTIVE_PAYMENT=0.
if FN3_3_1<=4 or FN3_3_2<=4 or FN3_3_3<=4 or FN3_3_4<=4 or FN3_3_5<=4 or FN3_3_6<=4 or FN3_3_7<=4 ACTIVE_PAYMENT=1.

numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.

compute ACCESS_POST=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.


**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.

compute ACCESS_POST=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.

compute ACCESS_BPR=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_BPR=1.

compute REGISTERED_BPR=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_BPR=1.

compute ACTIVE_BPR=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_BPR=1.

compute ACCESS_PAWNSHOP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_PAWNSHOP=1.

compute REGISTERED_PAWNSHOP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_PAWNSHOP=1.

compute ACTIVE_PAWNSHOP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_PAWNSHOP=1.

numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) active_coop=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.

compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.

compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.

compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.

compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.

compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
*Need double check.
compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.
*Need double check.
compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.

compute ACCESS_POST=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.
*Need double check.
compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
*Need double check.
compute ACCESS_BPR=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_BPR=1.

compute REGISTERED_BPR=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_BPR=1.
*Need double check.
compute ACTIVE_BPR=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_BPR=1.
*Need double check.
compute ACCESS_PAWNSHOP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_PAWNSHOP=1.

compute REGISTERED_PAWNSHOP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_PAWNSHOP=1.
*Need double check.
compute ACTIVE_PAWNSHOP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_PAWNSHOP=1.

numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.
*Need double check.
compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.
*Need double check.
compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=1 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.

*Need double check. Not NBFI. Add IFI5 or not?.
compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.
*Need double check. Not NBFI. Add IFI5 or not?.
compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.


**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.
*Need double check.
compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.
*Need double check.
compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.
*Need double check.
compute ACCESS_SACCO=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_SACCO=1.

compute REGISTERED_SACCO=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_SACCO=1.
*Need double check.
compute ACTIVE_SACCO=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_SACCO=1.

numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.
*Need double check.
compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.
*Need double check.
compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.
*Need double check.
compute ACCESS_COOP=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_COOP=1.

compute REGISTERED_COOP=0.
if (IFI3_2=1 and IFI5_2=1) REGISTERED_COOP=1.
*Need double check.
compute ACTIVE_COOP=0.
if (IFI4_2<=4 and IFI5_2=1) ACTIVE_COOP=1.
*Need double check.
compute ACCESS_POST=0.
if (IFI1_4=1 and IFI5_4=1) ACCESS_POST=1.

compute REGISTERED_POST=0.
if (IFI3_4=1 and IFI5_4=1) REGISTERED_POST=1.
*Need double check.
compute ACTIVE_POST=0.
if (IFI4_4<=4 and IFI5_4=1) ACTIVE_POST=1.

numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
*Need double check.
compute ACCESS_GROUP=0.
if (IFI1_3=1 and IFI5_3=1) ACCESS_GROUP=1.

compute REGISTERED_GROUP=0.
if (IFI3_3=1 and IFI5_3=1) REGISTERED_GROUP=1.
*Need double check.
compute ACTIVE_GROUP=0.
if (IFI4_3<=4 and IFI5_3=1) ACTIVE_GROUP=1.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

compute ACCESS_MFI=0.
if (IFI1_1=1 and IFI5_1=1) ACCESS_MFI=1.

compute REGISTERED_MFI=0.
if (IFI3_1=1 and IFI5_1=1) REGISTERED_MFI=1.

compute ACTIVE_MFI=0.
if (IFI4_1<=4 and IFI5_1=1) ACTIVE_MFI=1.

numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.

compute ACCESS_POST=0.
if (IFI1_2=1 and IFI5_2=1) ACCESS_POST=1.

compute registered_post=0.
if (IFI3_2=1 and IFI5_2=1) registered_post=1.

compute registered_post=0.
if (IFI4_2<=4 and IFI5_2=1) registered_post=1.

**************************************************************************************************************************************************.
*14Indonesia.
rename variables ID=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14Pakistan.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2014.

**************************************************************************************************************************************************.
*13Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.


**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.
numeric ACCESS_MFI.
numeric REGISTERED_MFI.
numeric ACTIVE_MFI.
numeric ACCESS_COOP.
numeric REGISTERED_COOP.
numeric ACTIVE_COOP.
numeric ACCESS_POST.
numeric REGISTERED_POST.
numeric ACTIVE_POST.
numeric ACCESS_SACCO.
numeric REGISTERED_SACCO.
numeric ACTIVE_SACCO.
numeric ACCESS_BPR.
numeric REGISTERED_BPR.
numeric ACTIVE_BPR.
numeric ACCESS_PAWNSHOP.
numeric REGISTERED_PAWNSHOP.
numeric ACTIVE_PAWNSHOP.
numeric AWARE_PAYMENT_BANK_PROVIDER.
numeric ACCESS_PAYMENT.
numeric REGISTERED_PAYMENT.
numeric ACTIVE_PAYMENT.
numeric ACCESS_GROUP.
numeric REGISTERED_GROUP.
numeric ACTIVE_GROUP.

*****************************************************************************************************************************.
*Labels.

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



