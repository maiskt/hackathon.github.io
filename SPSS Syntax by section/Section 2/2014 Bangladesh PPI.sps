* Encoding: UTF-8.
*Bangladesh PPI Syntax.

weight off.
recode dl11 (1= 0) (2 = 10) (3=16) (4=29) into young_hh.
recode dl12 (1=0) (2=3) (3=6) into edu_hh.
recode dl13 (1=0) (2=8) into work.
recode dl14 (1=0) (2=3) (3=5) INTO rooms.
recode dl15 (1=0) (2=2) (3=5) into walls.
recode dl16 (1=0) (2=7) into televisions.
recode dl17 (1=0) (2=4) (3=7) into fans.
recode dl18 (1=0) (2=8) (3=15) into mobile_phones.
recode dl19 (1=0) (2=4) into bikes.
recode dl20 (1=0) (2=7) into own_land.

compute ppi_score = (young_hh + edu_hh + work + rooms + walls + televisions + fans + mobile_phones + bikes + own_land).
freq ppi_score.

recode ppi_score (0 thru 4 = 100) (5 thru 24 = 99.7) (25 thru 29 = 98.7) (30 thru 34 = 98.2) (35 thru 39 = 96.9) 
(40 thru 44 =94.9) (45 thru 49 = 91.5) (50 thru 54 = 87.9) (55 thru 59 = 84.3) (60 thru 64 = 73.2) (65 thru 69 = 63.3)
(70 thru 74 = 60.4) (75 thru 79 = 50.7) (80 thru 84 = 40.9) (85 thru 89 = 33.3) (90 thru 94 = 12.3) (95 thru 100 = 0) into ppi_prob.
freq ppi_prob.

descriptives ppi_prob.

compute POVERTY1 = 0.
if (ppi_score <= 67) POVERTY1 = 1.

recode ppi_score (0 thru 4 = 97.9) (5 thru 9=89.3)(10 THRU 14=88.8)(15 THRU 19=81.6)(20 THRU 24=78)(25 THRU 29=65.8)(30 thru 34 = 57) (35 thru 39 = 50.3) 
(40 thru 44 =40.8) (45 thru 49 =33.5) (50 thru 54 = 24.2) (55 thru 59 = 14.5) (60 thru 64 = 10.9) (65 thru 69 = 8.7)
(70 thru 74 = 5.6) (75 thru 79 = 4.3) (80 thru 84 =2.7) (85 thru 100 = 0) into ppi_prob2.
descriptives ppi_prob2.
*mean of ppi_prob2 is 18.673367.
recode ppi_score(0 thru 47=1)(48 thru highest=0) into ppi_cutoff2.

compute POVERTY2=ppi_cutoff2.
if POVERTY1=0 POVERTY2=2.

*Label.
value labels POVERTY1 0 "Above poverty line of USD 2.5/day" 1"Below poverty line of USD 2.5/day".
value labels POVERTY2  1"Extreme poverty- living with less than USD 1.25/day"
0"Poor- living with USD1.25 -USD2.5/day" 
2"Above poverty line of USD2.5/day".

variable labels PPI_SCORE	"Poverty score"
PPI_PROB	"Poverty likelihood (below $2.5)"
POVERTY1	"Eco-status "
POVERTY2	"Poverty level".


