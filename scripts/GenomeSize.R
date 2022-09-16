# This script will analyze the raw data from the flow cytometry experiment.

# import data
flowcyt <- read.csv("./data/FlowCyt_data.csv")
# flowcyt

# Use standard 175Mb for known genome size of Drosophila melanogaster (GSdm)
# see ref: Bennett, M. D., Leitch, I. J., Price, H. J. & Johnston, J. S. Comparisons with 
# Caenorhabditis (100 Mb) and Drosophila (175 Mb) Using Flow Cytometry Show Genome Size 
# in Arabidopsis to be 157 Mb and thus 25 % Larger than the Arabidopsis Genome Initiative 
# Estimate of 125 Mb. Annals of Botany 91, 547–557 (2003).

# Calculate individual genome size for each sample
# formula: GSsz = GSdm * Expt_PE-A_mean / Std_PE-A_mean 
flowcyt$GSsz = 175 * flowcyt$Expt_PE.A_mean / flowcyt$Std_PE.A_mean
# flowcyt

# Calculate mean for females and males 
stats.by.sex <- aggregate(flowcyt$GSsz, list(flowcyt$Sex), FUN = function(x) c(mean = mean(x), sd = sd(x), median = median(x)))
# stats.by.sex

# Create boxplot for mean flowcyta
# required library
# library(ggplot2)
p <- ggplot(flowcyt, aes(x=Sex, y=GSsz, fill = Sex)) + 
  # theme_classic() +
  geom_boxplot() +
  scale_fill_manual(values=c("#AA4499", "#88CCEE")) +
  stat_summary(fun=mean, geom="point", shape=23, size=4) +
  ggtitle("Genome Size by Sex") +
  xlab("Sex") +
  ylab("Genome Size (Mb)") +
  theme(plot.title = element_text(hjust = 0.5))
# p

ggsave("./output/GenomeSize_boxplot.png")


