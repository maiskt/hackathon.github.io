* Encoding: windows-1252.
**Creating PPI.
WEIGHT OFF.
recode dl11 (1 = 27) (2 = 14) (3 = 9) (4,5=6) (6 thru highest =0) into hh_members.
recode dl12 (1 = 0) (2 = 2) (3=4) (4=5) into children_schl.
recode dl13 (1= 0) (2 = 2) (3=6) (4=8) (5=19) into female_schl.
recode dl14 (1=0) (2=5) into roof_mat.
recode dl15 (1=0) (2=2) into wall_mat.
recode dl16 (1=0) (2=11) (3=17) into light_source.
recode dl17 (1=0) (2=4) into toilet.
recode dl18 (1=7) (2=0) into electronics.
recode dl19 (1=5) (2=0) into clothes.
recode dl20 (1=9) (2=0) into shoes.

compute ppi_score = (hh_members + children_schl + female_schl + roof_mat + wall_mat 
+ light_source + toilet + electronics + clothes + shoes).
freq ppi_score.

recode ppi_score (0 thru 14 = 100) (15 thru 19 = 98.8) (20 thru 24 = 100) (25 thru 29 = 95.5) (30 thru 34 = 94.8) (35 thru 39 = 93) 
(40 thru 44 = 86.5) (45 thru 49 = 83.7) (50 thru 54 = 78.1) (55 thru 59 = 61.5) (60 thru 64 = 47.4) 
(65 thru 69 = 32.1) (70 thru 74 = 14.3) (75 thru 79 = 9.3) (80 thru 84 = 5.7) (85 thru 100 = 0) into ppi_prob.
freq ppi_prob.

***** The rest of the computations rely on the distribution of the data.  
*This means if the data changse, these computations need to change.
* We will need to re-calcutlate these parts once the data is FINAL.

descriptives ppi_prob.
*70% fall below $2.50/day poverty line(w1).
*71% fall below $2.50/day poverty line(w2).
freq ppi_score.
*Everyone with a ppi score of 57 or lower is below the poverty line.

compute POVERTY1 = 0.
if (ppi_score <= 57) POVERTY1 = 1.

*Need double check.
recode ppi_score (0 thru 14 = 100) (5 thru 9 =92.1) (10 thru 14 =100) (15 thru 19 = 92.3) (20 thru 24 = 82.6) (25 thru 29 = 67) (30 thru 34 = 61.8) (35 thru 39 = 55.3) 
(40 thru 44 = 38) (45 thru 49 = 31.3) (50 thru 54 = 24.6) (55 thru 59 = 11.3) (60 thru 64 = 6.2) 
(65 thru 69 = 2.5) (70 thru 74 = 2.8) (75 thru 100 = 0) into ppi_prob_125.
des ppi_prob_125.

*mean of ppi_prob_125 is 30.929100.
compute ppi_cutoff_125 = 0.
if (ppi_score <= 41) ppi_cutoff_125 = 1.

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
