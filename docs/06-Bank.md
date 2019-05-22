# Banking Services

Bank

## ACCESS_BANK

Have access to banks: Counts individuals who have ever used a bank, or who have a bank account registered in their name or a joint account in their and someone else's name. For example, Kenya 2017 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF4         |  Do you use a bank account that belongs to somebody else if you need to?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or                                investment? It does not matter if you use those services, I just want to know whether they are offered
      
Levels

* 1=Yes
* 0=No

Note: 

* The full-service filter(FF5) was not applied for the following surveys: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), and all 2013 surveys.

## REGISTERED_BANK

Have a bank account: Counts individuals who hold an account with a bank that provides a full suite of financial services. For example, Kenya 2017 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or                                investment? It does not matter if you use those services, I just want to know whether they are offered

Levels

* 1=Yes
* 0=No
       
Note: 

* The full-service filter(FF5) was not applied for the following surveys: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), and all 2013 surveys.
       
## ACTIVE_BANK

Active bank account use in last 90 days: Counts individual who have an account registered in their name with a full-service bank and have used it in the last 90 days before the survey. For example, Kenya 2017 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or                                investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for                      any other financial activity, other than today?
      
Levels

* 1=Yes
* 0=No
       
Note: 

* The full-service filter(FF5) was not applied for the following surveys: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), and all 2013 surveys.
       
## ACTIVE30_BANK

Active bank account use in last 30 days: Counts individuals who have an account registered in their name with a full-service bank and have used it in the last 30 days before the survey. For example, Kenya 2017 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or                                investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for                      any other financial activity, other than today?

Levels

* 1=Yes
* 0=No
       
Note: 

* The full-service filter(FF5) was not applied to the following surveys: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), and all 2013 surveys.
       
## INACTIVE_BANK

Inactive bank account for last 90 days: Counts individuals who have an account registered in their name with a full-service bank but have not used it in the last 90 days before the survey. For example, Kenya 2017 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or                                investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for                      any other financial activity, other than today?

Levels

* 1=Yes
* 0=No
       
Note: 

* The full-service filter(FF5) was not applied to the following surveys: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), and all 2013 surveys.

## DORMANT_BANK

Bank account dormancy: Counts individuals who have an account registered in their name with a full-service bank but never used it. DORMANT_BANK was derived from ACCESS_BANK and REGISTERED_BANK (see above).

Levels

* 1=Yes
* 0=No
       
## BANK_BASIC

Ever use of bank account for basic activities: Counts individuals who have ever used a bank account to cash-in (deposit), cash-out (withdraw), transfer money to another individual, or conduct account maintenance. For example, Bangladesh 2016 uses the following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF14_1      |  Which of the following have you ever done using a bank account? Deposited money
      FF14_2      |  Which of the following have you ever done using a bank account? Withdrew money
      FF14_9      |  Which of the following have you ever done using a bank account? Sent money to family members, friends,                              workmates or other acquaintances for regular support/allowances, to help with emergencies, or for other reasons                      (outside household)
      FF14_10     |  Which of the following have you ever done using a bank account? Received money from family members, friends,                        workmates or other acquaintances for regular support/allowances, to help with emergencies, or for other reasons                      (outside household)
      FF14_11     |  Which of the following have you ever done using a bank account? Account maintenance: Checked your account                            balance, changed PIN, received mini-statement, etc.
      
Levels

* 1=Yes
* 0=No

Note: 

* 2018 surveys didn't include questions on cash-in (deposit), cash-out (withdraw) and conducting account maintenance.
* 2013, 2014, and 2017 surveys didn't include questions on conducting account maintenance.


## BANK_ADV

