### October 18, 2016 ###
### This script is used to create the linkage maps for weevil lib 2

library(onemap)

batch_30_100prog.out <- read.outcross(file="batch_30_1onemap_p0.05w100progeny.csv")

### Estimate two-point recombination fractions
## rf.2pts uses as default values of LOD Score 3 and maximum recombination fraction 0.50.
## I have found that changing the value for max.rf does little to change the data, 
## therefore use default 0.5 for max.rf
twopts <- rf.2pts(batch_30_100prog.out, LOD = 13, max.rf = 0.5)
mark.all <- make.seq(twopts, "all")
## To see the marker type for all of the markers, produces long list
#marker.type(mark.all)
LGs <- group(mark.all)
## To see all markers in each linkage group
#LGs
## To see summary of all LGs
#print(LGs, detailed=FALSE)

### Genetic Mapping of Linkage Groups
### Starting with the smallest LG (one with less than 10 markers)
## Set mapping function to either Haldane or Kosambi
#type can be "haldane" or "kosambi"
## Most papers I've read have used "kosambi"
set.map.fun(type="kosambi")
#set.map.fun(type="haldane")
#Define which linkage group to map
LG14 <- make.seq(LGs, 14)
LG14

### Choose one of four methods to order markers
## Seriation does not work when there are too many markers
## rcd appears to be faster than rec and rec is faster than ug
## https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5295600/pdf/543.pdf uses record 
## because it produces the shortest map distances
## https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5307697/ also used record
## https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5389163/ used rcd
## many papers do not list the ordering method selected
LG14.ser <- seriation(LG14) #Seriation (Buetow and Chakravarti, 1987)
LG14.rcd <- rcd(LG14)       #Rapid Chain Delineation (Doerge, 1996)
LG14.rec <- record(LG14)    #Recombination Counting and Ordering (Van Os et al., 2005)
LG14.ug <- ug(LG14)         #Unidirectional Growth (Tan and Fu, 2006)

### To order by comparing all possible orders
## error message appears if you have more than 10 markers
LG14.comp <- compare(LG14) 
### Final map can be obtained by, make sure to choose proper ordering method
LG14.final <- make.seq(LG14.comp)
LG14.final

### Now moving to a larger LG with more than 10 markers
LG12 <- make.seq(LGs, 12)
LG12

## Can't use compare function, start with rcd to get preliminary order estimate
LG12.rcd <- rcd(LG12)
## Check segregation types for markers in this LG
## See https://www.rdocumentation.org/packages/onemap/versions/2.0-4/topics/marker.type 
## and Wu et al. 2002 for description of segregation types.
marker.type(LG12)
## Pick the most informative markers and compare them
## In this LG all are of the same marker type, so just picked 5 to test method
LG12.init <- make.seq(twopts, c(59,65,268, 820, 822, 1051))
LG12.comp <- compare(LG12.init)
LG12.comp
## select the best order of markers
LG12.frame <- make.seq(LG12.comp)

## Now map remaining markers one at a time
LG12.extend <- try.seq(LG12.frame, 60, draw.try = F)
LG12.extend
print(LG12.extend,6)
LG12.frame <- make.seq(LG12.extend, 6, 1)
LG12.frame

LG12.extend <- try.seq(LG12.frame, 62); LG12.extend
LG12.frame <- make.seq(LG12.extend, 1)

LG12.ord <- order.seq(LG12, n.init = 5, THRES = 3, draw.try = FALSE, wait = 1)
LG12.ord
                      