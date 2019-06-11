* Encoding: UTF-8.
***Creating PPI.
weight off.
recode dl14 (9 THRU HIGHEST=0) (7,8=5) (6=8) (5=12) (4=18) (3=22)(1,2=32) into hh_member.
recode dl15 (1=0) (2=1) (3=2) (4,5=6) (6=11) into female_edu.
recode dl16 (1=0) (2=3) (3=7) (4=9) into male_job.
recode dl17 (1=0) (2=2) (3=5) (4=8) into room.
recode dl18 (1=0) (2=3) into dwelling.
recode dl19 (1=0) (2=6) (3=12) into light.
recode dl20 (1=0) (2=4) into iron.
recode dl21 (1=0) (2=2) (3=4) into net.
recode dl22 (1=0) (2=6) (3=10) into towel.
recode dl23 (1=0) (2=3) (3=7) into pan.

compute ppi_score = (100/93) * sum(hh_member, female_edu, male_job, room, dwelling, light, iron, net, towel).
freq ppi_score.

recode ppi_score (0 thru 9.9999 = 100) (10 thru 14.9999 = 99.6) (15 thru 19.9999 = 99.3) (20 thru 24.9999 = 99) (25 thru 29.9999 = 96.2) (30 thru 34.9999 =95.4)
(35 thru 39.9999 = 91.8) (40 thru 44.9999 = 82) (45 thru 49.9999 = 75.3) (50 thru 54.9999 = 61.1) (55 thru 59.9999 = 44.4) (60 thru 64.9999 = 29)
(65 thru 69.9999 = 20.3) (70 thru 74.9999 = 8.9) (75 thru 79.9999 = 5.4) (80 thru 84.9999 = 3) (85 thru 89.9999 = 1.2) (90 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 43.761067.
compute POVERTY1 = 0.
if (ppi_score <= 56.99) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 4.9999 = 100) (5 thru 9.9999 = 97.5) (10 thru 14.9999 = 86.2) (15 thru 19.9999 = 86) (20 thru 24.9999 = 81.9) (25 thru 29.9999 = 70.1) (30 thru 34.9999 =63.1)
(35 thru 39.9999 = 49) (40 thru 44.9999 = 35.1) (45 thru 49.9999 = 24.9) (50 thru 54.9999 = 9.6) (55 thru 59.9999 = 6.8) (60 thru 64.9999 = 1.4)
(65 thru 69.9999 = 0.8) (70 thru 84.9999 = 0.1) (85 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 18.160900.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 38.71) ppi_cutoff_125 = 1.

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


