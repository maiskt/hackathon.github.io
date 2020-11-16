# Survey Dataset Identification

Any given survey dataset can be identified using together the following 3 variables: UID, COUNTRY, and YEAR. 

## UID
This is the identification variable that uniquely identifies each respondent within an individual survey dataset.  It is worth noting that two respondents from two different survey datasets can have the same SBJNUM value. For this reason, it is important to use variables UID, COUNTRY, and YEAR at the same time as the unique idenfitifer when using multiple survey datasets.

## COUNTRY, YEAR
These are the variable shows the country and year where/when the survey was conducted. The survey was conducted in 8 countries and runs from 2013 to 2018, data was colllected for marked country/year as shown below.


|Country/Year       |2013          |2014          |2015          |2016          |2017          |2018          |
|----------------   |------------  |------------  |------------  |------------  |------------  |------------  |
|**Bangladesh**     |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |
|**India**          |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |
|**Indonesia**      |              |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |$\checkmark$  |
|**Kenya**          |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |
|**Nigeria**        |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |
|**Pakistan**       |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |
|**Tanzania**       |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |
|**Uganda**         |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |$\checkmark$  |              |


## WEIGHT
This is the survey weight to use in analyses.  Each survey dataset contains its own set of weights. The weight, when implemented, increases or increases the influence of a specific subgroup based on sample size. Weights were originally calculated in proportion to key regional or demographic census data.

## UR
Type of place residence where the respondent resides as either urban or rural.

## CLUSTER
The cluster number is the number identifiying the sample point as used during the filedwork. 

Due to inadequate data, cluster data for Nigeria in 2013 are not available.

## LATITUDE, LONGITUDE
Anonymized latitude and longitude of the approximate household location.

The method of anonymization is very similar to the one practiced by the Demographic Health Surveys project. All respondents within a cluster share the same coordinates. Cluster centers were initially calculated by averaging all longitudes and latitudes, then displacing the point randomly within a radius inside the second-level geographic area (e.g. counties). The maximum radius for displacement is within 2km for an urban area and 5km for a rural area, with a 1/100 chance of the maximum rural radius being 10km. This method is intended to preserve location anonymity while still being usable for basic spatial analysis purposes. 

Due to inadequate data, 2013 GPS data for Nigeria and Tanzania are unavailable.
