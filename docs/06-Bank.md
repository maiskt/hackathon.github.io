# Banking Services

Bank

## ACCESS_BANK

* Description: Counts individuals who have ever used a bank, or who have a bank account registered in their name or a joint account in their and someone else's name. For example, Kenya 2017 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF4         |  Do you use a bank account that belongs to somebody else if you need to?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or investment? It does not matter if you use those services, I just want to know whether they are offered
      
* Levels 
       + Yes
       + No

* Note: 
       + About full-service filter(FF5), followings are derived without full-service filter: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), 2013 surveys.

## REGISTERED_BANK

* Description: Individuals who hold an account with a bank that provides a full suite of financial services. For example, Kenya 2017 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or investment? It does not matter if you use those services, I just want to know whether they are offered

* Levels 
       + Yes
       + No
       
* Note: 
       + About full-service filter(FF5), followings are derived without full-service filter: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), 2013 surveys.
       
## ACTIVE_BANK

* Description: An individual who has an account registered in their name with a full-service bank and has used it in the last 90 days. For example, Kenya 2017 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for any other financial activity, other than today?
      
* Levels 
       + Yes
       + No
       
* Note: 
       + About full-service filter(FF5), followings are derived without full-service filter: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), 2013 surveys.
       
## ACTIVE30_BANK

* Description: An individual who has an account registered in their name with a full-service bank and has used it in the last 30 days. For example, Kenya 2017 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for any other financial activity, other than today?

* Levels 
       + Yes
       + No
       
* Note: 
       + About full-service filter(FF5), followings are derived without full-service filter: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), 2013 surveys.
       
## INACTIVE_BANK

* Description: An individual who has an account registered in their name with a full-service bank and has not used it in the last 90 days. For example, Kenya 2017 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF1         |  Do you personally have a bank account that is registered in your name?
      FF1A        |  Do you have a bank account that is registered jointly in your name and someone else's name?
      FF5         |  Does your bank offer at least one of the following services: savings, money transfers, insurance, or investment? It does not matter if you use those services, I just want to know whether they are offered
      FF9         |  When was the last time you made a deposit or withdrawal using a bank account, or maintained a bank account for any other financial activity, other than today?

* Levels 
       + Yes
       + No
       
* Note: 
       + About full-service filter(FF5), followings are derived without full-service filter: Bangladesh(2016-2018), India(2016-2018), Nigeria(2017), Pakistan(2017), 2013 surveys.

## DORMANT_BANK

* Description: An individual who has an account registered in their name with a full-service bank but never it. DORMANT_BANK was derived from ACCESS_BANK and REGISTERED_BANK.

* Levels 
       + Yes
       + No
       
## BANK_BASIC

* Description: An individual who has used bank account for cash-in (deposit) or cash-out (withdraw), transfer money to another individual, or conduct account maintenance. For example, Bangladesh 2016 uses following questions.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FF14_1      |  Which of the following have you ever done using a bank account? Deposited money
      FF14_2      |  Which of the following have you ever done using a bank account? Withdrew money
      FF14_9      |  Which of the following have you ever done using a bank account? Sent money to family members, friends, workmates or other acquaintances for regular support/allowances, to help with emergencies, or for other reasons (outside household)
      FF14_10     |  Which of the following have you ever done using a bank account? Received money from family members, friends, workmates or other acquaintances for regular support/allowances, to help with emergencies, or for other reasons (outside household)
      FF14_11     |  Which of the following have you ever done using a bank account? Account maintenance: Checked your account balance, changed PIN, received mini-statement, etc.
      
* Levels 
       + Yes
       + No

* Note: 
       + For 2018 survey, questions about cash-in (deposit) or cash-out (withdraw) and conduct account maintenance are not available.
       + For 2013, 2014, 2017 survey, questions about conduct account maintenance are not available.


## BANK_ADV

