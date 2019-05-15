# Demographics

Demographics

## AGE

* Description: Respondent's age, derived from birth year and survey year
* Note: 
       + These countries have missing values: Nigeria 2015, Tanzania 2015, Indonesia 2015, Uganda 2014-2013.
       + Coded missing value into DK=-2.

## AGE_GROUP

* Description: 10-year age group, derived from AGE
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

* Description: Grouping highest level of education into 5 categories, derived from DG4. 

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

* Description: Literacy, derived from literary questions. For example, Kenya 2017 uses the following questions. Respondents ae considered as having basic literacy skills if they can write or read with understanding in the survey language. 

  Question Index  |                       Question
  ----------------|-------------------------------------------------------------
      LN1A        |  Reading ability (1=Read fluently with no help;   2=Read well with little help; 
                                      3= Struggle to read even with help;  4= Unable to read
      LN1B        |  Reading comprehension (1= Read with full understanding;   2= Read with good understanding but needed some help
                                            3= Struggle to understand; 4=Unable to understand)
      LN2_1       |  Reading in (survey language):  1=cannot do at all; 2=Very badly; 3=Somewhat badly; 4= Good; 5=Excellent
      LN2_2       |  Writing in (survey language): 1=cannot do at all; 2=Very badly; 3=Somewhat badly; 4= Good; 5=Excellent
* Levels 
       + Basic literacy
       + Lack of basic literacy
       
       
## NUMERACY

* Description: Numeracy, derived from 4 questions. For example for Bangladesh 2018, a respondent who can answer one of the 4 following questions will be considered as "having basic numeracy skills". 

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FL12        |  Imagine you have 2,000 Taka.Somebody gave you 200 Taka.How much total money will you have?
      FL13        |  Imagine you have 1,000 Taka and you have to divide it among 5 people.How much money will each person receive if you                      divide it equally?
      FL16        |  Suppose you need to borrow 100 Taka. Which is the lower amount to pay back: 105 Taka or 100 Taka plus 3 percent?
      FL18        |  Suppose you had 100 Taka. in a savings account and the bank adds 10 percent per year to the account. How much money                      would you have in the account after five years if you did not remove any money from the account?
* Levels 
       + Basic numeracy
       + Lack of basic numeracy    
       
## FINANCIAL_LITERACY

* Description: Financial literacy, derived from 5 questions. For example Bangladesh 2018 uses the following 5 questions. For each correct answer, the first 3 questions are each assigned 1 point and the last 2 questions are assigned each 0.5 point.  Respondents with a score of 3 points or more are considered to be financially literate. 

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      FL14        |  Is it safer to put your money into one business or investment, or to put your money into multiple businesses or                          investments?
      FL15        |  Suppose over the next 10 years the prices of the things you buy double.If your income also doubles, will you be                          able to buy less than you can buy today, the same as you can buy today, or more than you can buy today?
      FL16        |  Suppose you need to borrow 100 Taka. Which is the lower amount to pay back: 105 Taka or 100 Taka plus 3 percent?
      FL17        |  Suppose you put money in the bank for two years and the bank agrees to add 15 percent per year to your account.                          Will the bank add more money to your account the second year than it did the first year, or will it add the same                        amount of money both year
      FL18        |  Suppose you had 100 Taka. in a savings account and the bank adds 10 percent per year to the account. How much money                      would you have in the account after five years if you did not remove any money from the account?
* Levels 
       + Yes
       + No
* Note:
       + Financial literacy questions are only available from 2016 to 2018.

## DIGITAL_LITERACY_INDEX

* Description: Digital literacy index, derived from questions on mobile phone ownership and usage. Using Bangladesh 2018 as an example, respondents who never use a mobile phone(MT2, MT7) are defined as having "no digital literacy" skills. Respondents who only use a mobile phone to make or receive a call(MT17_1, MT17_2) have "low digital literacy" skills.  Respondents who also use a mobile phone for texting(MT17_3) have "moderate digital literacy" skills. Respondents who also use a mobile phone for advanced activities(MT17_4-MT17_9) have "high digital literacy" skills.

 Question Index   |                       Question
  ----------------|-------------------------------------------------------------
      MT2         |  Do you personally own a mobile phone?
      MT7         |  Do you use a mobile phone that belongs to someone else or is shared?
      MT17_1      |  When was the last time you used a mobile phone to do the following? Call someone
      MT17_2      |  When was the last time you used a mobile phone to do the following? Receive a call from someone
      MT17_3      |  When was the last time you used a mobile phone to do the following? Send or receive a text message
      MT17_4      |  When was the last time you used a mobile phone to do the following? Search the internet
      MT17_5      |  When was the last time you used a mobile phone to do the following? Download music, video or games
      MT17_6      |  When was the last time you used a mobile phone to do the following? Make a financial transaction such as send or                        receive money, or make a payment, or a bank transaction
      MT17_7      |  When was the last time you used a mobile phone to do the following? Use Facebook, WhatsApp, Twitter, Instagram or                        another social networking application
      MT17_9      |  When was the last time you used a mobile phone to do the following? Download an application
* Levels 
       + Not applicable
       + Low
       + Moderate
       + High
* Note:
       + Digital literacy questions are only available for 2013 Kenya, Uganda, Tanzania and India surveys.
       
## GENDER

* Description: Gender of the respondent
* Levels 
       + Male
       + Female

## MARRIAGE

* Description: Respondent's Marital status
* Levels 
       + Single/never married
       + Married
       + Divorced/Separated
       + Widowed
       + Living together/Cohabiting 
       + Other
       + DK
* Note:
       + There is no data for the "Living together/Cohabiting" category in Pakistan and Bangladesh.

## HAVE_CHILDREN

* Description: HAVE_CHILDREN specifies whether households contain children under 18 years of age. For 2017 and 2018 surveys, this information was derived from the household roster which listed all household members with their individual characteristics including their ages. For 2016 and 2015 surveys, it was derived from the following 2 questions: 

Question Index    |                       Question
  ----------------|-------------------------------------------------------------
      DG8B        |  How many adults and children do you have in the household? (999 for DK/Refused): 
                     Number of children (boys) (Below 18 years)
      DGBC        |  How many adults and children do you have in the household? (999 for DK/Refused): 
                     Number of children (girls) (Below 18 years)
* Levels 
       + Yes
       + No
* Note:
       + No household information available for 2017 Pakistan.
       + Questions about children were not collected in 2013 and 2014 surveys.
       
## SCHOOL_FEE

* Description: Respondent has ever paid school fee or not, derived from two types of questions depending on the survey year.

Year              |                       Question
  ----------------|-------------------------------------------------------------
      2018        |  Have you ever paid a fee for school, education, or training?
    2016,2015     |  What type of school do the children go to? I pay a fee for the school
      
* Levels 
       + Yes
       + No
* Note:
       + 2013, 2014 and 2017 surveys didn't include questions on school fee.

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
       + 2013 surveys didn't include this quesion.
       
## INVOL_AGRI

* Description: Specifies whether respondents are involved in agriculture. Derived from questions about respondent's primary job (farmer or farm worker), household's ownership of a farm, or income from any farming activities in the past 12 monthes. For example, for the 2018 Bangladesh survey, INVOL_AGRI was derived from the following questions.

Question Index    |                       Question
  ----------------|-------------------------------------------------------------
      DL2         |  What is your primary job (i.e., the job where you spend most of your time)?
      DL6         |  Does anyone in your household own or lease a farm/farmland?
      DL4_1       |  Please tell me in which of the following ways you got money in the past 12 months? Sold products of agriculture or reared livestock

* Levels 
       + Yes
       + No
       
       
## OWN_FARM

* Description: Respondents or their household own or lease a farm/farmland, derived from DL6.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys didn't include this quesion.

## WORK_FARM

* Description: Respondents work on the farm that someone in their household owns or leases, derived from DL7.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys didn't include this question.
       
## SELL_CROP

* Description: Respondents sell agricultural products or livestock reared, derived from DL4 set quesions.

* Levels 
       + Yes
       + No
       
* Note:
       + 2013 and 2014 surveys didn't include this quesion.

       

 
       