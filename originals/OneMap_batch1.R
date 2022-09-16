#install.packages("onemap")
library(onemap)

rf<-c(0.01, 0.12, 0.05, 0.11, 0.21, 0.07)
kosambi(rf)
?kosambi

getwd()
list.files()
setwd("R_Stuff/")
list.files()

#Notice that the whole command line is limited by parenthesis. This indicates to R to show
#the results at the same time you store then into a variable.
(dat<-read.table(file="test.txt", header=TRUE))
dat$x
dat$y
summary(dat)
summary(dat$x)
summary(dat$y)

#export summary stats to a file
write.table(x=summary(dat), file="test_sum.txt", quote=FALSE)

class(dat)
library()
data()

system.file(package="onemap")
#example code: example.out<- read.outcross(file="example.out.txt")
batch_1.out <- read.outcross(file="batch_1.genotypes_1onemap_0.05with81progeny.csv")

#Estimate two-point recombination fractions
##rf.2pts uses as default values of LOD Score 3 and maximum recombination fraction 0.50.
twopts <- rf.2pts(batch_1.out)
#Different values for the criteria can be chosen using:
# twopts <- rf.2pts(example.out, LOD=3, max.rf=0.4)
twopts # will show summary information about the analysis

#If you want to see the results for given markers, say M1 and M3, the command is:
# print(twopts, "M1", "M3")
print(twopts, "M57723", "M48812")

# Assigning markers to linkage groups
mark.all <- make.seq(twopts, "all")
#the function marker type to see their numbers, names and types:
marker.type(mark.all)
#grouping step
LGs <- group(mark.all)
#to view detailed information about linkage groups
LGs
#to view summary information about linkage groups
print(LGs, detailed=FALSE)
#Changing LOD score
LGs <- group(mark.all, LOD=6)
#Changing LOD to 3 and maximum recombination to 0.4
LGs <- group(mark.all, LOD=3, max.rf=0.4)

#Genetic Mapping of Linkage Groups
#Set mapping function to either Haldane or Kosambi
set.map.fun(type="haldane")
#Define which linkage group to map
LG8 <- make.seq(LGs, 8)
LG8
#Choose one of four methods to order markers
LG8.ser <- seriation(LG8) #Seriation (Buetow and Chakravarti, 1987)
LG8.rcd <- rcd(LG8)       #Rapid Chain Delineation (Doerge, 1996)
LG8.rec <- record(LG8)    #Recombination Counting and Ordering (Van Os et al., 2005)
LG8.ug <- ug(LG8)         #Unidirectional Growth (Tan and Fu, 2006)
#To order by comparing all possible orders
LG8.comp <- compare(LG8) #error message appears if you have more than 10 markers
#Final map can be obtained by
LG8.final <- make.seq(LG8.rec,1,1)
#check segregation types
marker.type(LG8)
#create framework of ordered markers - choose the best ones (A>B>D)
LG8.init <- make.seq(twopts,c(276,288,527,602))
LG8.comp <- compare(LG8.init)
LG8.comp
#Select the best order
LG8.frame <- make.seq(LG8.comp)








