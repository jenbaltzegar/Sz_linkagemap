#install.packages("onemap")
library(onemap)

getwd()

#Notice that the whole command line is limited by parenthesis. This indicates to R to show
#the results at the same time you store them into a variable.
(dat<-read.table(file="test.txt", header=TRUE))

#Load and rename dataset
batch_30.out <- read.outcross(file="batch_30_1onemap_p0.05w100progeny.csv")

#Estimate two-point recombination fractions
##rf.2pts uses as default values of LOD Score 3 and maximum recombination fraction 0.50.
twopts <- rf.2pts(batch_30.out, LOD = 6, max.rf = 0.5)
#print(twopts, mrk1 = "3930", mrk2 = "32597")
mark.all <- make.seq(twopts, "all")
LGs <- group(mark.all)
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
LG1 <- make.seq(LGs, 1)
LG1
#Choose one of four methods to order markers
LG1.ser <- seriation(LG1) #Seriation (Buetow and Chakravarti, 1987)
LG1.rcd <- rcd(LG1)       #Rapid Chain Delineation (Doerge, 1996)
LG1.rec <- record(LG1)    #Recombination Counting and Ordering (Van Os et al., 2005)
LG1.ug <- ug(LG1)         #Unidirectional Growth (Tan and Fu, 2006)
#To order by comparing all possible orders
##LG1.comp <- compare(LG1) #error message appears if you have more than 10 markers
#Final map can be obtained by
LG1.final <- make.seq(LG1.rcd,1,1)
#check segregation types
marker.type(LG1)
#create framework of ordered markers - choose the best ones (A>B>D)
LG8.init <- make.seq(twopts,c(276,288,527,602))
LG8.comp <- compare(LG8.init)
LG8.comp
#Select the best order
LG8.frame <- make.seq(LG8.comp)








