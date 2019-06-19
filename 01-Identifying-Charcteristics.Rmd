# Survey Dataset Identification

Any given survey dataset can be identified using together the following 3 variables: SBJNUM, COUNTRY, and YEAR. 

## SBJNUM
This is the identification variable that uniquely identifies each respondent within an individual survey dataset.  It is worth noting that two respondents from two different survey datasets can have the same SBJNUM value. For this reason, it is important to use variables SBJNUM, COUNTRY, and YEAR at the same time when using multiple survey datasets.

## COUNTRY
This is the name of the country where the survey was conducted. The following countries were surveyed:

* Bangladesh
* India
* Indonesia
* Kenya
* Nigeria
* Pakistan
* Tanzania
* Uganda

## YEAR
This is the year in which data collection place. It runs from 2013 to 2018, except for Indonesia where it ranges from 2014 to 2016.

****
**Other variables**

****

Each individual survey dataset also includes the following variables:

## WEIGHT
This is the survey weight to use in analyses.  Each survey dataset contains its own set of weights. The weight, when implemented, increases or increases the influence of a specific subgroup based on sample size. Weights were originally calculated in proportion to key regional or demographic census data.

## UR
Type of place residence where the respondent resides as either urban or rural.

## CLUSTER
The cluster number is the number identifiying the sample point as used during the filedwork. Clusters with names have been converted to numbers.

Due to inadequate data, cluster data for Nigeria in 2013 are not available.

## ANON_LAT, ANON_LONG
Anonymized latitude and longitude of the approximate household location.

The method of anonymization is very similar to the one practiced by the Demographic Health Surveys project. All respondents within a cluster share the same coordinates. Cluster centers were initially calculated by averaging all longitudes and latitudes, then displacing the point randomly within a radius inside the second-level geographic area (e.g. counties). The maximum radius for displacement is within 2km for an urban area and 5km for a rural area, with a 1/100 chance of the maximum rural radius being 10km. This method is intended to preserve location anonymity while still being usable for basic spatial analysis purposes. 

Due to inadequate data, 2013 GPS data for Nigeria and Tanzania are unavailable.
