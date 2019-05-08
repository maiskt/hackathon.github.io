# DG - Section 3

Demographic

## AGE

* Description: Respondent age, derived from born year and survey year
* Note: 
       + These countries have missing values: Nigeria 2015, Tanzania 2015, Indonesia 2015, Uganda 2014-2013.
       + Coded missing value into DK=-2.

## AGE_GROUP

* Description: Age groups, grouping respondent age every 10 years
* Levels 
       + 15-24
       + 25-34
       + 35-44
       + 45-54
       + 50 and over
       + DK
       
* Note: 
       + These countries have missing values: Nigeria 2015, Tanzania 2015, Indonesia 2015, Uganda 2014-2013.
       + Coded missing value into DK=-2.
       
## EDU

* Description: Grouping highest education level for respondent into 5 categories, derived from DG4. 

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      DG4         |  What is your highest level of education?
* Levels 
       + No formal education
       + Primary education
       + Secondary education
       + Higher education
       + Other

## LITERACY

* Description: Literacy, derived from literal evaluation from surveyors and repondents themselves. Take Kenya 2017 as an example, LN1A and LN1B show evaluation from surveyors. LN2_1 and LN2_2 show evaluation from respondents themselves.

  Question Index  |                       Question
  ----------------|-------------------------------------------------------------
      LN1A        |  Can you read this text for me, please? (Reading)
      LN1B        |  Can you read this text for me, please? (Understanding)
      LN2_1       |  On a scale from 1 (cannot do at all) to 5 (excellent), please evaluate how you perform in the following areas: Reading in [questionnaire language]
      LN2_2       |  On a scale from 1 (cannot do at all) to 5 (excellent), please evaluate how you perform in the following areas: Writing in [questionnaire language]
* Levels 
       + Basic literacy
       + Lack of basic literacy
       
       
## NUMERACY

* Description: Numeracy, derived from 4 basic calculation questions. Take Bangladesh 2018 as an example. If respondents can answer one of these 4 questions, respondents will be defined as "having basic numeracy". 

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FL12        |  Imagine you have 2,000 Taka.Somebody gave you 200 Taka.How much total money will you have?
      FL13        |  Imagine you have 1,000 Taka and you have to divide it among 5 people.How much money will each person receive if you divide it equally?
      FL16        |  Suppose you need to borrow 100 Taka. Which is the lower amount to pay back: 105 Taka or 100 Taka plus 3 percent?
      FL18        |  Suppose you had 100 Taka. in a savings account and the bank adds 10 percent per year to the account. How much money would you have in the account after five years if you did not remove any money from the account?
* Levels 
       + Basic numeracy
       + Lack of basic numeracy    
       
## FINANCIAL_LITERACY

* Description: Financial literacy, derived from 5 basic calculation questions. Take Bangladesh 2018 as an example. Basing on the answer of these 5 questions, respondent will have a score respectively. Respondents who have 3 or more than 3 scores will be dedined as "having financial literacy". 

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FL14        |  Is it safer to put your money into one business or investment, or to put your money into multiple businesses or investments?
      FL15        |  Suppose over the next 10 years the prices of the things you buy double.If your income also doubles, will you be able to buy less than you can buy today, the same as you can buy today, or more than you can buy today?
      FL16        |  Suppose you need to borrow 100 Taka. Which is the lower amount to pay back: 105 Taka or 100 Taka plus 3 percent?
      FL17        |  Suppose you put money in the bank for two years and the bank agrees to add 15 percent per year to your account. Will the bank add more money to your account the second year than it did the first year, or will it add the same amount of money both year
      FL18        |  Suppose you had 100 Taka. in a savings account and the bank adds 10 percent per year to the account. How much money would you have in the account after five years if you did not remove any money from the account?
* Levels 
       + Yes
       + No
* Note:
       + Financial literacy questions only are only collected from 2016 to 2018.

## DIGITAL_LITERACY_INDEX

* Description: Digital literacy index, derived from questions about phone usage and activities. Take Banglsdesh 2018 as a example. If respondent never use a mobile phone(MT2, MT7), respondents will be defined as "no digital literacy". If respondent only use mobile phone for calling(MT17_1, MT17_2), respondents will be defined as "low digital literacy". If respondent also use mobile phone for texting(MT17_3), respondents will be defined as "moderate digital literacy". If respondent also use mobile phone for advance activities(MT17_4-MT17_9), respondents will be defined as "high digital literacy".

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      MT2         |  Do you personally own a mobile phone?
      MT7         |  Do you use a mobile phone that belongs to someone else or is shared?
      MT17_1      |  When was the last time you used a mobile phone to do the following? Call someone
      MT17_2      |  When was the last time you used a mobile phone to do the following? Receive a call from someone
      MT17_3      |  When was the last time you used a mobile phone to do the following? Send or receive a text message
      MT17_4      |  When was the last time you used a mobile phone to do the following? Search the internet
      MT17_5      |  When was the last time you used a mobile phone to do the following? Download music, video or games
      MT17_6      |  When was the last time you used a mobile phone to do the following? Make a financial transaction such as send or receive money, or make a payment, or a bank transaction
      MT17_7      |  When was the last time you used a mobile phone to do the following? Use Facebook, WhatsApp, Twitter, Instagram or another social networking application
      MT17_9      |  When was the last time you used a mobile phone to do the following? Download an application
