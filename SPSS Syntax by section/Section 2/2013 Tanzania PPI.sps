* Encoding: windows-1252.
***Creating PPI.
weight off.

recode dl11 (1=0) (2=10) (3=15) (4=20) (5=30) into young.
recode dl12 (1=0) (2=3) (3=3) into school.
recode dl13 (1=0) (2=0) (3=6) (4=13) into female.
recode dl14 (1=0) (2=11) into floor.
recode dl15 (1=0) (2=8) (3=9) into roof.
recode dl16 (1=0) (2=3) (3=11) into bike.
recode dl17 (1=6) (2=0) into radio.
recode dl18 (1=6) (2=0) into lantern.
recode dl19 (1=5) (2=0) into iron.
recode dl20 (1=0) (2=2) (3=4) (4=6) into table.

compute ppi_score = sum(young, school, female, floor, roof, bike, radio, lantern, iron, table).
freq ppi_score.

recode ppi_score (0 thru 14 = 100) (15 thru 29 = 99.7) (30 thru 34 =99.3)
(35 thru 39 = 98.9) (40 thru 44 = 95.3) (45 thru 49 = 92.7) (50 thru 54 = 86.8) (55 thru 59 = 81.6) (60 thru 64 = 71.3)
(65 thru 69 = 62.3) (70 thru 74 = 53) (75 thru 79 = 48.5) (80 thru 84 = 47.5) (85 thru 89 = 29.1) (90 thru 94 = 6.6) (95 thru 100 = 0) into ppi_prob2.
freq ppi_prob2.
DESCRIPTIVES ppi_prob2.

**The MEAN ppi_prob is 81.1.  This means 81.1% of our sample is below the $2.50/day poverty line.  
*Take the freq of ppi_score, look at the cumulative frequncy column, and choose the score that most closely aligns with 81.1%.

freq ppi_score.
*The closest ppi_score is 66.  Therefore, everyone with a ppi score of 66 or lower is below the poverty line, and everyone with a ppi score greater than 66 is above the poverty line.

compute POVERTY1 = 0.
if (ppi_score <= 66) POVERTY1= 1.

recode ppi_score (0 thru 4 = 99.4) (5 thru 9 = 99.1) (10 thru 14 =99.2) (15 thru 19 = 96.9) (20 thru 29 =90.6) (30 thru 34 = 88.6) (35 thru 39 = 77.7) (40 thru 44 = 70.5)
(45 thru 49 = 61.1) (50 thru 54 = 48.9) (55 thru 59 = 32.9) (60 thru 64 = 29.1) (65 thru 69 = 19.3) (70 thru 74 = 11.7) (75 thru 79 = 6) (80 thru 84 = 4.8)
(85 thru 100 = 0) into ppi_prob_125.
freq ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob_125 is 48.196129.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 52) ppi_cutoff_125 = 1.

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


