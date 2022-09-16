# Code to determine stats for genome map

# set working directory
setwd("/Users/jenbaltz/Dropbox/GouldLab/Project_Weevil/LinkageMap/LinkageMap_Images/LOD_11_reportThisOne")

# import data
dat <- read.table("./Sz_LinkageMap_LOD11.tsv", header = TRUE)
head(dat)

# Number of markers per LG
# required library
# library(plyr)
count.markers.per.LG <- count(dat, "LG")
colnames(count.markers.per.LG) <- c("LG", "n_markers"); count.markers.per.LG
mean.markers.per.LG <- mean(count.markers.per.LG$freq); mean.markers.per.LG
range.markers.LG <- range(count.markers.per.LG$freq); range.markers.LG
# detach("package:plyr", unload=TRUE)

# Distance between markers
# required library
# library(dplyr)
datList <- split(dat, dat$LG) # split dataframe by LG
head(datList$`1`)
# Find position differences by LG
datList <- lapply(datList, function(df) {
  df %>%
    arrange(LG) %>%
    mutate(DIFF = POS - lag(POS, n = 1, default = first(POS)))
}) 
head(datList$`1`)


mean.cm.1 <- mean(datList$`1`$DIFF)
mean.cm.2 <- mean(datList$`2`$DIFF)
mean.cm.3 <- mean(datList$`3`$DIFF)
mean.cm.4 <- mean(datList$`4`$DIFF)
mean.cm.5 <- mean(datList$`5`$DIFF)
mean.cm.6 <- mean(datList$`6`$DIFF)
mean.cm.7 <- mean(datList$`7`$DIFF)
mean.cm.8 <- mean(datList$`8`$DIFF)
mean.cm.9 <- mean(datList$`9`$DIFF)
mean.cm.10 <- mean(datList$`10`$DIFF)
mean.cm.11 <- mean(datList$`11`$DIFF)
mean.cm.diff <- c(mean.cm.1, mean.cm.2, mean.cm.3, mean.cm.4, mean.cm.5 
             , mean.cm.6, mean.cm.7, mean.cm.8, mean.cm.9, mean.cm.10
             , mean.cm.11)


# find mean of Diff
# required library
# library(data.table)
x <- rbindlist(datList)[, lapply(.SD, mean), by = LG]
mean.marker.dist <- mean(x$DIFF); mean.marker.dist

# Length of each LG
length.LG <- aggregate(dat$POS, list(dat$LG), tail, 1); length.LG
# total map length
length.map <- sum(length.LG$x); length.map
min.LG <- min(length.LG$x); min.LG
max.LG <- max(length.LG$x); max.LG

# make dataframe of summary stats
sum.stats <- cbind(count.markers.per.LG, length_cM = round(length.LG$x, 2)
                   , mean_diff_cm = round(mean.cm.diff, 2))
sum.stats
write.csv(sum.stats, file = "./Sz_LinkageMap_LOD11_summaryStats.csv", row.names = FALSE)
