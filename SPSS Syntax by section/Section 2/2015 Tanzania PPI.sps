* Encoding: windows-1252.
*Tanzania PPI.
weight off.
recode dl14 (1=0) (2=10) (3=15) (4=20) (5=30) into hh_members.
recode dl15 (1=0) (2 thru 3=3)  into school.
recode dl16 (1 thru 2=0) (3=6) (4=13) into education.
*for dl16, on spss "2" is "yes, but not in Kiswahili", while on pdf version, it said "Yes, but not in Kiswahili nor English".
recode dl17 (1=0) (2=11) into floor.
recode dl18 (1=0) (2=8) (3 thru 4=9) INTO roof.
recode dl19 (1=0) (2=3) (3=11) into vehicle.
recode dl20 (2=0) (1=6) into radio.
recode dl21 (2=0) (1=6) into lantern.
recode dl22 (2=0) (1=5) into iron.
recode dl23 (1=0) (2=2) (3=4) (4=6) into table.

compute ppi_score = (hh_members + school + education + floor + roof + vehicle + radio + lantern + iron + table).
freq ppi_score.

recode ppi_score (0 thru 14 = 100) (15 thru 29 = 99.7) (30 thru 34 = 99.3) (35 thru 39 = 98.9) (40 thru 44 = 95.3)
(45 thru 49 = 92.7) (50 thru 54 = 86.8) (55 thru 59 = 81.6) (60 thru 64 = 71.3) (65 thru 69 = 62.3) (70 thru 74 = 53) (75 thru 79 = 48.5) (80 thru 84 = 47.5)
(85 thru 89 = 29.1) (90 thru 94 = 6.6) (95 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*Mean = 82.0332 meaning 82.0332% of our survey are below the $2.50/day poverty line.  This means the cutoff is a ppi score of 67: Those with a score of 67 or lower
are below the poverty line, those with a ppi score of more than 67 are aboev the poverty line.
*wave 1: 85% below poverty line.
*wave 2: 87% below poverty line.
*wave 3: 83% below poverty line.
recode ppi_score (0 thru 67= 1) (68 thru 100 = 0) into POVERTY1.

recode ppi_score (0 thru 4 = 99.4) (5 thru 9 = 99.1) (10 thru 14 =99.2) (15 thru 19 = 96.9) (20 thru 29 =90.6) (30 thru 34 = 88.6) (35 thru 39 = 77.7) (40 thru 44 = 70.5)
(45 thru 49 = 61.1) (50 thru 54 = 48.9) (55 thru 59 = 32.9) (60 thru 64 = 29.1) (65 thru 69 = 19.3) (70 thru 74 = 11.7) (75 thru 79 = 6) (80 thru 84 = 4.8)
(85 thru 100 = 0) into ppi_prob_125.
freq ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob_125 is 51.701100.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 51) ppi_cutoff_125 = 1.

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