Ever use of bank account for advanced activities: Counts individuals who have ever used a bank account for saving, borrowing, insurance, investment, bill payment or receiving wages or government benefits. Using Bangladesh 2017 as an example, BANK_ADV was derived from questions FF14, FF22_1 and FB16A_1. 

 Question Index   |                       Activities
  ----------------|-------------------------------------------------------------
      FF14_2      |  Bought airtime top-ups or paid a mobile phone bill
      FF14_3      |  Paid a school fee
      FF14_4      |  Paid a bill for medical expenses, housing, rent or utilities, such as electricity, water, solar, satellite TV                        or cable TV
      FF14_5      |  Paid a government bill, including tax, fine or fee
      FF14_7      |  Received a welfare, pension or other benefit payment from the government
      FF14_8      |  Received wages for your primary or secondary job
      FF14_9      |  Paid a bill for medical expenses, housing, rent or utilities
 FF14_10,FB16A_1  |  Took a loan or made payments on a loan
 FF14_11,FB22_1   |  Saved money for any reason
      FF14_12     |  Made an investment, including bought stock or shares
      FF14_13     |  Paid for goods or services at a grocery store, clothing shop or any other store/shop
      
Levels

* 1=Yes
* 0=No

## REG_BANK_BASIC

Basic use of registered bank account: Counts individuals who have an account registered in their name with a full-service bank and use it for cash-in (deposit) or cash-out (withdrawal), or to transfer money to another individual, or conduct account maintenance. REG_BANK_BASIC was derived from REGISTERED_BANK and BANK_BASIC.
      
Levels

* 1=Yes
* 0=No
       
## REG_BANK_ADV

Advance use of registered bank account: Counts individuals who have an account registered in their name with a full-service bank and use it for saving, borrowing, insurance, investment, bill payment or receiving wages or government benefits. REG_BANK_ADV was derived from REGISTERED_BANK and BANK_ADV.

Levels

* 1=Yes
* 0=No

## ACTIVE_BANK_BASIC

Basic use of registered bank account in last 90 days: Counts individuals who have an account registered in their name with a full-service bank and have used it in the last 90 days for cash-in (deposit) or cash-out (withdrawal), or to transfer money to another individual, or conduct account maintenance. ACTIVE_BANK_BASIC was derived from ACTIVE_BANK and BANK_BASIC.

Levels

* 1=Yes
* 0=No

## ACTIVE_BANK_ADV

Advance use of registered bank account in the last 90 days: Counts individuals who have an account registered in their name with a full-service bank and have used it in the last 90 days for saving, borrowing, insurance, investment, bill payment or receiving wages or government benefits. ACTIVE_BANK_ADV was derived from ACTIVE_BANK and BANK_ADV.

Levels

* 1=Yes
* 0=No
       
## ACTIVE30_BANK_ADV

Advance use of registered bank account in the last 30 days:Counts individuals who have an account registered in their name with a full-service bank and have used it in the last 30 days for saving, borrowing, insurance, investment, bill payment or receiving wages or government benefits. ACTIVE30_BANK_ADV was derived from ACTIVE30_BANK and BANK_ADV.

Levels

* 1=Yes
* 0=No

## BANK_STAGE

Customer journey segmentation of bank: A series of progressive stages through which individuals become more active users of more sophisticated financial services. 

  Bank stages                  |                       Descriptions
  -----------------------------|------------------------------------------------------
  Bank nonuser                 |  Don't have a bank account registered in their name or a joint account in their and someone                                         else's name or never used a bank.
  Unregistered bank user       |  Don't have a bank account registered in their name or a joint account in their and someone                                         else's name but use a bank via another person's account.
  Registered inactive bank user|  Have a bank account registered in their name or a joint account in their and someone else's name                                     but have not used it in the last 90 days.
  Basic only active bank user  |  Have a bank account registered in their name or a joint account in their and someone else's name                                     and only used it in the last 90 days for basic activities: cash-in (deposit) or cash-out                                             (withdraw), money transfer to another individual, or conducting account maintenance.
  Advanced active bank user   |   Have a bank account registered in their name or a joint account in their and someone else's name                                     and used it in the last 90 days for advanced activities (saving, borrowing, insurance, investment,                                   paying bills or receiving wages or government benefits).

