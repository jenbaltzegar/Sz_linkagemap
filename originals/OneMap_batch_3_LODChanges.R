###This File is to run through many possible combinations 
#of LOD scores and max.rf values to determine the best for our dataset

batch_3_81prog.out <- read.outcross(file="batch_3.genotypes_1onemap_0.05with81progeny.csv")

#LOD=3, max.rf=0.5
twopts_3_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 3, max.rf = 0.5)
mark.all_3_0.5 <- make.seq(twopts_3_0.5, "all")
LGs_3.81_3_0.5 <- group(mark.all_3_0.5)

#LOD=6, max.rf=0.5
twopts_6_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 6, max.rf = 0.5)
mark.all_6_0.5 <- make.seq(twopts_6_0.5, "all")
LGs_3.81_6_0.5 <- group(mark.all_6_0.5)

#LOD=9, max.rf=0.5
twopts_9_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 9, max.rf = 0.5)
mark.all_9_0.5 <- make.seq(twopts_9_0.5, "all")
LGs_3.81_9_0.5 <- group(mark.all_9_0.5)

#LOD=10, max.rf=0.5
twopts_10_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 10, max.rf = 0.5)
mark.all_10_0.5 <- make.seq(twopts_10_0.5, "all")
LGs_3.81_10_0.5 <- group(mark.all_10_0.5)

#LOD=11, max.rf=0.5
twopts_11_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 11, max.rf = 0.5)
mark.all_11_0.5 <- make.seq(twopts_11_0.5, "all")
LGs_3.81_11_0.5 <- group(mark.all_11_0.5)

#LOD=12, max.rf=0.5
twopts_12_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 12, max.rf = 0.5)
mark.all_12_0.5 <- make.seq(twopts_12_0.5, "all")
LGs_3.81_12_0.5 <- group(mark.all_12_0.5)

#LOD=13, max.rf=0.5
twopts_13_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 13, max.rf = 0.5)
mark.all_13_0.5 <- make.seq(twopts_13_0.5, "all")
LGs_3.81_13_0.5 <- group(mark.all_13_0.5)

#LOD=14, max.rf=0.5
twopts_14_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 14, max.rf = 0.5)
mark.all_14_0.5 <- make.seq(twopts_14_0.5, "all")
LGs_3.81_14_0.5 <- group(mark.all_14_0.5)

#LOD=15, max.rf=0.5
twopts_15_0.5 <- rf.2pts(batch_3_81prog.out, LOD = 15, max.rf = 0.5)
mark.all_15_0.5 <- make.seq(twopts_15_0.5, "all")
LGs_3.81_15_0.5 <- group(mark.all_15_0.5)

####################################
#Synthesizing information
print(LGs_3.81_3_0.5, detailed=FALSE)
print(LGs_3.81_6_0.5, detailed=FALSE)
print(LGs_3.81_9_0.5, detailed=FALSE)
print(LGs_3.81_10_0.5, detailed=FALSE)
print(LGs_3.81_11_0.5, detailed=FALSE)
print(LGs_3.81_12_0.5, detailed=FALSE)
print(LGs_3.81_13_0.5, detailed=FALSE)
print(LGs_3.81_14_0.5, detailed=FALSE)
print(LGs_3.81_15_0.5, detailed=FALSE)

###################################################################
###################################################################
batch_3_93prog.out <- read.outcross(file="batch_3.genotypes_1onemap_0.05with93progeny.csv")

#LOD=3, max.rf=0.5
twopts_3_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 3, max.rf = 0.5)
mark.all_3_0.5 <- make.seq(twopts_3_0.5, "all")
LGs_3.93_3_0.5 <- group(mark.all_3_0.5)

#LOD=6, max.rf=0.5
twopts_6_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 6, max.rf = 0.5)
mark.all_6_0.5 <- make.seq(twopts_6_0.5, "all")
LGs_3.93_6_0.5 <- group(mark.all_6_0.5)

#LOD=9, max.rf=0.5
twopts_9_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 9, max.rf = 0.5)
mark.all_9_0.5 <- make.seq(twopts_9_0.5, "all")
LGs_3.93_9_0.5 <- group(mark.all_9_0.5)

#LOD=10, max.rf=0.5
twopts_10_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 10, max.rf = 0.5)
mark.all_10_0.5 <- make.seq(twopts_10_0.5, "all")
LGs_3.93_10_0.5 <- group(mark.all_10_0.5)

#LOD=11, max.rf=0.5
twopts_11_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 11, max.rf = 0.5)
mark.all_11_0.5 <- make.seq(twopts_11_0.5, "all")
LGs_3.93_11_0.5 <- group(mark.all_11_0.5)

#LOD=12, max.rf=0.5
twopts_12_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 12, max.rf = 0.5)
mark.all_12_0.5 <- make.seq(twopts_12_0.5, "all")
LGs_3.93_12_0.5 <- group(mark.all_12_0.5)

#LOD=13, max.rf=0.5
twopts_13_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 13, max.rf = 0.5)
mark.all_13_0.5 <- make.seq(twopts_13_0.5, "all")
LGs_3.93_13_0.5 <- group(mark.all_13_0.5)

#LOD=14, max.rf=0.5
twopts_14_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 14, max.rf = 0.5)
mark.all_14_0.5 <- make.seq(twopts_14_0.5, "all")
LGs_3.93_14_0.5 <- group(mark.all_14_0.5)

#LOD=15, max.rf=0.5
twopts_15_0.5 <- rf.2pts(batch_3_93prog.out, LOD = 15, max.rf = 0.5)
mark.all_15_0.5 <- make.seq(twopts_15_0.5, "all")
LGs_3.93_15_0.5 <- group(mark.all_15_0.5)

####################################
#Synthesizing information
print(LGs_3.93_3_0.5, detailed=FALSE)
print(LGs_3.93_6_0.5, detailed=FALSE)
print(LGs_3.93_9_0.5, detailed=FALSE)
print(LGs_3.93_10_0.5, detailed=FALSE)
print(LGs_3.93_11_0.5, detailed=FALSE)
print(LGs_3.93_12_0.5, detailed=FALSE)
print(LGs_3.93_13_0.5, detailed=FALSE)
print(LGs_3.93_14_0.5, detailed=FALSE)
print(LGs_3.93_15_0.5, detailed=FALSE)



