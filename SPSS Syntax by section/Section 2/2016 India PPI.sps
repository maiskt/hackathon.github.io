﻿* Encoding: UTF-8.
***Creating PPI.
weight off.
recode dl14 (8 THRU HIGHEST=0) (7=4) (6=7) (5=11) (4=19) (3=26) (2=34) (1=41) into hh_member.
recode dl15 (1=0) (2=3) (3,4=5) into female_head.
recode dl16 (1=0) (2=11) into freezer.
recode dl17 (1=0) (2=2) into stove.
recode dl18 (1=0) (2=4) into pan.
recode dl19 (1=0) (2=5) into tv.
recode dl20 (1=0) (2=3) into fan.
recode dl21 (1=0) (2=4) into table.
recode dl22 (1=0) (2=6) into chair.
recode dl23 (1=0) (2=19) into car.

compute ppi_score = sum(hh_member, female_head, freezer, stove, pan, tv, fan, table, chair, car).
freq ppi_score.


recode ppi_score (0 thru 4 = 99.6) (5 thru 9 = 99.4) (10 thru 14 = 99) (15 thru 19 = 98.1) (20 thru 24 = 97) (25 thru 29 = 95.7) (30 thru 34 =93.9) (35 thru 39 = 89.4) 
(40 thru 44 = 84.9) (45 thru 49 = 75.1) (50 thru 54 = 66.4) (55 thru 59 = 51.5) (60 thru 64 = 44.7) (65 thru 69 = 39.4) (70 thru 74 = 28.2) (75 thru 79 = 18.5) 
(80 thru 84 = 13.2) (85 thru 89 = 7.9) (90 thru 94 = 1.7) (95 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 66.1805.
compute POVERTY1 = 0.
if (ppi_score <=57) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 4 = 79.5) (5 thru 9 = 74.3) (10 thru 14 = 64.8) (15 thru 19 = 55.7) (20 thru 24 = 45.2) (25 thru 29 = 38.1) (30 thru 34 = 32.5)
(35 thru 39 = 21.9) (40 thru 44 = 16.6) (45 thru 49 = 11.2) (50 thru 54 = 6.4) (55 thru 59 = 2.9) (60 thru 64 = 1.7) (65 thru 69 = 0.6)
(70 thru 74 = 0.4) (75 thru 79 = 0.1) (80 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 20.3184.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 26) ppi_cutoff_125 = 1.

compute POVERTY2=ppi_cutoff_125.
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
