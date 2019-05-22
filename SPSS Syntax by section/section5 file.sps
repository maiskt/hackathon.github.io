* Encoding: windows-1252.
*get files.
cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Bangladesh 2013-2018'.
get file 'FII Bangladesh 2018 (public+ANONGPS).sav'.
DATASET NAME b18.
get file 'FII Bangladesh 2017 (public+ANONGPS).sav'.
DATASET NAME b17.
get file 'FII Bangladesh 2016 (public+ANONGPS).sav'.
DATASET NAME b16.
get file 'FII Bangladesh 2015 (public+ANONGPS).sav'.
DATASET NAME b15.
get file 'FII Bangladesh 2014 (public+ANONGPS).sav'.
DATASET NAME b14.
get file 'FII Bangladesh 2013 (public+ANONGPS).sav'.
DATASET NAME b13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\India 2013-2018'.
get file 'FII India 2018 (public+ANONGPS).sav'.
DATASET NAME i18.
get file 'FII India 2017 (public+ANONGPS).sav'.
DATASET NAME i17.
get file 'FII India 2016 (public+ANONGPS).sav'.
DATASET NAME i16.
get file 'FII India 2015 (public+ANONGPS).sav'.
DATASET NAME i15.
get file 'FII India 2014 (public+ANONGPS).sav'.
DATASET NAME i14.
get file 'FII India 2013 (public+ANONGPS).sav'.
DATASET NAME i13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Indonesia 2014-2016'.
get file 'FII Indonesia 2016 (public+ANONGPS).sav'.
DATASET NAME ido16.
get file 'FII Indonesia 2015 (public+ANONGPS).sav'.
DATASET NAME ido15.
get file 'FII Indonesia 2014 (public+ANONGPS).sav'.
DATASET NAME ido14.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Kenya 2013-2017'.
get file 'FII Kenya 2017 (public+ANONGPS).sav'.
DATASET NAME k17.
get file 'FII Kenya 2016 (public+ANONGPS).sav'.
DATASET NAME k16.
get file 'FII Kenya 2015 (public+ANONGPS).sav'.
DATASET NAME k15.
get file 'FII Kenya 2014 (public+ANONGPS).sav'.
DATASET NAME k14.
get file 'FII Kenya 2013 (public+ANONGPS).sav'.
DATASET NAME k13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Nigeria 2013-2017'.
get file 'FII Nigeria 2017 (public+ANONGPS).sav'.
DATASET NAME n17.
get file 'FII Nigeria 2016 (public+ANONGPS).sav'.
DATASET NAME n16.
get file 'FII Nigeria 2015 (public+ANONGPS).sav'.
DATASET NAME n15.
get file 'FII Nigeria 2014 (public+ANONGPS).sav'.
DATASET NAME n14.
get file 'FII Nigeria 2013 (public+sbjnum).sav'.
DATASET NAME n13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Pakistan 2013-2017'.
get file 'FII Pakistan 2017 (public+ANONGPS).sav'.
DATASET NAME p17.
get file 'FII Pakistan 2016 (public+ANONGPS).sav'.
DATASET NAME p16.
get file 'FII Pakistan 2015 (public+ANONGPS).sav'.
DATASET NAME p15.
get file 'FII Pakistan 2014 (public+ANONGPS).sav'.
DATASET NAME p14.
get file 'FII Pakistan 2013 (public+ANONGPS).sav'.
DATASET NAME p13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Tanzania 2013-2017'.
get file 'FII Tanzania 2017 (public+ANONGPS).sav'.
DATASET NAME t17.
get file 'FII Tanzania 2016 (public+ANONGPS).sav'.
DATASET NAME t16.
get file 'FII Tanzania 2015 (public+ANONGPS).sav'.
DATASET NAME t15.
get file 'FII Tanzania 2014 (public+ANONGPS).sav'.
DATASET NAME t14.
get file 'FII Tanzania 2013 (public+sbjnum).sav'.
DATASET NAME t13.

cd 'Z:\Ask permission from Xiaoyan\FII 2019\anonymous GPS data\Uganda 2013-2017'.
get file 'FII Uganda 2017 (public+ANONGPS).sav'.
DATASET NAME u17.
get file 'FII Uganda 2016 (public+ANONGPS).sav'.
DATASET NAME u16.
get file 'FII Uganda 2015 (public+ANONGPS).sav'.
DATASET NAME u15.
get file 'FII Uganda 2014 (public+ANONGPS).sav'.
DATASET NAME u14.
get file 'FII Uganda 2013 (public+ANONGPS).sav'.
DATASET NAME u13.

*Label.
variable labels SBJNUM"Subject ID"
COUNTRY "COUNTRY"
YEAR "YEAR"
ACCESS_FINANCIAL"Ever used full service formal financial services"
FI"Financially included"
ACTIVE_FINANCIAL"Used own full service registered account in past 90 days"
ACCESS_FINANCIAL_ALL"Ever used formal financial services"
ACTIVE_FINANCIAL_ADV"Used own full service accounts in past 90 days and have used at least one advanced financial service "
ACTIVE30_FINANCIAL_ADV"Used own full service accounts in past 30 days and have used at least one advanced financial service"
ACCESS_DFS_PAYMENT_TRANSFER"Ever used bank or mobile money for digital payment or transfering"
ACCESS_DFS"Ever used a digital stored value account"
REGISTERED_DFS"Digitally included"
ACTIVE_DFS"Used own digital stored-value accounts in past 90 days"
ACTIVE_DFS_ADV"Used own digital stored-value accounts in past 90 days and have used at least one advanced financial service"
FINANCIAL_STAGE"Customer journey segmentation".

value labels ACCESS_FINANCIAL 1 "Yes" 0 "No".
value labels FI 1 "Financial included" 0 "Financial excluded".
value labels ACTIVE_FINANCIAL 1"Yes" 0"No".
Value labels ACCESS_FINANCIAL_ALL 1 "Yes" 0 "No".
Value labels ACTIVE_FINANCIAL_ADV 1 "Yes" 0 "No".
Value labels ACTIVE30_FINANCIAL_ADV 1 "Yes" 0 "No".
value labels ACCESS_DFS 1 "Yes" 0 "No".
value labels ACCESS_DFS_PAYMENT_TRANSFER 1"Yes" 0"No".
Value labels REGISTERED_DFS 1 "Yes" 0 "No".
Value labels ACTIVE_DFS 1 "Yes" 0 "No".
Value labels ACTIVE_DFS_ADV 1 "Yes" 0 "No".
Value labels FINANCIAL_STAGE 0"Nonuser" 1"Nonregistered User" 2"Inactive registered user" 3"Basic only active user" 4"Advanced active user".


cd 'Z:\Ask permission from Xiaoyan\FII 2019\Datathon\Section 5 data'.
save outfile="Uganda 2013 datathon all.sav".
save outfile='Uganda 2013 datathon s5.sav'
/keep=SBJNUM
COUNTRY
YEAR
ACCESS_FINANCIAL
FI
ACTIVE_FINANCIAL
ACCESS_FINANCIAL_ALL
ACTIVE_FINANCIAL_ADV
ACTIVE30_FINANCIAL_ADV
ACCESS_DFS_PAYMENT_TRANSFER
ACCESS_DFS
REGISTERED_DFS
ACTIVE_DFS
ACTIVE_DFS_ADV
FINANCIAL_STAGE.
