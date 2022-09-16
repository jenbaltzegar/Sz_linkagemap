# This script will create the table of linkage map markers

# load data
df1 <- read.table("./output/Sz_LinkageMap_LOD11.tsv", header = TRUE)
head(df1)
df2 <- read.table("./output/batch_30.catalog.tags.tsv")
head(df2)


# Left join df2 onto df1
markerTable <- merge(df1, df2, by.x = "ID", by.y = "V3", all.x = TRUE)
markerTable <- markerTable[, c("ID", "LG", "POS", "V9")]
colnames(markerTable) <- c("ID", "LG", "POS", "SEQUENCE")
head(markerTable)

write.csv(markerTable, "./output/markerTable.csv", row.names = FALSE)
