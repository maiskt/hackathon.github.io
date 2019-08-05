* Encoding: windows-1252.
***Creating PPI.
weight off.
recode dl14 (1=0) (2=5) (3=11) (4=18) (5=24) (6=37) into hh_member.
recode dl15 (1,2=0) (3=2) into kid_edu.
recode dl16 (1=0) (2=3) (3,4,5=4) (6=6) (7=18) into female_edu.
recode dl17 (1,2=0) (3=1) (4,5=3) (6=6) into male_job.
recode dl18 (1=0) (2=5) into floor.
recode dl19 (1=0) (1=1) (3=4) into toilet.
recode dl20 (1=0) (2=5) into cook.
recode dl21 (1=0) (2=6) into gas.
recode dl22 (1=0) (2=8) into freezer.
recode dl23 (1=0) (2=9) into car.

compute PPI_SCORE = sum(hh_member, kid_edu, female_edu, male_job, floor, toilet, cook, gas, freezer, car).
freq PPI_SCORE.

recode ppi_score (0 thru 4 = 99.5) (5 thru 9 = 99) (10 thru 14 = 98.5) (15 thru 19 = 97)  (20 thru 24 = 95.6) (25 thru 29 = 92) 
(30 thru 34 =88.2) (35 thru 39 = 80.8) (40 thru 44 = 69.6) 
(45 thru 49 = 56.2) (50 thru 54 = 42) (55 thru 59 = 28.3) (60 thru 64 = 19.4) (65 thru 69 = 10.7) (70 thru 74 = 8.1) 
(75 thru 79 = 4) (80 thru 84 = 1.3) (85 thru 100 = 0) into PPI_PROB.
freq PPI_PROB.
DESCRIPTIVES PPI_PROB.

*mean of ppi_prob is 60.4063.
compute POVERTY1 = 0.
if (ppi_score <=47 ) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 4 = 77.4) (5 thru 9 = 72.1) (10 thru 14 = 61.8) (15 thru 19 = 49.9) (20 thru 24 = 40.1) (25 thru 29 = 28.8) (30 thru 34 = 19.7)
(35 thru 39 = 12) (40 thru 44 = 6.8) (45 thru 49 = 3.5) (50 thru 54 = 1.7) (55 thru 59 = 0.9) (60 thru 64 = 0.4) (65 thru 79 = 0.1) (80 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 9.6171.
compute ppi_cutoff_125 = 0.
if (ppi_score <=28) ppi_cutoff_125 = 1.
variable labels ppi_cutoff_125 "Eco-status $1.25".
VALUE LABELS ppi_cutoff_125 1"Below poverty line $1.25" 0"Above poverty line $1.25".

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