* Description: An individual who has used bank account for csaving, borrowing, insurance, investment, paying bills or receiving wages or government benefits. Take Bangladesh 2017 as an example, BANK_ADV was derived from FF14 set questions, FF22_1 and FB16A_1. 

 Question Index   |                       Activities
  ----------------|-------------------------------------------------------------
      FF14_2      |  Bought airtime top-ups or paid a mobile phone bill
      FF14_3      |  Paid a school fee
      FF14_4      |  Paid a bill for medical expenses, housing, rent or utilities, such as electricity, water, solar, satellite TV or cable TV
      FF14_5      |  Paid a government bill, including tax, fine or fee
      FF14_7      |  Received a welfare, pension or other benefit payment from the government
      FF14_8      |  Received wages for your primary or secondary job
      FF14_9      |  Paid a bill for medical expenses, housing, rent or utilities,
 FF14_10,FB16A_1  |  Took a loan or made payments on a loan
 FF14_11,FB22_1   |  Saved money for any reason
      FF14_12     |  Made an investment, including bought stock or shares
      FF14_13     |  Paid for goods or services at a grocery store, clothing shop or any other store/shop
      
* Levels 
       + Yes
       + No

## REG_BANK_BASIC

* Description: An individual who has an account registered in their name with a full-service bank and used it for cash-in (deposit) or cash-out (withdraw), transfer money to another individual, or conduct account maintenance. REG_BANK_BASIC was derived from REGISTERED_BANK and BANK_BASIC.
      
* Levels 
       + Yes
       + No
       
## REG_BANK_ADV

* Description: An individual who has an account registered in their name with a full-service bank and used it for csaving, borrowing, insurance, investment, paying bills or receiving wages or government benefits. REG_BANK_ADV was derived from REGISTERED_BANK and BANK_ADV.

* Levels 
       + Yes
       + No

## ACTIVE_BANK_BASIC

* Description: An individual who has an account registered in their name with a full-service bank and used it for cash-in (deposit) or cash-out (withdraw), transfer money to another individual, or conduct account maintenance in the last 90 days. ACTIVE_BANK_BASIC was derived from ACTIVE_BANK and BANK_BASIC.

* Levels 
       + Yes
       + No

## ACTIVE_BANK_ADV

* Description: An individual who has an account registered in their name with a full-service bank and used it for csaving, borrowing, insurance, investment, paying bills or receiving wages or government benefits in the last 90 days. ACTIVE_BANK_ADV was derived from ACTIVE_BANK and BANK_ADV.

* Levels 
       + Yes
       + No
       
## ACTIVE30_BANK_ADV

* Description: An individual who has an account registered in their name with a full-service bank and used it for csaving, borrowing, insurance, investment, paying bills or receiving wages or government benefits in the last 30 days. ACTIVE30_BANK_ADV was derived from ACTIVE30_BANK and BANK_ADV.

* Levels 
       + Yes
       + No

## BANK_STAGE

* Description: A series of progressive stages through which individuals become more active users of more sophisticated financial services. 

  Bank stages                  |                       Descriptions
  -----------------------------|------------------------------------------------------
  Bank nonuser                 |  did not have a bank account registered in their name or a joint account in their and someone else's name or never use a bank
  Unregistered bank user       |  did not have a bank account registered in their name or a joint account in their and someone else's name but ever used it
  Registered inactive bank user|  had a bank account registered in their name or a joint account in their and someone else's name but did not use it in the last 90 days
  Basic only active bank user  |  had a bank account registered in their name or a joint account in their and someone else's name and only used it in the last 90 days for basic activities(cash-in (deposit) or cash-out (withdraw), transfer money to another individual, or conduct account maintenance)
  Adavanced active bank user   |  had a bank account registered in their name or a joint account in their and someone else's name and used it in the last 90 days for advanced activities(csaving, borrowing, insurance, investment, paying bills or receiving wages or government benefits)

* Levels 
       + Bank nonuser
       + Unregistered bank user
       + Registered inactive bank user
       + Basic only active bank user
       + Adavanced active bank user

## BANK_TRANSFER
* Description: 

* Levels 
       + Yes
       + No
       
* Note: 
       + 
       

## BANK_MERCHANT
## BANK_BILL
## BANK_GOV
## BANK_WAGE
## BANK_INSURANCE
## BANK_SAVE
## BANK_INVEST
## BANK_LOAN
## BANK_AIRTIME
## ACTIVE_BANK_TRANSFER
## ACTIVE_BANK_MERCHANT
## ACTIVE_BANK_BILL
## ACTIVE_BANK_GOV
## ACTIVE_BANK_WAGE
## ACTIVE_BANK_INSURANCE
## ACTIVE_BANK_SAVE
## ACTIVE_BANK_INVEST
## ACTIVE_BANK_LOAN
## ACTIVE_BANK_AIRTIME



 
       