* Encoding: UTF-8.
***Creating PPI.
weight off.

recode dl14 (1=0) (2=5) (3=10) (4=11) (5=17) (6=19)(7=25)(8=32) into hh_member.
recode dl15a (1=0) (2=4) (3=5) (4=6) (5=7) into room.
recode dl16b (1=0) (2=4) into roof.
recode dl17 (4,8,9=0) (6,7=3) (1,5=6) (2,3=15) into toilet.
compute stove=0.
if (DL15D_7=1 or DL15D_8=1) stove=3.
recode dl19 (1=0) (2=6) (3=8)(4=10) into mattress.
recode DL15D_11 (1=8) (2=0) into tv.
recode dl21 (1=0) (2=2) (3=5)(4=7) into phone.
compute car=0.
if (DL15D_13=1) car=3.
if (DL15D_14=1 or DL15D_15=1) car=11.
recode dl23 (1=0) (2,3=3) into agri.

compute ppi_score = sum(hh_member, room, roof, toilet, stove, mattress, tv, phone, car, agri).
freq ppi_score.

recode ppi_score (0 thru 19 = 100) (20 thru 24 = 97.5) (25 thru 29 = 96.4) (30 thru 34 =92.5)
(35 thru 39 = 87.5) (40 thru 44 = 78.5) (45 thru 49 = 75.5) (50 thru 54 = 63) (55 thru 59 = 49.2) (60 thru 64 = 44.9)
(65 thru 69 = 32.1) (70 thru 74 = 19.1) (75 thru 79 = 7.1) (80 thru 84 = 3.5) (85 thru 100 = 0) into ppi_prob.
freq ppi_prob.
DESCRIPTIVES ppi_prob.

*mean of ppi_prob is 50.8162.
compute POVERTY1 = 0.
if (ppi_score <= 57) POVERTY1 = 1.

**1.25.
recode ppi_score (0 thru 9 = 100) (10 thru 14 = 81) (15 thru 19 = 77.7) (20 thru 24 = 74.1) (25 thru 29 = 63.1) (30 thru 34 =48.8)
(35 thru 39 = 35.8) (40 thru 44 = 25.8) (45 thru 49 = 16.8) (50 thru 54 = 11.1) (55 thru 59 = 4.6) (60 thru 64 = 2.9)
(65 thru 74 = 2.5) (75 thru 100 = 0) into ppi_prob_125.
DESCRIPTIVES ppi_prob_125.

*mean of ppi_prob is 15.7748.
compute ppi_cutoff_125 = 0. 
if (ppi_score <= 36) ppi_cutoff_125 = 1.

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







