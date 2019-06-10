* Encoding: windows-1252.
*Nigeria PPI.
WEIGHT OFF.
recode dl11 (1=0) (2=6) (3=11) (4=14) (5=19) (6=30) (7=38) into hh_members.
recode dl12 (1=0) (2=7) (3=9) into school.
recode dl13 (1=0) (2=4) into floor.
recode dl14 (1=0) (2=3) (3=6) into roof.
recode dl15 (1=0) (2=4) (3=6) INTO water.
recode dl16 (1=0) (2=5) into toilet.
recode dl17 (1=0) (2=15) into tv.
recode dl18 (1=0) (2=7) into stove.
recode dl19 (1=0) (2=5) into mattress.
recode dl20 (1=0) (2=5) into radio.

compute ppi_score = (hh_members + school + floor + roof + water + toilet + tv + stove + mattress + radio).
freq ppi_score.

recode ppi_score (0 thru 62 = 1) (63 thru 100 = 0) into POVERTY1.

*Because Grameen does not provide a $2.50/day cutoff, the World Bank's 
* $2.50/day poverty rate of 89.6% was used to determine the cutoff.
*The closest ppi score was 59, which places 88.8% of the sample below the poverty cutoff.
*The closest ppi score was 62, which places 88.8% of the sample below the poverty cutoff (w2).

numeric PPI_PROB.
numeric POVERTY2.

*Label.
value labels POVERTY1 0 "Above poverty line of USD 2.5/day" 1"Below poverty line of USD 2.5/day".
value labels POVERTY2  1"Extreme poverty- living with less than USD 1.25/day"
0"Poor- living with USD1.25 -USD2.5/day" 
2"Above poverty line of USD2.5/day".

variable labels PPI_SCORE	"Poverty score"
PPI_PROB	"Poverty likelihood (below $2.5)"
POVERTY1	"Eco-status "
POVERTY2	"Poverty level".

