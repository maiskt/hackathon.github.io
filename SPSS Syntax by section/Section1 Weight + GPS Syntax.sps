* Encoding: UTF-8.
*Just Weight syntax.
*Section 1- Weight.
cd "C:/Users/shueym/Documents".
*2018***.
DATASET ACTIVATE bng18.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng18.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind18.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind18.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

*2017***.
DATASET ACTIVATE bng17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ken17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE nga17.
*TEMP IND or RAW?.
RENAME VARIABLES weight = WEIGHT.
save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE pak17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/pak17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE tza17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE uga17.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

*2016.
DATASET ACTIVATE bng16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ida16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ken16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE nga16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE pak16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE tza16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE uga16.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

*2015***.
DATASET ACTIVATE bng15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ida15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ken15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE nga15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE pak15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/pak15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE tza15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE uga15.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

*2014***.
DATASET ACTIVATE bng14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ida14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ida14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ken14.
RENAME VARIABLES Weight = WEIGHT.
RENAME VARIABLES Serial = SBJNUM.
save outfile = "data/ken14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE nga14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/nga14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE pak14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/pak14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE tza14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/tza14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE uga14.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/uga14.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

*2013***.
DATASET ACTIVATE bng13.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/bng13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ind13.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/ind13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE ken13.
RENAME VARIABLES Weight = WEIGHT.
RENAME VARIABLES SERIAL = SBJNUM.    
save outfile = "data/ken13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE nga13.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/nga13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE pak13.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/pak13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE tza13.
RENAME VARIABLES Weight = WEIGHT.
RENAME VARIABLES SERIAL = SBJNUM.    
save outfile = "data/tza13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

DATASET ACTIVATE uga13.
RENAME VARIABLES Weight = WEIGHT.
save outfile = "data/uga13.sav"
/keep= SBJNUM COUNTRY YEAR WEIGHT Latitude Longitude.

dataset close all.


