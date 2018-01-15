###This File is to run through many possible combinations 
#of LOD scores and max.rf values to determine the best for our dataset

batch_1.out <- read.outcross(file="batch_1.genotypes_1onemap_0.05with81progeny.csv")

#LOD=3, max.rf=0.5
twopts_3_0.5 <- rf.2pts(batch_1.out, LOD = 3, max.rf = 0.5)
mark.all_3_0.5 <- make.seq(twopts_3_0.5, "all")
LGs_1.81_3_0.5 <- group(mark.all_3_0.5)

#LOD=6, max.rf=0.5
twopts_6_0.5 <- rf.2pts(batch_1.out, LOD = 6, max.rf = 0.5)
mark.all_6_0.5 <- make.seq(twopts_6_0.5, "all")
LGs_1.81_6_0.5 <- group(mark.all_6_0.5)

#LOD=9, max.rf=0.5
twopts_9_0.5 <- rf.2pts(batch_1.out, LOD = 9, max.rf = 0.5)
mark.all_9_0.5 <- make.seq(twopts_9_0.5, "all")
LGs_1.81__9_0.5 <- group(mark.all_9_0.5)

#LOD=10, max.rf=0.5
twopts_10_0.5 <- rf.2pts(batch_1.out, LOD = 10, max.rf = 0.5)
mark.all_10_0.5 <- make.seq(twopts_10_0.5, "all")
LGs_1.81__10_0.5 <- group(mark.all_10_0.5)

#LOD=11, max.rf=0.5
twopts_11_0.5 <- rf.2pts(batch_1.out, LOD = 11, max.rf = 0.5)
mark.all_11_0.5 <- make.seq(twopts_11_0.5, "all")
LGs_1.81__11_0.5 <- group(mark.all_11_0.5)

#LOD=12, max.rf=0.5
twopts_12_0.5 <- rf.2pts(batch_1.out, LOD = 12, max.rf = 0.5)
mark.all_12_0.5 <- make.seq(twopts_12_0.5, "all")
LGs_1.81__12_0.5 <- group(mark.all_12_0.5)

#LOD=13, max.rf=0.5
twopts_13_0.5 <- rf.2pts(batch_1.out, LOD = 13, max.rf = 0.5)
mark.all_13_0.5 <- make.seq(twopts_13_0.5, "all")
LGs_1.81__13_0.5 <- group(mark.all_13_0.5)

#LOD=14, max.rf=0.5
twopts_14_0.5 <- rf.2pts(batch_1.out, LOD = 14, max.rf = 0.5)
mark.all_14_0.5 <- make.seq(twopts_14_0.5, "all")
LGs_1.81__14_0.5 <- group(mark.all_14_0.5)

#LOD=15, max.rf=0.5
twopts_15_0.5 <- rf.2pts(batch_1.out, LOD = 15, max.rf = 0.5)
mark.all_15_0.5 <- make.seq(twopts_15_0.5, "all")
LGs_1.81__15_0.5 <- group(mark.all_15_0.5)

####################################
#Synthesizing information
print(LGs_1.81_3_0.5, detailed=FALSE)
print(LGs_1.81__6_0.5, detailed=FALSE)
print(LGs_1.81__9_0.5, detailed=FALSE)
print(LGs_1.81__10_0.5, detailed=FALSE)
print(LGs_1.81__11_0.5, detailed=FALSE)
print(LGs_1.81__12_0.5, detailed=FALSE)
print(LGs_1.81__13_0.5, detailed=FALSE)
print(LGs_1.81__14_0.5, detailed=FALSE)
print(LGs_1.81__15_0.5, detailed=FALSE)

###################################################################
###################################################################
batch_1_93prog.out <- read.outcross(file="batch_1.genotypes_1onemap_0.05with93progeny.csv")

#LOD=3, max.rf=0.5
twopts_3_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 3, max.rf = 0.5)
mark.all_3_0.5 <- make.seq(twopts_3_0.5, "all")
LGs_1.93_3_0.5 <- group(mark.all_3_0.5)

#LOD=6, max.rf=0.5
twopts_6_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 6, max.rf = 0.5)
mark.all_6_0.5 <- make.seq(twopts_6_0.5, "all")
LGs_1.93_6_0.5 <- group(mark.all_6_0.5)

#LOD=9, max.rf=0.5
twopts_9_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 9, max.rf = 0.5)
mark.all_9_0.5 <- make.seq(twopts_9_0.5, "all")
LGs_1.93_9_0.5 <- group(mark.all_9_0.5)

#LOD=10, max.rf=0.5
twopts_10_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 10, max.rf = 0.5)
mark.all_10_0.5 <- make.seq(twopts_10_0.5, "all")
LGs_1.93_10_0.5 <- group(mark.all_10_0.5)

#LOD=11, max.rf=0.5
twopts_11_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 11, max.rf = 0.5)
mark.all_11_0.5 <- make.seq(twopts_11_0.5, "all")
LGs_1.93_11_0.5 <- group(mark.all_11_0.5)

#LOD=12, max.rf=0.5
twopts_12_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 12, max.rf = 0.5)
mark.all_12_0.5 <- make.seq(twopts_12_0.5, "all")
LGs_1.93_12_0.5 <- group(mark.all_12_0.5)

#LOD=13, max.rf=0.5
twopts_13_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 13, max.rf = 0.5)
mark.all_13_0.5 <- make.seq(twopts_13_0.5, "all")
LGs_1.93_13_0.5 <- group(mark.all_13_0.5)

#LOD=14, max.rf=0.5
twopts_14_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 14, max.rf = 0.5)
mark.all_14_0.5 <- make.seq(twopts_14_0.5, "all")
LGs_1.93_14_0.5 <- group(mark.all_14_0.5)

#LOD=15, max.rf=0.5
twopts_15_0.5 <- rf.2pts(batch_1_93prog.out, LOD = 15, max.rf = 0.5)
mark.all_15_0.5 <- make.seq(twopts_15_0.5, "all")
LGs_1.93_15_0.5 <- group(mark.all_15_0.5)

####################################
#Synthesizing information
print(LGs_1.93_3_0.5, detailed=FALSE)
print(LGs_1.93_6_0.5, detailed=FALSE)
print(LGs_1.93_9_0.5, detailed=FALSE)
print(LGs_1.93_10_0.5, detailed=FALSE)
print(LGs_1.93_11_0.5, detailed=FALSE)
print(LGs_1.93_12_0.5, detailed=FALSE)
print(LGs_1.93_13_0.5, detailed=FALSE)
print(LGs_1.93_14_0.5, detailed=FALSE)
print(LGs_1.93_15_0.5, detailed=FALSE)





