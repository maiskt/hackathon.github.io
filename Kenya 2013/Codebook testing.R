library(zoo)
library(readxl)
library(dplyr)
library(labelled)

Names_bg18 <- read_excel("C:/Users/shueym/Documents/2018 BNG Codebook.xlsx", sheet = "Variable Information")
Values_bg18 <- read_excel("C:/Users/shueym/Documents/2018 BNG Codebook.xlsx", sheet = "Variable Values")
ke13 <- read_sav("//ARCHIVE/Sundries$/2016 and before/FII Kenya/Year 2014/Final_Kenya-FII WAVE 1-merge.sav")
codebooktest <- codebook_table(ke13)
Names_ke13 <- read_excel("C:/Users/shueym/Documents/2013 KEN Codebook.xlsx", sheet = "Variable Names")
Values_ke13 <- read_excel("C:/Users/shueym/Documents/2013 KEN Codebook.xlsx", sheet = "Variable Values")

Values_bg18$Value <- na.locf(Values_bg18$Value)
Values_ke13$Value <- na.locf(Values_ke13$Value)
Names_ke13$Values <- sapply(Names_ke13$Variable, function(x) length(which(Values_ke13$Value==x)))
Names_ke13$Category <- str_extract(Names_ke13$Variable, "^([[:alpha:]])*")
Names_bg18$Values <- sapply(Names_bg18$Variable, function(x) length(which(Values_bg18$Value==x)))

Cats_ke13 <- table(Names_ke13$Category)%>%data.frame()
colnames(Cats_ke13) <- c("Category", "Freq")

Names_bg18$Category <- str_extract(Names_bg18$Variable, "^([[:alpha:]])*")

Cats_bg18 <- table(Names_bg18$Category)%>%data.frame()
colnames(Cats_bg18) <- c("Category", "Freq")
#merge
cat_cross <- merge(Cats_ke13, Cats_bg18, by="Category", suffixes = c(".ke13", ".bg18"), all = T)
cat_cross$in_common <- mapply(min, x=cat_cross$Freq.ke13, y=cat_cross$Freq.bg18)

#mm example
mm_ke13 <- Names_ke13[Names_ke13$Category=="MM",]
#5 provider options

mm_bg18 <- Names_bg18[Names_bg18$Category=="MM",]
#9 provider options

mm_cross <- merge(mm_ke13, mm_bg18, by="Variable", suffixes = c(".ke13", ".bg18"), all=T)

intersect(mm_ke13$Variable, mm_bg18$Variable)

#coding
cat_cross$coding_match <- sapply(cat_cross$Category, function(x) {
})

cross <- merge(Names_ke13, Names_bg18, by = "Variable", all = T, suffixes = c(".ke13", ".bg18"))
mis_cross <- cross[which(!cross$Label.ke13 %in% cross$Label.bg18),]
match_cross <- cross[which(cross$Label.ke13 %in% cross$Label.bg18),]
nomatch <- anti_join(Names_bg17, Names_bg18, by="Variable")
mis_cross$sentence_intersect <- mapply(function(x,y){
  a <- unlist(strsplit(x, split=" "))
  b <- unlist(strsplit(y, split=" "))
  length(intersect(a,b))/length(b)},
  x = mis_cross$Label.x, y = mis_cross$Label.y)
#returns vector of word similarity percentage between matched columns
stringmatch <- function(x,y){mapply(function(x,y){
  a <- unlist(strsplit(x, split=" "))
  b <- unlist(strsplit(y, split=" "))
  length(intersect(a,b))/length(b)},
  x = mis_cross$Label.x, y = mis_cross$Label.y)
  }
bestmatch <- function(var, d2names){
  label <- attr(var, "label")
 a <- unlist(strsplit(label, split=" "))
score <- cbind(d2names, sapply(d2names, function(x){
  b <- unlist(strsplit(x, split=" "))
  length(intersect(a,b))/(length(a)+length(b)/2)
  }))
colnames(score) <- c("Variables", "Match")
score <- data.frame(score)
score <- score[order(-score$Match),]
score}

bm <- bestmatch(ke13$DL11, Names_bg18$Label)

mis_cross2 <- cross[which(is.na(cross$Label.y)|is.na(cross$Label.x)),]
write.csv(mis_cross, "mis_cross.csv")