Levels 

* 0=Bank nonuser
* 1=Unregistered bank user
* 2=Registered inactive bank user
* 3=Basic only active bank user
* 4=Advanced active bank user

## BANK_TRANSFER
Ever used a bank for transfers: Counts individuals who ever sent money to, or received money from someone using a bank. For example, Bangladesh 2017 uses FF14_6.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_6      |  Which of the following activities have you ever done using a bank account? Sent money to, or received money                          from, family members, friends, workmates or other acquaintances.

Levels

* 1=Yes
* 0=No

## BANK_MERCHANT
Ever used a bank to buy goods and services: Counts individuals who ever paid for goods or services at a store, shop, restaurant or other place of business using a bank. For example, Bangladesh 2017 uses FF14_13.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_13     |  Which of the following activities have you ever done using a bank account? Paid for goods or services at a                          grocery store, clothing shop or any other store/shop.

Levels

* 1=Yes
* 0=No

## BANK_BILL
Ever used a bank for bill payment: Counts individuals who ever paid for a bill using a bank. For example, Bangladesh 2017 uses the following questions.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_3      |  Which of the following activities have you ever done using a bank account? Paid a school fee
      FF14_4      |  Which of the following activities have you ever done using a bank account? Paid a bill for medical expenses,                        housing, rent or utilities, such as electricity, water, solar, satellite TV or cable TV
      FF14_5      |  Which of the following activities have you ever done using a bank account? Paid a government bill, including                        tax, fine or fee.
      
Levels

* 1=Yes
* 0=No

## BANK_GOV
Ever used a bank to receive money from the government: Counts individuals who ever received money from the government using a bank. For example, Bangladesh 2017 uses FF14_7.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_7      |  Which of the following activities have you ever done using a bank account? Received a welfare, pension or other                      benefit payment from the government 
      
Levels

* 1=Yes
* 0=No

## BANK_WAGE
Ever used a bank for wages:  Counts individuals who ever received payment from an employer using a bank. For example, Bangladesh 2017 uses FF14_8.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_8      |  Which of the following activities have you ever done using a bank account? Received wages for your primary or                        secondary job.
      
Levels

* 1=Yes
* 0=No

## BANK_INSURANCE
Ever used a bank for insurance: Counts individuals who ever paid for insurance or received payment from insurance using a bank. For example, Bangladesh 2017 uses FF14_9.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_9      |  Which of the following activities have you ever done using a bank account? Made insurance payments or received                      claims on insurance.
      
Levels

* 1=Yes
* 0=No

## BANK_SAVE
Ever used a bank for savings: Counts individuals who ever saved using a bank. For example, Bangladesh 2017 uses FF14_11 and FB22_1.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_11     |  Which of the following activities have you ever done using a bank account? Saved money for any reason
      FB22_1      |  Do you save with any of the following? Bank
      
Levels

* 1=Yes
* 0=No
       
## BANK_INVEST
Ever used a bank for investment: Counts individuals who ever made an investment using a bank. For example, Bangladesh 2017 uses FF14_12.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_12     |  Which of the following activities have you ever done using a bank account? Made an investment, including bought stock or shares
      
Levels

* 1=Yes
* 0=No

## BANK_LOAN
Ever used a bank for loans: Counts individuals who ever borrowed money using a bank. For example, Bangladesh 2017 uses FF14_10 and FB16A_1.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_10     |  Which of the following activities have you ever done using a bank account? Took a loan or made payments on a                        loan
      FB16A_1     |  Do you currently have a loan with this organization? Bank, personal or business loans.
      
Levels

* 1=Yes
* 0=No

## BANK_AIRTIME
Ever used a bank for airtime top-up:  Counts individuals who ever bought airtime top-ups or paid a mobile phone bill using a bank. For example, Bangladesh 2017 uses from FF14_2.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_2      |  Which of the following activities have you ever done using a bank account? Bought airtime top-ups or paid a                         mobile phone bill.
      
