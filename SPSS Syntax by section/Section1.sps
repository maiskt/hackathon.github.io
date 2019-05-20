﻿* Encoding: UTF-8.
*Section 1.
cd "C:/Users/shueym/Documents".
*2018***.
DATASET ACTIVATE bng18.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind18.
RENAME VARIABLES AA9 = CLUSTER.
save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

*2017***.
DATASET ACTIVATE bng17.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind17.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ken17.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE nga17.
RENAME VARIABLES  AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE pak17.
RENAME VARIABLES  aa6 = CLUSTER.
save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE tza17.
RENAME VARIABLES  AA6 = CLUSTER.
save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE uga17.
RENAME VARIABLES AA7_2 = CLUSTER.
save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

*2016.
DATASET ACTIVATE bng16.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind16.
RENAME VARIABLES AA7 = CLUSTER.
save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ida16.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ken16.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE nga16.
RENAME VARIABLES AA3 = CLUSTER.
save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE pak16.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE tza16.
RENAME VARIABLES AA7 = CLUSTER.
save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE uga16.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

*2015***.
DATASET ACTIVATE bng15.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind15.
RENAME VARIABLES AA5 = CLUSTER.
RENAME VARIABLES ur = UR.
save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ida15.
RENAME VARIABLES AA5 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ken15.
RENAME VARIABLES AA6.2 = CLUSTER.
save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE nga15.
RENAME VARIABLES EA = CLUSTER.
save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE pak15.
RENAME VARIABLES aa5 = CLUSTER.
save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE tza15.
RENAME VARIABLES AA7 = CLUSTER.
save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE uga15.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

*2014***.
DATASET ACTIVATE bng14.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind14.
RENAME VARIABLES AA5 = CLUSTER.
save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ida14.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ken14.
RENAME VARIABLES AA8 = CLUSTER.
save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE nga14.
RENAME VARIABLES EA = CLUSTER.
save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE pak14.
RENAME VARIABLES aa6 = CLUSTER.
save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE tza14.
RENAME VARIABLES A3 = CLUSTER.
save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE uga14.
RENAME VARIABLES AA6 = CLUSTER.
save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

*2013***.
DATASET ACTIVATE bng13.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ind13.
RENAME VARIABLES AA7 = CLUSTER.
save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE ken13.
RENAME VARIABLES AA7  = CLUSTER.
RENAME VARIABLES AA8 = UR.
save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE nga13.
RENAME VARIABLES AA7 = UR.
save outfile = "data/nga13.sav"
/keep = SBJNUM COUNTRY YEAR UR
/drop = WEIGHT.

DATASET ACTIVATE pak13.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES AA7 = UR.
save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER .

DATASET ACTIVATE tza13.
RENAME VARIABLES AA4  = CLUSTER.
RENAME VARIABLES  AA7 = UR.
save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER.

DATASET ACTIVATE uga13.
RENAME VARIABLES AA6 = CLUSTER.
RENAME VARIABLES  AA7 = UR.
save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR UR CLUSTER.

dataset close all.