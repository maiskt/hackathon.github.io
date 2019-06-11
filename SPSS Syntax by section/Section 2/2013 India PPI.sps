* Encoding: windows-1252.
***Creating PPI.
weight off.
recode dl11 (1=0) (2=7) (3=11) (4=17) (5=26) into young.
recode dl12 (1=0) (2=0) (3=3) (4=5) (5=7) into edu.
recode dl13 (1=0) (2=5) into employ.
recode dl14 (1=0) (2=3) (3=9) into cook.
recode dl15 (1=5) (2=0) into thermo.
recode dl16 (1=0) (2=4) (3=9) into tv.
recode dl17 (1=0) (2=9) (3=15) into phone.
recode dl18 (1=1) (2=0) into sew.
recode dl19 (1=5) (1=5) (2=0) into dresser.
recode dl20 (1=0) (2=1) (3=13) (4=18) into motor.

compute ppi_score = sum(young, edu, employ, cook, thermo, tv, phone, sew, dresser, motor).
freq ppi_score.

recode ppi_score (0 thru 9 = 100) (10 thru 14 = 99.8) (15 thru 19 = 99.1) (20 thru 24 = 98.1) (25 thru 29 = 96.3) (30 thru 34 =91.7)
(35 thru 39 = 86.3) (40 thru 44 = 80.7) (45 thru 49 = 73.6) (50 thru 54 = 64.2) (55 thru 59 = 55.2) (60 thru 64 = 47.2)
(65 thru 69 = 40.2) (70 thru 74 = 31) (75 thru 79 = 23) (80 thru 84 = 15.5) (85 thru 89 = 8.4) (90 thru 94 = 2.3) (95 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

compute POVERTY1 = 0.
if (ppi_score <= 52) POVERTY1 = 1.

*$1.25.
weight off.
recode ppi_score (0 thru 4 = 91.9) (5 thru 9=83.6)(10 thru 14=76.7)(15 thru 19=62)(20 thru 24=49.7)(25 thru 29=41.8)(30 thru 34 = 30.5) (35 thru 39 = 21.8) 
(40 thru 44 =15.9) (45 thru 49 =10.8) (50 thru 54 = 6.4) (55 thru 59 = 3.7) (60 thru 64 = 2.6) (65 thru 69 = 1.6)
(70 thru 74 = 0.7) (75 thru 79 = 0.4) (80 thru 84 =0.4) (85 thru 100 = 0) into ppi_prob2.
DESCRIPTIVES ppi_prob2.
*mean of ppi_prob2 is 27.655886.
recode ppi_score(0 thru 26=1)(27 thru highest=0) into ppi_cutoff2.

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

