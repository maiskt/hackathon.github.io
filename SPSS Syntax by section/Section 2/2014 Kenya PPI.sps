* Encoding: windows-1252.
*Kenya PPI.



weight off.

compute ppi_score = 0.

recode dl11 (9 thru highest = 0) (7 thru 8 = 5) (6 = 8) (5 = 12) (4 = 18) (3 = 22) (1 thru 2 = 32) into hh_members.
variable labels hh_members 'hh_members'.
recode dl12 (1=0) (2=1) (3=2) (4=6) (5=6) (6=11) (9=6) into female_school.
variable labels female_school 'female_school'.
recode dl13 (1=0) (2=3) (3=7) (4=9) (5=9) into male_job.
variable labels male_job 'male_job'.
recode dl14 (1=0) (2=2) (3=5) (4=8) into hh_rooms.
variable labels hh_rooms 'hh_rooms'.
recode dl15 (1=0) (2=3) into hh_floor.
variable labels hh_floor 'hh_floor'.
recode dl16 (1=0) (2=6) (3=12) into light_source.
variable labels light_source 'light_source'.
recode dl17 (1=0) (2=4) into own_iron.
variable labels own_iron 'own_iron'.
recode dl18 (1=0) (2=2) (3=4) into mosq_nets.
variable labels mosq_nets 'mosq_nets'.
recode dl19 (1=0) (2=6) (3=10) into own_towels.
variable labels own_towels 'own_towels'.
recode dl20 (1=0) (2=3) (3=7) into own_pan.
variable labels own_pan 'own_pan'.
compute ppi_score = (hh_members + female_school + male_job + 
hh_rooms + hh_floor + light_source + own_iron + mosq_nets + own_towels + own_pan).
freq ppi_score.

recode ppi_score (0 thru 9 = 100) (10 thru 14 = 99.3) (15 thru 19 = 99.1) (20 thru 24 = 99.2) (25 thru 29 = 96.2)
(30 thru 34 = 95.4) (35 thru 39 = 91) (40 thru 44 = 82.7) (45 thru 49 = 75.5) (50 thru 54 = 61.1) (55 thru 59 = 44) 
(60 thru 64 = 29) (65 thru 69 = 20) (70 thru 74 = 9.4) (75 thru 79 = 6) (80 thru 84 = 2.2) (85 thru 89 = 4.1)
(90 thru 100 = 0) into ppi_prob.
variable labels ppi_prob 'ppi prob below $2.50 poverty'.
freq ppi_prob.
descriptives ppi_prob.

recode ppi_score (0 thru 55 = 1) (56 thru 100 = 0) into POVERTY1.

recode ppi_score (0 thru 4 = 100) (5 thru 9 = 97.2) (10 thru 14 = 83.7) (15 thru 19 = 87.6) (20 thru 24 = 81.1) (25 thru 29 = 70.7)
(30 thru 34 = 63.1) (35 thru 39 = 48.4) (40 thru 44 = 35.1) (45 thru 49 = 25.4) (50 thru 54 = 8.7) (55 thru 59 = 7.8) 
(60 thru 64 = 1) (65 thru 69 = 1.1) (70 thru 74 = 0.2) (75 thru 79 = 0) (80 thru 84 = 0.4) (85 thru 100 = 0) into ppi_prob_125.
descriptives ppi_prob_125.

*mean of ppi_prob_125 is 21.379399.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 39) ppi_cutoff_125 = 1.

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

