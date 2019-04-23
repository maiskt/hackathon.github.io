# IFG - Section 9



Informal Financial Groups
----

The following variables were coded in numeric order of which they were asked.

### IFG1

A derived binary variable, IFG1 represents the respondent's belonging to an informal financial group (IFG). The definition varies by sophistication of village-level services, but the common institutions that qualify include:

* Cooperatives
* Village-level saving and lending group
* Informal loan clubs or rotating savings and credit associations (ROSCAs, with [many regional names](http://www.gdrc.org/icm/rosca/rosca-names.html))

### IFG2
These questions ask the importance of each reason for _not_ being a part of an IFG. 
Responses lie on a Likert scale from 1, least important, to 5, most important for these four columns:

##### How important or unimportant is the following reason for your decision not to join informal societies or group saving schemes?

Variable | Reason
-------- | ---------------------------------------
IFG2_1   | Don't have any money left for savings
IFG2_2   | Don't know about them
IFG2_3   | Don't trust them/people steal your money
IFG2_4   | Don't need any service from them/their services are better served by other financial service providers

#### Nigeria

  For 2016, the respondent was to choose their _most_ important reason from ten options, including a custom "other" option. To adjust, the reason given (if one of the four we account for)was coded as a "5" and all others were 


### IFG3
This subsection asks the respondent, if a member of an IFG, what services they are provided.


| Do you receive the following services through any of the informal societies or group saving schemes that you personally belong to? |

Variable | Reason
-------- | -------------------------------------------------------------       
IFG3_1   | Welfare/clan group - we help each other out for things like funerals
IFG3_2   | We receive loan/credit
IFG3_3   | We collect money and give to each member a lump sum (pot) or gift in turn
IFG3_4   | We save and lend money to members and/or non-members to be repaid with interest
IFG3_5   | We periodically distribute all monies held by the group to its members
IFG3_6   | We save together and put the money in an account
IFG3_7   | We make other kinds of investments as a group (e.g., property, business)
IFG3_8   | We invest in the stock market as a group

### IFG4

#### Nigeria
Nigeria 2016 only asked which reason for informal group financing was most important
out of a list of 15, with an "other" option to describe.
If their response was one of the four, it was categorized as a "5" (most important)

### Appendix

```r
library(knitr)
knitr::opts_chunk$set(echo = TRUE)
library(haven)
library(readxl)
library(dplyr)
library(codebook)
ng16 <- read_sav("//ARCHIVE/Works_In_Progress/GATES FII PROJECT FOLDERS/GATES FII WAVES 4 - 6 2016-2019/Final Data/In house/FII Nigeria 2016 (in house).sav")
VL <- read_excel("Variable list_04182019.xlsx")
vl_table <- table(VL[,1])%>%data.frame
colnames(vl_table) <- c("Section", "Count")
cb_ng16 <- codebook_table(ng16)[,-c(10:19)]
w_ifi24 <- strsplit(cb_ng16$value_labels[[which(cb_ng16$name=="IFI24")]], "\n")
w_ifi24
# 2, 3, 6, 5 correspond to IFG2_1 through IFI2_4 respectively
ng16$IFG2_1 <- ifelse(ng16$IFI24 == 2, 5, 0)
ng16$IFG2_2 <- ifelse(ng16$IFI24 == 3, 5, 0)
ng16$IFG2_3 <- ifelse(ng16$IFI24 == 6, 5, 0)
ng16$IFG2_4 <- ifelse(ng16$IFI24 == 5, 5, 0)
#
grep("IFI20",colnames(ng16))
#
w_ifi1 <- cb_ng16$label[grep("IFI1_", cb_ng16$name)]
# 2, 3, 6, and 7 apply to IFG1
grep("IFI1_", cb_ng16$name)
ng16$IFG1 <- apply(ng16[,c(1040, 1044, 1054, 1056)], 1, function(x) ifelse(any(x == 1), 1, 0))
#
y <- names(attr(ng16$IFI21, "labels"))
#verifying the labels are correct
w_ifi20 <- grep("IFI20",cb_ng16$name)
ifi20 <- cb_ng16$label[w_ifi20]
ifi20 <- strsplit(ifi20, "\\? ")%>% unlist
ifi20 <- ifi20[c(2,4,6,8,10,12,14,16)]
# IFI20 is identical
colnames(ng16[,grep("IFI20",colnames(ng16))]) <- sprintf("IFG3_[%s]", seq(1:8))
# in its column.
ng16$IFG4_1 <- NA
ng16$IFG4_2 <- NA
ng16$IFG4_3 <- NA
ng16$IFG4_4 <- NA

for (i in 1:nrow(ng16)){
  z <- ng16$IFI21[i]
 if (is.na(z)) {ng16$IFG4_1[i] <- NA}
  else if (z == 1) {ng16$IFG4_1[i] <- 5}
  else if (z == 4) {ng16$IFG4_2[i] <- 5}
  else if (z == 3) {ng16$IFG4_3[i] <- 5}
  else if (z == 12) {ng16$IFG4_4[i] <- 5}
}
#this section puts all the code at the end of the document.
```