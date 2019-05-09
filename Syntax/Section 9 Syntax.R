library(dplyr)
library(haven)
library(progress)
loaddatasets <- function(){lapply(savlist$path, function(x) {
    print(which(savlist$path == x))
    op <-  data.frame(read_sav(x), stringsAsFactors = F)
    op$COUNTRY <-  savlist$country[which(savlist$path == x)]
    op$YEAR  <-  savlist$year[which(savlist$path == x)]
  op})
}


dsets <- loaddatasets()
# alter the variables
#BNG: 1-6
#IND: 7-12
#IDA: 13-15
#KEN: 16-20
#NGA: 21-25
#PAK: 26:30
#TZA: 31:35
#UGA: 36-40
for (i in 1:40){
  if (i %in% c(4,5,
               10,11,
               15,
               18,19,20,
               23,24,25,
               33,34,35,
               38,39,40)) {dsets[[i]]$BELONG_INFML <- ifelse(dsets[[i]]$IFI18 > 0 & dsets[[i]]$IFI18 != 99, 1, 0)}
  else if (i %in% c(9, 14)) {dsets[[i]]$BELONG_INFML <- ifelse(dsets[[i]]$IFI18 > 0 & dsets[[i]]$IFI19 != 99, 1, 0)}
  else {dsets[[i]]$BELONG_INFML <- NA}
}
