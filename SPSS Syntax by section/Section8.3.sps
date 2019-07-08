* Encoding: UTF-8.

*Section *.
**************************************************************************************************************************************************.
*18Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2018.

compute active_G2P_NBFI=0.
if AD6_14<=4 or AD6_15<=4 or AD6_18<=4 or (FN5_1=1 and FN5_4=1 and AD6_16<=4) or (FN6_1=1 and FN6_4=1 and AD6_17<=4) active_G2P_NBFI=1.
 
compute active_wage_NBFI=0.
if AD7_14<=4 or AD7_15<=4 or AD7_18<=4 or (FN5_1=1 and FN5_4=1 and AD7_16<=4) or (FN6_1=1 and FN6_4=1 and AD7_17<=4) active_wage_NBFI=1.
 
compute active_insurance_NBFI=0.
if AD8_15<=4 or AD8_16<=4 or AD8_19<=4 or (FN5_1=1 and FN5_4=1 and AD8_17<=4) or (FN6_1=1 and FN6_4=1 and AD8_18<=4) active_insurance_NBFI=1.
 
compute active_loan_NBFI=0.
if AD11_21<=4 or AD11_22<=4 or AD11_27<=4 or (FN5_1=1 and FN5_4=1 and AD11_25<=4) or (FN6_1=1 and FN6_4=1 and AD11_26<=4) active_loan_NBFI=1.
 
compute active_save_NBFI=0.
if AD9_19<=4 or AD9_20<=4 or AD9_23<=4 or (FN5_1=1 and FN5_4=1 and AD9_21<=4) or (FN6_1=1 and FN6_4=1 and AD9_22<=4) active_save_NBFI=1.
 
compute active_invest_NBFI=0.
if AD10_31<=4 or AD10_32<=4 or AD10_35<=4 or (FN5_1=1 and FN5_4=1 and AD10_33<=4) or (FN6_1=1 and FN6_4=1 and AD10_34<=4) active_invest_NBFI=1.
 
compute active_pay_NBFI=0.
if AD2_15<=4 or AD2_16<=4 or AD2_19<=4 or (FN5_1=1 and FN5_4=1 and AD2_17<=4) or (FN6_1=1 and FN6_4=1 and AD2_18<=4) active_pay_NBFI=1.
 

**************************************************************************************************************************************************.
*18India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2018.

**************************************************************************************************************************************************.
*17Bangladesh.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17Nigeria.
rename variables SbjNum=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17Paksitan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2017.

**************************************************************************************************************************************************.
*17Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2017.

**************************************************************************************************************************************************.
*16Bangladesh.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Nigeria.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2016.

**************************************************************************************************************************************************.
*16Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2016.

**************************************************************************************************************************************************.
*15Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Indonesia.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Indonesia".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Kenya.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Nigeria.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Pakistan.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Tanzania.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2015.

**************************************************************************************************************************************************.
*15Uganda.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2015.

**************************************************************************************************************************************************.
*14Bangladesh.
rename variables QN=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Bangladesh".
compute YEAR=2014.

**************************************************************************************************************************************************.
*14India.
rename variables Serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2014.

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

**************************************************************************************************************************************************.
*13India.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="India".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Kenya.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Kenya".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Nigeria.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Nigeria".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Pakistan.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Pakistan".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Tanzania.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Tanzania".
compute YEAR=2013.

**************************************************************************************************************************************************.
*13Uganda.
rename variables serial=SBJNUM weight=WEIGHT.
string COUNTRY (A10).
compute COUNTRY="Uganda".
compute YEAR=2013.

*****************************************************************************************************************************.
*Labels.

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
ACTIVE_NBFI_AIRTIME	"Used NBFI to buy airtime top-ups or pay a mobile phone bill in past 90 days"
R_STOPMFI1	"Reason to stop using MFI or close MFI account: The products or services offered no longer met your needs"
R_STOPMFI2	"Reason to stop using MFI or close MFI account: Improvement in your circumstances took away the need you had for the products or services offered"
R_STOPMFI3	"Reason to stop using MFI or close MFI account: A change in your status made you ineligible for products or services"
R_STOPMFI4	"Reason to stop using MFI or close MFI account: It became more difficult to travel to the point of service"
R_STOPMFI5	"Reason to stop using MFI or close MFI account: You switched to a different microfinance institution (MFI)"
R_STOPMFI6	"Reason to stop using MFI or close MFI account: You switched to mobile money instead of using a microfinance instititution"
R_STOPMFI7	"Reason to stop using MFI or close MFI account: You switched to a bank instead of using a microfinace institution".



