### This script is to run through many possible combinations 
#   of LOD scores values to determine the best for our dataset.
#   I have previously found that changing the max.rf value does 
#   not change the outcome of the data by much.

library(onemap)

batch_8_102prog.out <- read.outcross(file="batch_8.genotypes_1onemap_0.05with102progeny.csv")

#LOD=3, max.rf=0.5
twopts_3 <- rf.2pts(batch_8_102prog.out, LOD = 3, max.rf = 0.5)
mark.all_3 <- make.seq(twopts_3, "all")
LGs_8.102_3 <- group(mark.all_3)

#LOD=6, max.rf=0.5
twopts_6 <- rf.2pts(batch_8_102prog.out, LOD = 6, max.rf = 0.5)
mark.all_6 <- make.seq(twopts_6, "all")
LGs_8.102_6 <- group(mark.all_6)

#LOD=9, max.rf=0.5
twopts_9 <- rf.2pts(batch_8_102prog.out, LOD = 9, max.rf = 0.5)
mark.all_9 <- make.seq(twopts_9, "all")
LGs_8.102_9 <- group(mark.all_9)

#LOD=10, max.rf=0.5
twopts_10 <- rf.2pts(batch_8_102prog.out, LOD = 10, max.rf = 0.5)
mark.all_10 <- make.seq(twopts_10, "all")
LGs_8.102_10 <- group(mark.all_10)

#LOD=11, max.rf=0.5
twopts_11 <- rf.2pts(batch_8_102prog.out, LOD = 11, max.rf = 0.5)
mark.all_11 <- make.seq(twopts_11, "all")
LGs_8.102_11 <- group(mark.all_11)

#LOD=12, max.rf=0.5
twopts_12 <- rf.2pts(batch_8_102prog.out, LOD = 12, max.rf = 0.5)
mark.all_12 <- make.seq(twopts_12, "all")
LGs_8.102_12 <- group(mark.all_12)

#LOD=13, max.rf=0.5
twopts_13 <- rf.2pts(batch_8_102prog.out, LOD = 13, max.rf = 0.5)
mark.all_13 <- make.seq(twopts_13, "all")
LGs_8.102_13 <- group(mark.all_13)

#LOD=14, max.rf=0.5
twopts_14 <- rf.2pts(batch_8_102prog.out, LOD = 14, max.rf = 0.5)
mark.all_14 <- make.seq(twopts_14, "all")
LGs_8.102_14 <- group(mark.all_14)

#LOD=15, max.rf=0.5
twopts_15 <- rf.2pts(batch_8_102prog.out, LOD = 15, max.rf = 0.5)
mark.all_15 <- make.seq(twopts_15, "all")
LGs_8.102_15 <- group(mark.all_15)

####################################
#Synthesizing information
print(LGs_8.102_3, detailed=FALSE)
print(LGs_8.102_6, detailed=FALSE)
print(LGs_8.102_9, detailed=FALSE)
print(LGs_8.102_10, detailed=FALSE)
print(LGs_8.102_11, detailed=FALSE)
print(LGs_8.102_12, detailed=FALSE)
print(LGs_8.102_13, detailed=FALSE)
print(LGs_8.102_14, detailed=FALSE)
print(LGs_8.102_15, detailed=FALSE)

###################################################################
###################################################################
batch_8_100prog.out <- read.outcross(file="batch_8.genotypes_1onemap_0.05with100progeny.csv")

#LOD=3, max.rf=0.5
twopts_3 <- rf.2pts(batch_8_100prog.out, LOD = 3, max.rf = 0.5)
mark.all_3 <- make.seq(twopts_3, "all")
LGs_8.100_3 <- group(mark.all_3)

#LOD=6, max.rf=0.5
twopts_6 <- rf.2pts(batch_8_100prog.out, LOD = 6, max.rf = 0.5)
mark.all_6 <- make.seq(twopts_6, "all")
LGs_8.100_6 <- group(mark.all_6)

#LOD=9, max.rf=0.5
twopts_9 <- rf.2pts(batch_8_100prog.out, LOD = 9, max.rf = 0.5)
mark.all_9 <- make.seq(twopts_9, "all")
LGs_8.100_9 <- group(mark.all_9)

#LOD=10, max.rf=0.5
twopts_10 <- rf.2pts(batch_8_100prog.out, LOD = 10, max.rf = 0.5)
mark.all_10 <- make.seq(twopts_10, "all")
LGs_8.100_10 <- group(mark.all_10)

#LOD=11, max.rf=0.5
twopts_11 <- rf.2pts(batch_8_100prog.out, LOD = 11, max.rf = 0.5)
mark.all_11 <- make.seq(twopts_11, "all")
LGs_8.100_11 <- group(mark.all_11)

#LOD=12, max.rf=0.5
twopts_12 <- rf.2pts(batch_8_100prog.out, LOD = 12, max.rf = 0.5)
mark.all_12 <- make.seq(twopts_12, "all")
LGs_8.100_12 <- group(mark.all_12)

#LOD=13, max.rf=0.5
twopts_13 <- rf.2pts(batch_8_100prog.out, LOD = 13, max.rf = 0.5)
mark.all_13 <- make.seq(twopts_13, "all")
LGs_8.100_13 <- group(mark.all_13)

#LOD=14, max.rf=0.5
twopts_14 <- rf.2pts(batch_8_100prog.out, LOD = 14, max.rf = 0.5)
mark.all_14 <- make.seq(twopts_14, "all")
LGs_8.100_14 <- group(mark.all_14)

#LOD=15, max.rf=0.5
twopts_15 <- rf.2pts(batch_8_100prog.out, LOD = 15, max.rf = 0.5)
mark.all_15 <- make.seq(twopts_15, "all")
LGs_8.100_15 <- group(mark.all_15)

####################################
#Synthesizing information
print(LGs_8.100_3, detailed=FALSE)
print(LGs_8.100_6, detailed=FALSE)
print(LGs_8.100_9, detailed=FALSE)
print(LGs_8.100_10, detailed=FALSE)
print(LGs_8.100_11, detailed=FALSE)
print(LGs_8.100_12, detailed=FALSE)
print(LGs_8.100_13, detailed=FALSE)
print(LGs_8.100_14, detailed=FALSE)
print(LGs_8.100_15, detailed=FALSE)



