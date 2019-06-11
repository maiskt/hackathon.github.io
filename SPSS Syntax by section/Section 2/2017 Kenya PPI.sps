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

compute ppi_score = sum(hh_member, female_edu, male_job, room, dwelling, light, iron, net, towel, pan).
freq ppi_score.

**2.50.
recode ppi_score (0 thru 9 = 100) (10 thru 14 = 99.6) (15 thru 19 = 99.3) (20 thru 24 = 99) (25 thru 29 = 96.2) (30 thru 34 =95.4)
(35 thru 39 = 91.8) (40 thru 44 = 82) (45 thru 49 = 75.3) (50 thru 54 = 61.1) (55 thru 59 = 44.4) (60 thru 64 = 29)
(65 thru 69 = 20.3) (70 thru 74 = 8.9) (75 thru 79 = 5.4) (80 thru 84 = 3) (85 thru 89 = 1.2) (90 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 27.5845.
compute POVERTY1 = 0.
if (ppi_score <= 58) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 4 = 100) (5 thru 9 = 97.5) (10 thru 14 = 86.2) (15 thru 19 = 86) (20 thru 24 = 81.9) (25 thru 29 = 70.1) (30 thru 34 =63.1)
(35 thru 39 = 49) (40 thru 44 = 35.1) (45 thru 49 = 24.9) (50 thru 54 = 9.6) (55 thru 59 = 6.8) (60 thru 64 = 1.4)
(65 thru 69 = 0.8) (70 thru 84 = 0.1) (85 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 7.6025.
compute ppi_cutoff_125 = 0.
if (ppi_score <=42 ) ppi_cutoff_125 = 1.

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



