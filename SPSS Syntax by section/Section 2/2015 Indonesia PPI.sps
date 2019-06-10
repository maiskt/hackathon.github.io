* Encoding: UTF-8.
*Indonesia PPI wave 3.
weight off.

recode dl14 (1=0) (2=6) (3=12) (4=18) (5=24) (6=35) into household.
recode dl15 (1=0) (2=0) (3=2) into school.
recode dl16 (1=0) (2=3) (3=4) (4=4) (5=5) (6=7) (7=18) into edu.
recode dl17 (1=0) (2=0) (3=1) (4=3) (5=4) (6=6) into occupation.
recode dl18 (1=0) (2=5) into floor.
recode dl19 (1=0) (2=2) (3=4) into arrangement.
recode dl20 (1=0) (2=5)  into fuel.
recode dl21 (1=0) (2=7) into gas.
recode dl22 (1=0) (2=9) into refridgerator.
recode dl23 (1=0) (2=9) into vehicle.

compute ppi_score = (household + school + edu + occupation + floor + arrangement + fuel + gas + refridgerator + vehicle).
freq ppi_score.

recode ppi_score (0 thru 4 = 99.5) (5 thru 9 = 99.0) (10 thru 14 = 98.5) (15 thru 19 = 97) (20 thru 24 = 95.6) (25 thru 29 = 92.0) (30 thru 34 = 88.2)
(35 thru 39 = 80.8) (40 thru 44 = 69.6) (45 thru 49 = 56.2) (50 thru 54 = 42.0) (55 thru 59 = 28.3) (60 thru 64 = 19.4) (65 thru 69 = 10.7) (70 thru 74 = 8.1)
(75 thru 79 = 4.0) (80 thru 84 = 1.3) (85 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*Mean = 58.75, meaning 58.75% of our survey are below the $2.50/day poverty line.  This means the cutoff is a ppi score of 48: Those with a score of 48 or lower
are below the poverty line, those with a ppi score of more than 48 are aboev the poverty line.

recode ppi_score (0 thru 48 = 1) (49 thru 100 = 0) into POVERTY1.

**ppi $1.25.
recode ppi_score (0 thru 4 = 77.4) (5 thru 9 = 72.1) (10 thru 14 = 61.8) (15 thru 19 = 49.9) (20 thru 24 = 40.1) (25 thru 29 = 28.8) (30 thru 34 = 19.7)
(35 thru 39 = 12) (40 thru 44 = 6.8) (45 thru 49 = 3.5) (50 thru 54 = 1.7) (55 thru 59 = 0.9) (60 thru 64 = 0.4) (65 thru 79 = 0.1) (80 thru 100 = 0)  into ppi_prob_125.
freq ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean=10.48.
recode ppi_score (0 thru 27 = 1) (28 thru 100 = 0) into ppi_cutoff2.

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

