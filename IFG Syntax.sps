* Encoding: UTF-8.
*IFG Syntax*
** 2014-2017 for BELONG_INFML.
cd ""\\ARCHIVE\Sundries$\FII Anonymized Coordinates"".
get file 'Bangladesh 2018 Final w GPS 4-8.sav'.
dataset name bng18.
get file 'Bangladesh 2017 Final w GPS 4-8.sav'.
dataset name bng17.
get file 'Bangladesh 2016 Final w GPS 4-8.sav'.
dataset name bng16.
get file 'Bangladesh 2015 Final w GPS 4-8.sav'.
dataset name bng15.
get file 'Bangladesh 2014 Final w GPS 4-8.sav'.
dataset name bng14.
get file 'Bangladesh 2013 Final w GPS 4-8.sav'.
dataset name bng13.
*.
get file 'FII Kenya 2013 (public+GPS).sav'.
dataset name ken13.
get file 'FII Kenya 2014 (public+GPS).sav'.
dataset name ken14.
get file 'FII Kenya 2015 (public+GPS).sav'.
dataset name ken15.
get file 'FII Kenya 2016 (public+GPS).sav'.
dataset name ken16.
get file 'FII Kenya 2017 (public+GPS).sav'.
dataset name ken17.
*.
get file 'Tanzania 2017 Final w GPS 4-8.sav'.
dataset name tza17.
get file 'Tanzania 2016 Final w GPS 4-8.sav'.
dataset name tza16.
get file 'Tanzania 2015 Final w GPS 4-8.sav'.
dataset name tza15.
get file 'Tanzania 2014 Final w GPS 4-8.sav'.
dataset name tza14.
*.
*Bangladesh***.
*2013.
*2014.
*2015.

compute BELONG_INFML.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.
dataset activate bng18.

*India***.
*2013.
*2014.
*2015.
compute BELONG_INFML.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2018.


*Indonesia***.
*2014.
*2015.
compute BELONG_INFML.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Kenya***.
* 2013 N/A.
* 2014.
*2015.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Nigeria***.
*2013.
*2014.
*2015.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Pakistan***.
*2013.
*2014.
*2015.
*2016.
*2017.

*Tanzania***.
*2013.
*2014.
*2015.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Uganda***.
*2013.
*2014.
*2015.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
compute BELONG_INFML.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
