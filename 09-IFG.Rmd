# Informal Financial Groups

## BELONG_INFML
A derived binary variable, BELONG_INFML represents the respondent's participation in informal societies or group saving schemes. The definition of "informal" varies by sophistication of village-level services, but the common institutions that qualify include:

* Cooperatives
* Village-level saving and lending group
* Informal loan clubs or rotating savings and credit associations (ROSCAs, with [many regional names](http://www.gdrc.org/icm/rosca/rosca-names.html))

If the respondent is part of one or more IFGs, BELONG_INFML = 1. Otherwise it is 0.

### Bangladesh
Only 2016 and 2017 data are available.

### Kenya
Only 2015-2017 data are available.

### India
Only 2015-2017 data are available.

### Indonesia
Only 2015 and 2016 data are available.

### Nigeria
Only 2015-2017 data are available.

### Pakistan
No data is available.

### Tanzania
Only 2015-2017 data are available.

### Uganda
Only 2015-2017 data are available.

## R_INFML
If the respondent belongs to one or more IFGs, R_INFML asks for the most important reason from the following:

Value | Reason
----- | -------
    1 | To have a lump sum to use when it’s your turn
    2 | To help when there is a death in the family or any other emergency
    3 | To have access to loans or credit when needed
    4 | Easier to use or more accessible than other financial service providers

Between 12 and 15 options were originally given for this question. In 2017, respondents were asked about the importance of these factors on a Likert scale from 1, least important, to 5, most important. Because of no direct way to convert question formats and preserve information, the responses were not included in this compiled dataset.

----

## R_NOINFML
If the respondent does _not_ belong in an IFG, R_NOINFML asks for the most important reason from the following:

**What is the most important reason for your decision not to join informal societies or group saving schemes?**

Value | Reason
----- | -------
1     | Don't have any money left for savings
2     | Don't know about them
3     | Don't trust them/people steal your money
4     | Don't need any service from them/their services are better served by other financial service providers

### Bangladesh
In 2013, there was no option for "Don't know about them".
### Kenya
### India
### Indonesia
### Nigeria
In 2013, there was no option for "Don't know about them".
### Pakistan
### Tanzania
### Uganda

----

## INFML_SERVICE
This subsection asks about the services provided to the respondent by the informal societies or group saving schemes they belong to.
These questions are all binary, with values 1 for "Yes" and 2 for "No".
*Do you receive the following services through any of the informal societies or group saving schemes that you personally belong to?*

Variable | Reason
-------- | -------------------------------------------------------------       
INFML_SERVICE_1   | Welfare/clan group - we help each other out for things like funerals
INFML_SERVICE_2   | We receive loan/credit
INFML_SERVICE_3   | We collect money and give to each member a lump sum (pot) or gift in turn
INFML_SERVICE_4   | We save and lend money to members and/or non-members to be repaid with interest
INFML_SERVICE_5   | We periodically distribute all monies held by the group to its members
INFML_SERVICE_6   | We save together and put the money in an account
INFML_SERVICE_7   | We make other kinds of investments as a group (e.g., property, business)
INFML_SERVICE_8   | We invest in the stock market as a group

**Number of service options in the questionnaire, by country and year**
Country       | 2015 | 2016 | 2017
------------- | ---- | ---- | ----
  Bangladesh  |  0   |  5   |  8
  India       |  0   |  9   |  8
  Indonesia   |  0   |  9   |  0
  Kenya       |  7   |  8   |  8
  Nigeria     |  7   |  8   |  8
  Pakistan    |  0   |  7   |  7
  Tanzania    |  7   |  8   |  8
  Uganda      |  7   |  8   |  8
  
### Bangladesh
In 2016, services 1 and 5 were not asked about.

### Kenya
In 2015, service 2 was not asked about.

### India
In 2016, the 9th option was "none of these".

### Indonesia
In 2016, the 9th option was "none of these".

### Nigeria
In 2015, service 2 was not asked about.

### Pakistan
In 2016 and 2017, only services 1, 3, 4, and 6 were asked. Other, more specific ROSCA-related questions were asked instead.

### Tanzania
In 2015, service 2 was not asked about.

### Uganda
In 2015, service 2 was not asked about.
