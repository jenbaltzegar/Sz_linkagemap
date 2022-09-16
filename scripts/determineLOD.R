### This script is to run through many possible combinations 
#   of LOD scores values to determine the best for our dataset.
#   I have previously found that changing the max.rf value does 
#   not change the outcome of the data by much.
# Useful website: https://cran.r-project.org/web/packages/onemap/vignettes/Outcrossing_Populations.html

# required library
# library(onemap)

dat <- read_onemap(inputfile ="batch_30_1onemap_p0.05w100progeny.csv")

#LOD=3, max.rf=0.5
twopts_3 <- rf.2pts(dat, LOD = 3, max.rf = 0.5)
mark.all_3 <- make.seq(twopts_3, "all")
LGs_30.95_3 <- group(mark.all_3)

#LOD=4, max.rf=0.5
twopts_4 <- rf.2pts(dat, LOD = 4, max.rf = 0.5)
mark.all_4 <- make.seq(twopts_4, "all")
LGs_30.95_4 <- group(mark.all_4)

#LOD=5, max.rf=0.5
twopts_5 <- rf.2pts(dat, LOD = 5, max.rf = 0.5)
mark.all_5 <- make.seq(twopts_5, "all")
LGs_30.95_5 <- group(mark.all_5)

#LOD=6, max.rf=0.5
twopts_6 <- rf.2pts(dat, LOD = 6, max.rf = 0.5)
mark.all_6 <- make.seq(twopts_6, "all")
LGs_30.95_6 <- group(mark.all_6)

#LOD=9, max.rf=0.5
twopts_9 <- rf.2pts(dat, LOD = 9, max.rf = 0.5)
mark.all_9 <- make.seq(twopts_9, "all")
LGs_30.95_9 <- group(mark.all_9)

#LOD=10, max.rf=0.5
twopts_10 <- rf.2pts(dat, LOD = 10, max.rf = 0.5)
mark.all_10 <- make.seq(twopts_10, "all")
LGs_30.95_10 <- group(mark.all_10)

#LOD=11, max.rf=0.5
twopts_11 <- rf.2pts(dat, LOD = 11, max.rf = 0.5)
mark.all_11 <- make.seq(twopts_11, "all")
LGs_30.95_11 <- group(mark.all_11)

#LOD=12, max.rf=0.5
twopts_12 <- rf.2pts(dat, LOD = 12, max.rf = 0.5)
mark.all_12 <- make.seq(twopts_12, "all")
LGs_30.95_12 <- group(mark.all_12)

#LOD=13, max.rf=0.5
twopts_13 <- rf.2pts(dat, LOD = 13, max.rf = 0.5)
mark.all_13 <- make.seq(twopts_13, "all")
LGs_30.95_13 <- group(mark.all_13)

#LOD=14, max.rf=0.5
twopts_14 <- rf.2pts(dat, LOD = 14, max.rf = 0.5)
mark.all_14 <- make.seq(twopts_14, "all")
LGs_30.95_14 <- group(mark.all_14)

#LOD=15, max.rf=0.5
twopts_15 <- rf.2pts(dat, LOD = 15, max.rf = 0.5)
mark.all_15 <- make.seq(twopts_15, "all")
LGs_30.95_15 <- group(mark.all_15)

####################################
#Synthesizing information
print(LGs_30.95_3, detailed=FALSE)
print(LGs_30.95_4, detailed=FALSE)
print(LGs_30.95_5, detailed=FALSE)
print(LGs_30.95_6, detailed=FALSE)
print(LGs_30.95_9, detailed=FALSE)
print(LGs_30.95_10, detailed=FALSE)
print(LGs_30.95_11, detailed=FALSE)
print(LGs_30.95_12, detailed=FALSE)
print(LGs_30.95_13, detailed=FALSE)
print(LGs_30.95_14, detailed=FALSE)
print(LGs_30.95_15, detailed=FALSE)

#####################################
# #Synthesizing information
#
# > print(LGs_30.95_3, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_3"
# 
# Criteria used to assign markers to groups:
#     LOD = 3 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             4 
# No. linked markers:     1123 
# No. unlinked markers:   0 
#
# > print(LGs_30.95_4, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_4"
# 
# Criteria used to assign markers to groups:
#     LOD = 4 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             8 
# No. linked markers:     1123 
# No. unlinked markers:   0 

# > print(LGs_30.95_5, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_5"
# 
# Criteria used to assign markers to groups:
#     LOD = 5 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             9 
# No. linked markers:     1123 
# No. unlinked markers:   0 

# > print(LGs_30.95_6, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_6"
# 
# Criteria used to assign markers to groups:
#     LOD = 6 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             11 
# No. linked markers:     1123 
# No. unlinked markers:   0 

# > print(LGs_30.95_9, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_9"
# 
# Criteria used to assign markers to groups:
#     LOD = 9 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             11 
# No. linked markers:     1122 
# No. unlinked markers:   1 

# > print(LGs_30.95_10, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_10"
# 
# Criteria used to assign markers to groups:
#     LOD = 10 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             11 
# No. linked markers:     1122 
# No. unlinked markers:   1 

# > print(LGs_30.95_11, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_11"
# 
# Criteria used to assign markers to groups:
#     LOD = 11 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             11 
# No. linked markers:     1121 
# No. unlinked markers:   2 

# > print(LGs_30.95_12, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_12"
# 
# Criteria used to assign markers to groups:
#     LOD = 12 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             12 
# No. linked markers:     1121 
# No. unlinked markers:   2 

# > print(LGs_30.95_13, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_13"
# 
# Criteria used to assign markers to groups:
#     LOD = 13 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             14 
# No. linked markers:     1120 
# No. unlinked markers:   3 

# > print(LGs_30.95_14, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_14"
# 
# Criteria used to assign markers to groups:
#     LOD = 14 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             17 
# No. linked markers:     1119 
# No. unlinked markers:   4 

# > print(LGs_30.95_15, detailed=FALSE)
# This is an object of class 'group'
# It was generated from the object "mark.all_15"
# 
# Criteria used to assign markers to groups:
#     LOD = 15 , Maximum recombination fraction = 0.5 
# 
# No. markers:            1123 
# No. groups:             17 
# No. linked markers:     1119 
# No. unlinked markers:   4 
