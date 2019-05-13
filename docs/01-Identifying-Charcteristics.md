#Identifying Characteristics

The primary identification variables used for organizing and filtering the datasets.

##SBJNUM
The original ID for individual respondants. There is no standard length across datasets, and two different responses across datasets may share the same Subject Number. When examining single observations, make sure to filter by SBJNUM, COUNTRY, and YEAR at the same time.

##COUNTRY
The country where the collection program took place.
Countries include:

* Bangladesh
* India
* Indonesia
* Kenya
* Nigeria
* Pakistan
* Tanzania
* Uganda

##YEAR
The year when the collection program took place. 
Time frames range from 2013 to 2018. Indonesia only has data from 2014 to 2016.

##UR
This variable categorizes the respondent as living in an urban or rural area. While exact boundaries vary by country, access to city resources is the primary factor considered.

Urban | Rural
---| ---
1 | 2

##CLUSTER

A geographic grouping of respondents, typically representing a single area where interviews were taken. Clusters with names have been converted to numbers.

Due to inadequate data, clusters for Nigeria in 2013 are unavailable.

##ANON_LAT, ANON_LONG
Anonymized latitude and longitude of the approximate housheold location.

The method of anonymization is very similar to the one practiced by the Demographic Health Surveys project. All respondents within a cluster share the same coordinates. Cluster centers were initially calculated by averaging all longitudes and latitudes, then displacing the point randomly within a radius inside the second-level geographic area (e.g. counties). The maximum radius for displacement is within 2km for an urban area and 5km for a rural area, with a 1/100 chance of the maximum rural radius being 10km. This method is intended to preserve location anonymity while still being usable for basic spatial analysis purposes. 

Due to inadequate data, 2013 data for Nigeria and Tanzania are unavailable.