Levels

* 1=Yes
* 0=No

Note:

* BANK_AIRTIME questions are not available for 2018 surveys.

## ACTIVE_BANK_TRANSFER
Active use of bank for transfers: Counts individuals who sent money to, or received money from someone using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_6.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF14_6      |  Please tell me when was the last time you used a bank account for this activity, other than today? Sent money                        to, or received money from, family members, friends, workmates or other acquaintances

Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_TRANSFER is not available for 2013, 2014 and 2015 surveys. 
       

## ACTIVE_BANK_MERCHANT
Active use of bank for purchases: Counts individuals who paid for goods or services at a store, shop, restaurant or other place of business using a bank in the last 90 days. For example, Bangladesh 2017 uses from FF16_13.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_13     |  Please tell me when was the last time you used a bank account for this activity, other than today? Paid for                          goods or services at a grocery store, clothing shop or any other store/shop store/shop

Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_MERCHANT is not available for 2013 and 2014 surveys.
              

## ACTIVE_BANK_BILL
Active use of bank for bill payment: Counts individuals who paid bills using a bank in the last 90 days. For example, Bangladesh 2017 uses the following questions.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_3      |  Please tell me when was the last time you used a bank account for this activity, other than today? Paid a                            school fee.
      FF16_4      |  Please tell me when was the last time you used a bank account for this activity, other than today? Paid a bill                      for medical expenses, housing, rent or utilities, such as electricity, water, solar, satellite TV or cable TV
      FF16_5      |  Please tell me when was the last time you used a bank account for this activity, other than today? Paid a                            government bill, including tax, fine or fee.
      
Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_BILL questions are not available for 2013 and 2014 surveys.       

## ACTIVE_BANK_GOV
Active use of bank for receiving money: Counts individuals who received money from the government using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_7.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_7      |  Please tell me when was the last time you used a bank account for this activity, other than today? Received a                        welfare, pension or other benefit payment from the government.  
      
Levels

* 1=Yes
* 0=No

Note:

* ACTIVE_BANK_GOV questions are not available for 2013 and 2014 surveys.  

## ACTIVE_BANK_WAGE
Active use of bank for wages: Counts individuals who received payment from an employer using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_8.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_8      |  Please tell me when was the last time you used a bank account for this activity, other than today? Received                          wages for your primary or secondary job.
      
Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_WAGE questions are not available for 2013 and 2014 surveys.        

## ACTIVE_BANK_INSURANCE
Active use of bank fro insurance: Counts individuals who paid for insurance or received payment from insurance using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_9.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_9      |  Please tell me when was the last time you used a bank account for this activity, other than today? Made                              insurance payments or received claims on insurance.
      
Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_INSURANCE questions are not available for 2013 and 2014 surveys.  

## ACTIVE_BANK_SAVE
Active of bank for saving: Counts individuals who saved using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_11.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_11     |  Please tell me when was the last time you used a bank account for this activity, other than today? Saved money                      for any reason.
      
Levels

* 1=Yes
* 0=No
       
Note:

* ACTIVE_BANK_SAVE questions are not available for 2013 and 2014 surveys.         

## ACTIVE_BANK_INVEST
Active use of bank for investment: Counts individuals who made an investment using a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_12.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_12     |  Please tell me when was the last time you used a bank account for this activity, other than today? Made an                          investment, including bought stock or shares.
      
Levels

* 1=Yes
* 0=No

Note:

* ACTIVE_BANK_INVEST questions are not available for 2013 and 2014 surveys.           

## ACTIVE_BANK_LOAN
Active use of bank for loans: Counts individuals who borrowed money from a bank in the last 90 days. For example, Bangladesh 2017 uses FF16_10.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_10     |  Please tell me when was the last time you used a bank account for this activity, other than today? Took a loan                      or made payments on a loan.
      
