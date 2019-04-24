* Encoding: windows-1252.
******Datathon Labels******.
variable labels Year "Year"
Country "Country"
Serial "Serial.Questionnaire ID"
Latitude "Anonymous Household GPS location Latitude"
Longitude "Anonymous Household GPS location Longitude"
Weight "Normalized Weight"
UR "Residence Type"
Cluster"Cluster Number"
ppi_cutoff "Eco Status"
Poverty "Poverty level"
access_phone "Have access to a mobile phone"
own_phone "Personally own a mobile phone"
FI "Have full service formal financial account"
active_financial "Used own full service formal financial account in past 90 days"
access_financial_all "Ever used formal financial services"
access_financial "Ever used full service formal financial services"
access_dfs "Ever used a digital stored value account"
active_dfs "Actively use digital stored-value accounts"
active_dfs_adv "Actively use digital stored-value accounts and have used at least one advanced financial service (beyond basic wallet & P2P)"
access_mm "Access_mm:Adults with access to an MM account"
active_mm "Active_mm: use registered mm accounts within past 90 days"
age"Respondent age"
age_group"age groups"
Literacy"Literacy"
Numeracy"Numeracy"
edu"Education"
financial_stage"Customer journey segmentation"
access_bank_full"access_bank_full: Adults with access to a full service bank"
registered_bank_full"registered_bank_full: Adults hold a full service bank account"
active_bank_full"active_bank_full: use registered full service bank accounts within past 90 days"
aware_mm_provider"Aware_mm_provider: Adults are aware of at least one of the mobile money providers"
registered_mm"Registered_mm: Adults hold a m-money account"
nonregistered_mm"Nonregistered_mm: nonregistered users of mm service"
access_nbfi"have ever used any non-bank financial service"
registered_nbfi"Have an account from any non-bank financial service"
active_nbfi"Use any non-bank financial service accounts within past 90 days"
access_mfi"Adults with access to full service MFI"
registered_mfi"Adults hold full service MFI accounts"
active_mfi"Used registered full service MFI accounts within past 90 days"
access_coop"Adults with access to full service Cooperative"
registered_coop"Adults hold full service Cooperative accounts"
active_coop"Used registered full service Cooperative accounts within past 90 days"
access_post"Adults with access to full service Post Office Bank"
registered_post"Adults hold full service Post Office Bank accounts"
active_post"Used registered full service Post Office Bank accounts within past 90 days"
access_sacco"Have ever used SACCO financial service"
registered_sacco"Have an account from SACCO financial service"
active_sacco"Use SACCO financial service accounts within past 90 days"
access_bpr"Have ever used Rural Credit Bank (BPR) financial service"
registered_bpr"Have an account from BPR financial service"
active_bpr"Use BPR financial service accounts within past 90 days"
access_pawnshop"Have ever used Pawnshop financial service"
registered_pawnshop"Have an account from Pawnshop financial service"
active_pawnshop"Use Pawnshop financial service accounts within past 90 days"
access_payment"Adults with access to full service payments bank"
registered_payment"Adults hold full service payments bank accounts"
active_payment"Used registered full service  payments bank accounts within past 90 days"
access_group"Adults with access to full service savings group"
registered_group"Adults hold full service savings group accounts"
active_group"Used registered full service savings group accounts within past 90 days"
age_small "Respondent age in three groups"
young_old "Adult who is younger than 35 or older"
dg2 "Respondent gender"
.

value labels UR 1"Urban" 2"Rural".
value labels ppi_cutoff 1"Below poverty line" 0"Above poverty line".
value labels poverty 1"Extreme poor <$1.25" 0"Poor $1.25-$2.50"2"Above Poverty >2.50".

value labels age_small 1"Young (15-24)" 2"Middle (25-44)" 3"Older (45+)".

value labels access_mfi	registered_mfi	active_mfi	access_coop	registered_coop	active_coop	access_post	registered_post	active_post	access_sacco	registered_sacco	active_sacco	
access_bpr	registered_bpr	active_bpr	access_pawnshop	registered_pawnshop	active_pawnshop	access_payment	registered_payment	active_payment	
access_group	registered_group	active_group 1"Yes" 0"No".

value labels active_dfs_adv 1"Yes" 0"No".
value labels access_mfi	registered_mfi	active_mfi	access_coop	registered_coop	active_coop	access_post	registered_post	active_post	access_sacco	registered_sacco	active_sacco	
access_bpr	registered_bpr	active_bpr	access_pawnshop	registered_pawnshop	active_pawnshop	access_payment	registered_payment	active_payment	
access_group	registered_group	active_group 1"Yes" 0"No".
