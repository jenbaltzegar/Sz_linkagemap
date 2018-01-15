### Created: October 18, 2016 ###
### Last Edits: October 18, 2017 
### This script is used to create the linkage maps for weevil lib 2
### This uses a LOD score of 6 to create 11 linkage groups

# Set working directory
setwd("/Users/jenbaltz/Dropbox/GouldLab/Project_Weevil/LinkageMap")

# Load onemap library
library(onemap)

# Import data from a full-sib family derived from the cross of two outbred 
# parents and create an object of class outcross.
# .csv file should be in MapMaker format
batch_30_100prog.out <- read.outcross(file="batch_30_1onemap_p0.05w100progeny.csv")

###################################################################################
### 4.3 - Estimate two-point recombination fractions
# rf.2pts uses as default values of LOD Score 3 and maximum recombination fraction 0.50.
# I have found that changing the value for max.rf does little to change the data, 
# therefore use default 0.5 for max.rf
# Adjust LOD score to acheive desired number of LGs
# Desired number of LGs = 12. One for each autosome, plus one each for the X and Y chr.
# See da Silva et al. 2015 for cytogenetic analysis
# 11-Oct-2017: I chose to use LOD=12 because it results in 12 LGs with only 2 unlinked markers
# See file: OneMap_batch_30_LODChanges.R for analysis
twopts <- rf.2pts(batch_30_100prog.out, LOD = 6, max.rf = 0.5)

###################################################################################
### 4.4 - Assigning markers to linkage groups

# Create a sequence with the markers you want to assign
mark.all <- make.seq(twopts, "all")
# To see the marker type for all of the markers, produces long list
#marker.type(mark.all)

# Group markers
LGs <- group(mark.all)
# To see all markers in each linkage group
#LGs
# To see summary of all LGs
print(LGs, detailed=FALSE)

###################################################################################
### 4.5 - Genetic Mapping of Linkage Groups
# Starting with the smallest LG (one with less than 10 markers)
# Set mapping function to either Haldane or Kosambi
# type can be "haldane" or "kosambi"
# Most papers I've read have used "kosambi", including Fritz et al. 2016
set.map.fun(type="kosambi")
#set.map.fun(type="haldane")


###################################################################################
### 4.7 - Genetic mapping of LGs
# Choose one of four methods to order markers
# Seriation does not work when there are too many markers
# rcd appears to be faster than rec and rec is faster than ug
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5295600/pdf/543.pdf uses record 
# because it produces the shortest map distances
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5307697/ also used record
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5389163/ used rcd
# many papers do not list the ordering method selected
# Fritz et al. 2016 used rec
# Seriation (Buetow and Chakravarti, 1987)
# LG14.ser <- seriation(LG14) 
# Rapid Chain Delineation (Doerge, 1996)
# LG14.rcd <- rcd(LG14)
# Recombination Counting and Ordering (Van Os et al., 2005)
#LG14 <- record(LG14)
# Unidirectional Growth (Tan and Fu, 2006)
# LG14.ug <- ug(LG14)       

# LG12
# Extract markers:
LG12 <- make.seq(LGs, 12)
# Implement record ordering algorithm
LG12.rec <- record(LG12)

# Repeat for all other LGs
# LG11
LG11 <- make.seq(LGs, 11)
LG11.rec <- record(LG11)

# LG10
LG10 <- make.seq(LGs, 10)
LG10.rec <- record(LG10)

# LG9
LG9 <- make.seq(LGs, 9)
LG9.rec <- record(LG9)

# LG8
LG8 <- make.seq(LGs, 8)
LG8.rec <- record(LG8)

# LG7
LG7 <- make.seq(LGs, 7)
LG7.rec <- record(LG7)

# LG6
LG6 <- make.seq(LGs, 6)
LG6.rec <- record(LG6)

# LG5
LG5 <- make.seq(LGs, 5)
LG5.rec <- record(LG5)

# LG4
LG4 <- make.seq(LGs, 4)
LG4.rec <- record(LG4)

# LG3
LG3 <- make.seq(LGs, 3)
LG3.rec <- record(LG3)

# LG2
LG2 <- make.seq(LGs, 2)
LG2.rec <- record(LG2)

# LG1
LG1 <- make.seq(LGs, 1)
LG1.rec <- record(LG1)


###################################################################################
# Create list of ordered linkage groups
maps.list<-list(LG1.rec, LG2.rec, LG3.rec, LG4.rec, LG5.rec, LG6.rec
                , LG7.rec, LG8.rec, LG9.rec, LG10.rec, LG11.rec, LG12.rec)

# Create file to be used for making map
write.map(maps.list, "Sz_LinkageMap.map")

# Create .csv file to be used in genetic_mapper program
write.csv(maps.list, file = "Sz_LinkageMap.csv", row.names = FALSE)




