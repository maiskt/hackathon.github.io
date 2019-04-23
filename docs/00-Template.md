# Title Goes Here

When saving the file, use a two-digit number and a dash, followed by the title *without* spaces (for example, 07-Page-Title.Rmd).


## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

**bolded table title**

Table | Header
--- | ---
A | B       

If the above seems tedious or you have a long table, try <http://www.tablesgenerator.com/markdown_tables>

* list example
  + sub-list example
* pretty simple

## Variable Subsection 1

### Bangladesh
### Kenya
### India
### Indonesia
### Nigeria
### Pakistan
### Tanzania
### Uganda

## Variable Subsection 2

### Country

#### Year (if necessary)

Add pictures (note the file location):
![hover text](https://datathonfii.github.io/Codebook/docs/media/fii.jpg)


This is how we can add our SPSS syntax to the end:

```
compute access_dfs=0.
if (FN1_1=1 or FN1_2=1 or FN1_3=1 or
    FN2_1=1 or
   (FN3_1=1 and (FN3_4=1 or FN3_5=1 or FN3_6=1 or FN3_7=1) and (FN3_8=1 or FN3_9=1 or FN3_10=1 or FN3_11=1)) or
   (FN4_1=1 and (FN4_4=1 or FN4_5=1 or FN4_6=1 or FN4_7=1) and (FN4_8=1 or FN4_9=1 or FN4_10=1 or FN4_11=1)) or
    FN7_1=1) access_dfs=1. 
variable labels access_dfs "Ever accessed a digital stored value account".
value labels access_dfs 0"No"1"Yes".
```
