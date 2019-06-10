* Encoding: UTF-8.
***Creating PPI.
weight off.
recode dl14 (1=0) (2=3) (3=4) (4=6) (5=8) (6=12)(7=21)(8=28) into hh_member.
recode dl15 (1=0) (2=2) (3=5) into kid_edu.
recode dl16 (1,2=0) (3=3) into female_head.
recode dl17 (1=0) (2=4) into wall.
recode dl18 (1=0) (2=5) into roof.
recode dl19 (1=0) (2=6) into cook.
recode dl20 (1=0) (2=4) (3=6) (4=11) into toilet.
recode dl21 (1=0) (2=7) (3=12) (4=22) into cell_phone.
recode dl22 (1=0) (2=7) into radio.
recode dl23 (1=0) (2=9) into shoes.

compute ppi_score = sum(hh_member, kid_edu, female_head, wall, roof, cook, toilet, cell_phone, radio, shoes).
freq ppi_score.


recode ppi_score (0 thru 4 = 99.7) (5 thru 9 = 99.5) (10 thru 14 = 98.3) (15 thru 24 = 95) (25 thru 29 = 92.9) (30 thru 34 =82.6)
(35 thru 39 = 77.2) (40 thru 44 = 71.5) (45 thru 49 = 60) (50 thru 54 = 45.3) (55 thru 59 = 34.2) (60 thru 64 = 21.6)
(65 thru 69 = 10.5) (70 thru 74 = 4.9) (75 thru 79 = 2.7) (80 thru 84 = 2.6) (85 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 56.9071.
compute POVERTY1 = 0.
if (ppi_score <= 48) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 4 = 96.7) (5 thru 9 = 92.1) (10 thru 14 = 76) (15 thru 19 = 65.3) (20 thru 24 = 58.4) (25 thru 29 = 45.3) (30 thru 34 =27.9)
(35 thru 39 = 23.9) (40 thru 44 = 20.1) (45 thru 49 = 10.9) (50 thru 54 = 4.9) (55 thru 59 = 3.1) (60 thru 64 = 0.3) (65 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 21.145967.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 29 ) ppi_cutoff_125 = 1.

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




