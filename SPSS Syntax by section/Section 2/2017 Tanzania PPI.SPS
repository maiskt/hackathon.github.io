* Encoding: UTF-8.
***Creating PPI.
weight off.
recode dl14 (1=0) (2=2) (3=5) (4=11) (5=14) (6=17)(7=28) into hh_young.
recode dl15 (1=0) (2=3) (3=5) into kid_edu.
recode dl16 (1=0) (2=6) (3=13) into wall.
recode dl17 (1=0) (2=6) into roof.
recode dl18 (1=0) (2=9) into cook.
recode dl19 (1=0) (2=15) into tv.
recode dl20 (1=0) (2=4) into radio.
recode dl21 (1=0) (2=4) into lanterns.
recode dl22 (1=0) (2=4) into table.
if dl23A=2 agri=0.
if dl23B=2 agri=5.
if dl23B=1 agri=12.

compute ppi_score = sum(hh_young, kid_edu, wall, roof, cook, tv, radio, lanterns, table, agri).
freq ppi_score.

recode ppi_score (0 thru 14 = 100) (15 thru 19 = 99.9) (20 thru 24 = 97) (25 thru 29 = 96.7) (30 thru 34 =95)
(35 thru 39 = 89.5) (40 thru 44 = 79.6) (45 thru 49 = 75.7) (50 thru 54 = 61.2) (55 thru 59 = 56.9) (60 thru 64 = 45.6)
(65 thru 69 = 36.8) (70 thru 74 = 27.1) (75 thru 79 = 23.2) (80 thru 89 = 8.1) (90 thru 94 = 7.6) (95 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 77.7793.
compute POVERTY1 = 0.
if (ppi_score <= 53) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 9 = 100) (10 thru 14 = 86.7) (15 thru 19 = 77.5) (20 thru 24 = 71.9) (25 thru 29 = 59.6) (30 thru 34 = 48)
(35 thru 39 = 35.2) (40 thru 44 = 23.5) (45 thru 49 = 20.2) (50 thru 54 = 13.8) (55 thru 59 = 7.3) (60 thru 64 = 4.2) (65 thru 79= 1.7)
(80 thru 84 = 1.3) (85 thru 89 = 0.1) (90 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 34.117026?.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 33 ) ppi_cutoff_125 = 1.

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