Levels

* 1=Yes
* 0=No

Note:

* ACTIVE_BANK_LOAN questions are not available for 2013 and 2014 surveys.         

## ACTIVE_BANK_AIRTIME
Active use of bank for airtime top-ups: Counts individuals who bought airtime top-ups or paid a mobile phone bill in the last 90 days using a bank. For example, Bangladesh 2017 uses FF16_2.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF16_2      |  Please tell me when was the last time you used a bank account for this activity, other than today? Bought                            airtime top-ups or paid a mobile phone bill. 
      
Levels

* 1=Yes
* 0=No

Note:

* ACTIVE_BANK_AIRTIME questions are not available for 2013 and 2014 surveys.

## R_NOBANK1
Reasons for NO bank account (You don't have the required documents): Counts individuals who do not have a bank account since lack of required documents. For example, Bangladesh 2018 uses FF3_1.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF3_1       |  Is this a reason why you do not have a bank account? You don't have the required documents
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK1 questions are only available for 2017 and 2018 surveys.
* For 2017 survey, FF3 set questions are a little different from 2018 survey. 2017 survey asks in this way, "FF3.1.How much you agree or disagree the reason why people do not register bank accounts in their name applies to your situation? Lack of official identification or other required documents". And levels are 1=Strongly disagree 2=Somewhat disagree 3=Neither diagree, nor agree 4=Somewhat agree 5=Strongly agree 99=DK. We reode level 4 and 5 into "Yes" and recode other levels as well as system missing into "No".


## R_NOBANK2
Reasons for NO bank account (Fees and expenses for using banks are too high): Counts individuals who do not have a bank account since fees and expenses for using banks are too high. For example, Bangladesh 2018 uses FF3_2.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF3_2       |  Is this a reason why you do not have a bank account? Fees and expenses for using banks are too high
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK2 questions are only available for 2017 and 2018 surveys.
* For 2017 survey, FF3 set questions are a little different from 2018 survey. 2017 survey asks in this way, "FF3.2.How much you agree or disagree the reason why people do not register bank accounts in their name applies to your situation? Fees and expenses for owning an account are too high". And levels are 1=Strongly disagree 2=Somewhat disagree 3=Neither diagree, nor agree 4=Somewhat agree 5=Strongly agree 99=DK. We reode level 4 and 5 into "Yes" and recode other levels as well as system missing into "No".

## R_NOBANK3
Reasons for NO bank account (You don't need a bank account): Counts individuals who do not have a bank account since do not need one. For example, Bangladesh 2018 uses FF3_3.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF3_3       |  Is this a reason why you do not have a bank account? You don't need a bank account
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK3 questions are only available for 2017 and 2018 surveys.
* For 2017 survey, FF3 set questions are a little different from 2018 survey. 2017 survey asks in this way, "FF3.4.How much you agree or disagree the reason why people do not register bank accounts in their name applies to your situation? Do not need one or have never thought of using one". And levels are 1=Strongly disagree 2=Somewhat disagree 3=Neither diagree, nor agree 4=Somewhat agree 5=Strongly agree 99=DK. We reode level 4 and 5 into "Yes" and recode other levels as well as system missing into "No".

## R_NOBANK4
Reasons for NO bank account (The closest bank is too far away): Counts individuals who do not have a bank account since the closest bank is too far away. For example, Bangladesh 2018 uses FF3_5.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF3_5       |  Is this a reason why you do not have a bank account? The closest bank is too far away
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK4 questions are only available for 2017 and 2018 surveys.
* For 2017 survey, FF3 set questions are a little different from 2018 survey. 2017 survey asks in this way, "FF3.5.How much you agree or disagree the reason why people do not register bank accounts in their name applies to your situation? No banks nearby". And levels are 1=Strongly disagree 2=Somewhat disagree 3=Neither diagree, nor agree 4=Somewhat agree 5=Strongly agree 99=DK. We reode level 4 and 5 into "Yes" and recode other levels as well as system missing into "No".

## R_NOBANK5
Reasons for NO bank account (You don't have enough money to use the account): Counts individuals who do not have a bank account since do not have enough money. For example, Bangladesh 2018 uses FF3_6.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF3_6       |  Is this a reason why you do not have a bank account? You don't have enough money to use the account
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK5 questions are only available for 2017 and 2018 surveys.
* For 2017 survey, FF3 set questions are a little different from 2018 survey. 2017 survey asks in this way, "FF3.3.How much you agree or disagree the reason why people do not register bank accounts in their name applies to your situation? Lack of money to use the account". And levels are 1=Strongly disagree 2=Somewhat disagree 3=Neither diagree, nor agree 4=Somewhat agree 5=Strongly agree 99=DK. We reode level 4 and 5 into "Yes" and recode other levels as well as system missing into "No".

## R_NOBANK_BUSI1
Reasons for NOT use bank for business payments/purchases (Have to pay extra taxes): Counts individuals who do not use bank for business payments/purchases since need to pay extra taxes. For example, Bangladesh 2015 uses FF18_2.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_2      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?I will have to pay extra taxes
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI1 questions are only available for 2013, 2014 and 2015 surveys.

## R_NOBANK_BUSI2
Reasons for NOT use bank for business payments/purchases (Have to pay bribes to government officials to avoid taxation/licensing/paper work): Counts individuals who do not use bank for business payments/purchases since need to pay bribes to government officials to avoid taxation/licensing/paper work. For example, Bangladesh 2015 uses FF18_3.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_3      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?I will have to pay bribes to government officials to avoid taxation/licensing/paper work
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI2 questions are only available for 2013, 2014 and 2015 surveys.

## R_NOBANK_BUSI3
Reasons for NOT use bank for business payments/purchases (Business is not registered, it is not formal): Counts individuals who do not use bank for business payments/purchases since business is not registered. For example, Bangladesh 2015 uses FF18_4.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_4      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?My business is not registered, it is not formal
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI3 questions are only available for 2013, 2014 and 2015 surveys.

## R_NOBANK_BUSI4
Reasons for NOT use bank for business payments/purchases (Have to raise prices to pay account fees and people won't buy): Counts individuals who do not use bank for business payments/purchases since need to raise prices to pay account fees. For example, Bangladesh 2015 uses FF18_5.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_5      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?To pay account fees I will have to raise prices and people won't buy from me
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI4 questions are only available for 2013, 2014 and 2015 surveys.

## R_NOBANK_BUSI5
Reasons for NOT use bank for business payments/purchases (Business is too small to need a bank account): Counts individuals who do not use bank for business payments/purchases since business is too small to need a bank account. For example, Bangladesh 2015 uses FF18_6.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_6      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?My business is too small to need a bank account
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI4 questions are only available for 2013, 2014 and 2015 surveys.

## R_NOBANK_BUSI6
Reasons for NOT use bank for business payments/purchases (Use other methods of payment): Counts individuals who do not use bank for business payments/purchases since they use other methods of payment. For example, Bangladesh 2015 uses FF18_7.

Question Index    |                       Questions 
  ----------------|-------------------------------------------------------------
      FF18_7      |  You said you do not use this bank account for any business payments/purchases. Please tell me why?I use other methods of payment
      
Levels

* 1=Yes
* 0=No

Note:

* R_NOBANK_BUSI6 questions are only available for 2013, 2014 and 2015 surveys.

## EXP_BANK1

## EXP_BANK2

## EXP_BANK3

## EXP_BANK4

## EXP_BANK5

## EXP_BANK6

## EXP_BANK7

## EXP_BANK8

## EXP_BANK9

## LCT_BANK1

## LCT_BANK2

## LCT_BANK3

## LCT_BANK4

## LCT_BANK5

## LCT_BANK6



 
       