* Levels 
       + Not applicable
       + Low
       + Moderate
       + High
* Note:
       + Digital literacy questions only are only captured in several countries for 2013 including Kenya, Uganda, Tanzania and India.
       
## GENDER

* Description: Gender for respondent
* Levels 
       + Male
       + Female

## MARRIAGE

* Description: Marriage status for respondent
* Levels 
       + Single/never married
       + Married
       + Divorced/Separated
       + Widowed
       + Living together/Cohabiting 
       + Other
       + DK
* Note:
       + Pakistan(2017,2016,2015), Bangladesh(2017,2016,2015,2014,2013) do not have category "Living together/Cohabiting".
       + There is no data in category "Living together/Cohabiting" for Pakistan(2013) .

## HAVE_CHILDREN

* Description: HAVE_CHILDREN shows whether there is child(under 18 years old) in Houldhold. For 2017 and 2018, it derives from household information section which include ages for each family members. For 2016 and 2015, it derives from two questions about children's age.

Question Index    |                       Question
  ----------------|-------------------------------------------------------------
      DG8B        |  How many adults and children do you have in the household? (999 for DK/Refused): Number of children (boys) (Below 18 years)
      DGBC        |  How many adults and children do you have in the household? (999 for DK/Refused): Number of children (girls) (Below 18 years)
* Levels 
       + Yes
       + No
* Note:
       + No houldhold informations in Paksitan 2017, need comfirm.
       + Questions about children are not collected in 2013 and 2014 survey.
       
## SCHOOL_FEE

* Description: Respondent has ever paid school fee or not, derived from two types of questions base on different years.

Year              |                       Question
  ----------------|-------------------------------------------------------------
      2018        |  Have you ever paid a fee for school, education, or training?
    2016,2015     |  What type of school do the children go to? I pay a fee for the school
      
* Levels 
       + Yes
       + No
* Note:
       + 2013, 2014 and 2017 survey does not include questions about school fee payment.

## EMPLOYMENT

* Description: Employment status

* Levels 
       + Working full-time for a regular salary
       + Working part-time for a regular salary
       + Working occasionally, irregular pay (whenever the work is available)
       + Working per season (e.g., only during the harvest season)
       + Self-employed, working for yourself
       + Not working but looking for a job
       + Housewife or stay-at-home husband doing household chores
       + Full-time student
       + Not working because of retirement
       + Not working because of sickness, disability, etc.
       + Other
       + DK
       
* Note:
       + Pakistan(2015) has one more category "Landlord", which is recoded into "Other".
       + 2013 survey does not include this quesion.
       
## INVOL_AGRI

* Description: Respondent include one of following features: be a farmer or farm worker, respondents or their family own a farm, got money from any farming activities in the past 12 monthes. Take Bangladesh 2018 as an example, INVOL_AGRI are derived from following quesions.

Question Index    |                       Question
  ----------------|-------------------------------------------------------------
      DL2         |  What is your primary job (i.e., the job where you spend most of your time)?
      DL6         |  Does anyone in your household own or lease a farm/farmland?
      DL4_1       |  Please tell me in which of the following ways you got money in the past 12 months? Sold products of agriculture or reared livestock

* Levels 
       + Yes
       + No
       
* Note:
       + For 2018 and 2017, only 1 option is correlated with farm in DL4 set questions. But for 2016 and 2015, serveral options are correlated with farm in DL4 set questions.
       + For Bangladesh 2015, only 1 option is correlated with farm in DL4 set questions, which is different ftom other countries in 2015. Need confirm.
       
## OWN_FARM

* Description: Respondents or their household own or lease a farm/farmland, derived from DL6.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys do not include this quesion.

## WORK_FARM

* Description: Respondents work on the farm that someone in their household owned or leased, derived from DL7.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys do not include this quesion.
       
## SELL_CROP

* Description: Respondents sell products of agriculture or rearing livestock, derived from DL4 set quesions.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys do not include this quesion.

       

 
       
