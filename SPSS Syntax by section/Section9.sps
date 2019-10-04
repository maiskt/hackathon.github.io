* Encoding: UTF-8.
*IFG Syntax*
** 2014-2017 for BELONG_INFML, IFI18/19 only. 
variable labels
BELONG_INFML	"Personally belong to informal societies or group saving schemes"
R_INFML	"Most important reason to use informal societies or group saving schemes"
R_NOINFML	"Main reason do not belong to any informal societies or group saving schemes" 
INFML_SERVICE1"Services received in the informal societies or Welfare/clan group belongs to: help each other out for things like funerals"
INFML_SERVICE2"Services received in the informal societies or Welfare/clan group belongs to: receive loan/credit "
INFML_SERVICE3"Services received in the informal societies or Welfare/clan group belongs to: collect money and give to each member a lump sum (pot) or gift in turn"
INFML_SERVICE4"Services received in the informal societies or Welfare/clan group belongs to: save and lend money to members and/or non-members to be repaid with interest"
INFML_SERVICE5"Services received in the informal societies or Welfare/clan group belongs to: periodically distribute all monies held by the group to its members"
INFML_SERVICE6"Services received in the informal societies or Welfare/clan group belongs to: save together and put the money in an account"
INFML_SERVICE7"Services received in the informal societies or Welfare/clan group belongs to: make other kinds of investments as a group (e.g., property, business)"
INFML_SERVICE8"Services received in the informal societies or Welfare/clan group belongs to: invest in the stock market as a group".

value labels BELONG_INFML 1"Yes" 0"No".
value labels R_INFML 1"Yes" 0"No".
value labels R_NOINFML 1"Yes" 0"No".
value labels INFML_SERVICE1 1"Yes" 0"No".
value labels INFML_SERVICE2 1"Yes" 0"No".
value labels INFML_SERVICE3 1"Yes" 0"No".
value labels INFML_SERVICE4 1"Yes" 0"No".
value labels INFML_SERVICE5 1"Yes" 0"No".
value labels INFML_SERVICE6 1"Yes" 0"No".
value labels INFML_SERVICE7 1"Yes" 0"No".
value labels INFML_SERVICE8 1"Yes" 0"No".

value labels R_INFML 1"To have a lump sum to use when it is your turn"
2"To keep money safe"
3"To have access to loans or credit"
4"To help when there is a death in the family or any other emergency"
5"It is compulsory in your clan/village"
6"To socialize/meet your friends"
7"To exchange ideas about business"
8"To invest in bigger things by pooling money/resources together"
9"The group buys you household goods or farm goods when it’s your turn"
10"To increase income by lending"
11"You cannot get money or help anywhere else"
12"You can get money easily when you need it"
13"You get motivated/get disciplined to save from saving with others"
14"You can’t save at home – money gets used on other things"
15"It encourages you to work harder"
96"Other(specify)"
-4"Not belong to informal group".

value labels R_NOINFML 1"You have an account in a bank or mobile money account/ other formal institution"
2"You don’t have any money left for savings"
3"You don’t know about them"
4"You don’t need any service from them"
5"You don’t trust them/People steal your money"
6"Groups require too much time in meetings"
7"Had previous bad experience"
8"You have just dissolved your membership in one and are still debating joining another one"
9"You have not found a group that suits your needs"
96"Others (Specify)"
-4"Belong to informal group".

exe.

cd "C:/Users/shueym/Documents".
*2018.
dataset activate bng18.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ind18.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.


*2017***.
dataset activate bng17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/bng17.sav"
/KEEP= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ind17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ind17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ken17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ken17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate nga17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/nga17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

*2017!!.
dataset activate pak17.

compute BELONG_INFML = 0.
if IFI18 > 1 and IFI18 ne 99 BELONG_INFML = 1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
NUMERIC INFML_SERVICE2.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
NUMERIC INFML_SERVICE4.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE6.
NUMERIC INFML_SERVICE7.
NUMERIC INFML_SERVICE8.

save outfile = "data/pak17.sav"
/keep=  SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate tza17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/tza17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML  R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate uga17.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

NUMERIC R_INFML.
NUMERIC R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/uga17.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML  R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

