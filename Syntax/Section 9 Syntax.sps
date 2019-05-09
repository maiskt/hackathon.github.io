* Encoding: UTF-8.
*IFG Syntax*
** 2014-2017 for BELONG_INFML, IFI18/19 only. 
*.
*Bangladesh***.
*2013.
*2014.
*2015.
*2016.
dataset activate bng16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.
*2017.
dataset activate bng17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.
*2018.

*India***.
*2013.
*2014.
*2015.
dataset activate ind15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.
*2016.
dataset activate ind16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
dataset activate ind17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2018.

*Indonesia***.
*2014.
*2015.
dataset activate ida15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.
*2016.
dataset activate ida16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Kenya***.
*2013 N/A.
*2014.
*2015.
dataset activate ken15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
dataset activate ken16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
dataset activate ken17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Nigeria***.
*2013.
*2014.
*2015.
dataset activate nga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
dataset activate nga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
dataset activate nga17.
compute BELONG_INFML = 0.
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
dataset activate tza15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
dataset activate tza16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
dataset activate tza17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

*Uganda***.
*2013.
*2014.
*2015.
dataset activate uga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2016.
dataset activate uga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
*2017.
dataset activate uga17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
