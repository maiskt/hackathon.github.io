library(dplyr)
library(haven)
library(progress)
loaddatasets <- function(){z <- lapply(savlist$path, function(x) {
    print(which(savlist$path == x))
    op <-  data.frame(read_sav(x), stringsAsFactors = F)
    op$COUNTRY <-  savlist$country[which(savlist$path == x)]
    op$YEAR  <-  savlist$year[which(savlist$path == x)]
  op})
names(z) <- c(sapply(13:18, function(x) paste0("bng", x)),
                  sapply(13:18, function(x) paste0("ind", x)),
                  sapply(14:16, function(x) paste0("ida", x)),
                  sapply(13:17, function(x) paste0("ken", x)),
                  sapply(13:17, function(x) paste0("nga", x)),
                  sapply(13:17, function(x) paste0("pak", x)),
                  sapply(13:17, function(x) paste0("tza", x)),
                  sapply(13:17, function(x) paste0("uga", x)))
z
}

dsets <- loaddatasets()

#not used:
for (i in names(dsets)){
  if (i %in% c("bng16", "bng17",
               "ind16", "ind17",
               "ida16",
               "ken15", "ken16", "ken17",
               "nga15", "nga16", "nga17",
               #no pakistan
               "uga15", "uga16", "uga17",
               "tza15", "tza16", "tza17")) {dsets[[i]]$BELONG_INFML <- ifelse(dsets[[i]]$IFI18 > 0 & dsets[[i]]$IFI18 != 99, 1, 0)}
  else if (i %in% c("ind15", "ida15")) {dsets[[i]]$BELONG_INFML <- ifelse(dsets[[i]]$IFI18 > 0 & dsets[[i]]$IFI19 != 99, 1, 0)}
  else {dsets[[i]]$BELONG_INFML <- NA}
}
#used:
sets9 <- bind_rows(lapply(list.files("data"), function(x) {
  read_sav(paste0("data/", x))
}))[,1:4]
write_sav(sets9, "GitHub/Codebook/Dataset/Section 9.sav")
bind <- bind_rows(dsets_9)[,1:3]
       