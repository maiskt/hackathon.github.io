* Encoding: windows-1252.
*Pakistan PPI wave 2.

weight off.
recode dl11 (1=0) (2=9) (3=11) (4 thru 5=12) into province.
recode dl12 (1=0) (2=6) (3=11) (4=15) (5=22) (6=31) into young.
recode dl13 (1=0) (2=5) into school.
recode dl14 (1=0) (2=5) (3=12) into occupation.
recode dl15 (1=0) (2=4) (3=6) into education.
recode dl16 (1=0) (2=3) into water.
recode dl17 (1=0) (2=2) (3=4) into toilet.
recode dl18 (1=0) (2=12) into refridgerator.
recode dl19 (1=0) (2=3) into tv.
recode dl20 (1=0) (2=12) into vehicle.

compute ppi_score = (province + young + school + occupation + education + water + toilet + refridgerator + tv + vehicle).
freq ppi_score.

recode ppi_score (0 thru 14 = 100) (15 thru 19 = 99.2) (20 thru 24 = 98.7) (25 thru 29 = 96) (30 thru 34 = 96.1) (35 thru 39 = 91.4) (40 thru 44 = 88.6)
(45 thru 49 = 84.6) (50 thru 54 = 72.8) (55 thru 59 = 58.4) (60 thru 64 = 54.8) (65 thru 69 = 48.2) (70 thru 74 = 26.8) (75 thru 79 = 26) (80 thru 84 = 11.7)
(85 thru 89 = 16.1) (90 thru 94 = 3.1) (95 thru 100 = 3.5) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*Mean = 52.0, meaning 52.0% of our survey are below the $2.50/day poverty line.  This means the cutoff is a ppi score of 63: Those with a score of 63 or lower
are below the poverty line, those with a ppi score of more than 63 are aboev the poverty line.

recode ppi_score (0 thru 63 = 1) (64 thru 100 = 0) into POVERTY1.

*$1.25.
weight off.
recode ppi_score (0 thru 4 = 95.4) (5 thru 9=95)(10 thru 14=79.1)(15 thru 19=67.5)(20 thru 24=56.8)(25 thru 29=47.5)(30 thru 34 = 36.4) (35 thru 39 = 27.2) 
(40 thru 44 =14.2) (45 thru 49 =12) (50 thru 54 = 7.1) (55 thru 59 = 4) (60 thru 64 = 1.3) (65 thru 69 = 0.7)
(70 thru 74 = 0.4) (75 thru 79 = 0.8) (80 thru 100 = 0) into ppi_prob2.
DES ppi_prob2.
*mean of ppi_prob2 is 6.620567.
recode ppi_score(0 thru 36=1)(37 thru highest=0) into ppi_cutoff2.

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