*2016***.
dataset activate bng16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML = 1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3=3)(4=4)(5,10=5)(6=6)(7=7)(8=8)(9=9)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3=3)(4=4)(5,10=5)(6=6)(7=7)(8=8)(9=9)(sysmis=-4)(else=copy) into R_NOINFML.

NUMERIC INFML_SERVICE1.
 * RENAME VARIABLES IFI20_1 = INFML_SERVICE_2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE_3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE_4.
recode IFI20_1 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
NUMERIC INFML_SERVICE5.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE_6.
 * RENAME VARIABLES IFI20_5 = INFML_SERVICE_7.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE7.
NUMERIC INFML_SERVICE8.

save outfile = "data/bng16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ind16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ind16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ida16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * compute R_NOINFML = IFI24.
recode IFI24(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ida16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate ken16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * compute R_NOINFML = IFI24.
recode IFI24(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ken16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate nga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * compute R_NOINFML = IFI24.
recode IFI24(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/nga16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

*!.
dataset activate pak16.

compute BELONG_INFML = 0.
if IFI18 > 1 and IFI18 ne 99 BELONG_INFML = 1.

 * recode IFI21 (1=1)(2=2)(3=4)(4=5)(5=6)(6=8)(7=9)(8=11)(9=12)(10=13)(11=14)(12=15)(else=copy) into R_INFML.
recode IFI21 (1=1)(2=2)(3=4)(4=5)(5=6)(6=8)(7=9)(8=11)(9=12)(10=13)(11=14)(12=15)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (99=sysmis)(else=copy) into R_NOINFML.
recode IFI24 (99=sysmis)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
numeric  INFML_SERVICE2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE4. 
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
numeric  INFML_SERVICE5.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE6.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE6.
numeric  INFML_SERVICE7.
numeric  INFML_SERVICE8.

save outfile = "data/pak16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate tza16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.
 
 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * compute R_NOINFML = IFI24.
recode IFI24(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/tza16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate uga16.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 99 BELONG_INFML=1.

 * compute R_INFML = IFI21.
recode IFI21(sysmis=-4)(else=copy) into R_INFML.

 * compute R_NOINFML = IFI24.
recode IFI24(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE2.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_8 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/uga16.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML 
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


*2015***.
dataset activate bng15.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
NUMERIC  INFML_SERVICE1.
NUMERIC  INFML_SERVICE2.
NUMERIC  INFML_SERVICE3.
NUMERIC  INFML_SERVICE4.
NUMERIC  INFML_SERVICE5.
NUMERIC  INFML_SERVICE6.
NUMERIC  INFML_SERVICE7.
NUMERIC  INFML_SERVICE8.


dataset activate ind15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.

 * recode IFI22 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI22 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

NUMERIC  INFML_SERVICE1.
NUMERIC  INFML_SERVICE2.
NUMERIC  INFML_SERVICE3.
NUMERIC  INFML_SERVICE4.
NUMERIC  INFML_SERVICE5.
NUMERIC  INFML_SERVICE6.
NUMERIC  INFML_SERVICE7.
NUMERIC  INFML_SERVICE8.

save outfile = "data/ind15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ida15.
compute BELONG_INFML = 0.
if IFI19 > 0 and IFI19 ne 99 BELONG_INFML=1.

 * recode IFI22 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI22 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

NUMERIC  INFML_SERVICE1.
NUMERIC  INFML_SERVICE2.
NUMERIC  INFML_SERVICE3.
NUMERIC  INFML_SERVICE4.
NUMERIC  INFML_SERVICE5.
NUMERIC  INFML_SERVICE6.
NUMERIC  INFML_SERVICE7.
NUMERIC  INFML_SERVICE8.

save outfile = "data/ida15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate ken15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 999 BELONG_INFML=1.

 * recode IFI21 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI21 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
NUMERIC INFML_SERVICE2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE4.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE5.
 * RENAME VARIABLES IFI20_5 = INFML_SERVICE6.
 * RENAME VARIABLES IFI20_6 = INFML_SERVICE7.
 * RENAME VARIABLES IFI20_7 = INFML_SERVICE8.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/ken15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate nga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 999 BELONG_INFML=1.

 * recode IFI21 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI21 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
NUMERIC INFML_SERVICE2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE4.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE5.
 * RENAME VARIABLES IFI20_5 = INFML_SERVICE6.
 * RENAME VARIABLES IFI20_6 = INFML_SERVICE7.
 * RENAME VARIABLES IFI20_7 = INFML_SERVICE8.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/nga15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate pak15.

compute BELONG_INFML = 0.
if ifi19 > 1 and ifi19 ne 99 BELONG_INFML = 1.

 * recode IFI22 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI22 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(99=sysmis) into R_NOINFML.
recode IFI25 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(99=sysmis) into R_NOINFML.

NUMERIC  INFML_SERVICE1.
NUMERIC  INFML_SERVICE2.
NUMERIC  INFML_SERVICE3.
NUMERIC  INFML_SERVICE4.
NUMERIC  INFML_SERVICE5.
NUMERIC  INFML_SERVICE6.
NUMERIC  INFML_SERVICE7.
NUMERIC  INFML_SERVICE8.


save outfile = "data/pak15.sav"
/keep = SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

dataset activate tza15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 999 BELONG_INFML=1.

 * recode IFI21 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI21 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
NUMERIC  INFML_SERVICE2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE4.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE5.
 * RENAME VARIABLES IFI20_5 = INFML_SERVICE6.
 * RENAME VARIABLES IFI20_6 = INFML_SERVICE7.
 * RENAME VARIABLES IFI20_7 = INFML_SERVICE8.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/tza15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.


dataset activate uga15.
compute BELONG_INFML = 0.
if IFI18 > 0 and IFI18 ne 999 BELONG_INFML=1.

 * recode IFI21 (3,4=4)(16=96)(else=copy) into R_INFML.
recode IFI21 (3,4=4)(16=96)(sysmis=-4)(else=copy) into R_INFML.

 * recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(else=copy) into R_NOINFML.
recode IFI24 (1=1)(2=2)(3,6=5)(4=3)(5=4)(7=6)(8=7)(9=8)(10=9)(11=96)(sysmis=-4)(else=copy) into R_NOINFML.

recode IFI20_1 (1=1)(else=0) into INFML_SERVICE1.
numeric INFML_SERVICE2.
 * RENAME VARIABLES IFI20_2 = INFML_SERVICE3.
 * RENAME VARIABLES IFI20_3 = INFML_SERVICE4.
 * RENAME VARIABLES IFI20_4 = INFML_SERVICE5.
 * RENAME VARIABLES IFI20_5 = INFML_SERVICE6.
 * RENAME VARIABLES IFI20_6 = INFML_SERVICE7.
 * RENAME VARIABLES IFI20_7 = INFML_SERVICE8.
recode IFI20_2 (1=1)(else=0) into INFML_SERVICE3.
recode IFI20_3 (1=1)(else=0) into INFML_SERVICE4.
recode IFI20_4 (1=1)(else=0) into INFML_SERVICE5.
recode IFI20_5 (1=1)(else=0) into INFML_SERVICE6.
recode IFI20_6 (1=1)(else=0) into INFML_SERVICE7.
recode IFI20_7 (1=1)(else=0) into INFML_SERVICE8.

save outfile = "data/uga15.sav"
/keep= SBJNUM COUNTRY YEAR BELONG_INFML R_INFML R_NOINFML
INFML_SERVICE1 INFML_SERVICE2 INFML_SERVICE3 INFML_SERVICE4 
INFML_SERVICE5 INFML_SERVICE6 INFML_SERVICE7 INFML_SERVICE8.

*2014.
dataset activate bng14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ind14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ida14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ken14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate nga14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate pak14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate tza14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate uga14.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

*2013.
dataset activate bng13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ind13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate ken13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate nga13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate pak13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate tza13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset activate uga13.

numeric BELONG_INFML.
numeric R_INFML.
numeric R_NOINFML.
numeric INFML_SERVICE1.
numeric INFML_SERVICE2.
numeric INFML_SERVICE3.
numeric INFML_SERVICE4.
numeric INFML_SERVICE5.
numeric INFML_SERVICE6.
numeric INFML_SERVICE7.
numeric INFML_SERVICE8.

dataset close ALL.



