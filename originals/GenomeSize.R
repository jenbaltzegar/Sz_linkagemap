# This script will analyze the raw data from the flow cytometry experiment.

# See page 99 of Baltzegar Notebook # 2 from 6/29/2015

# import data
dat <- read.csv("~/Dropbox/GouldLab/Project_Weevil/Data_Weevil/GenomeSize/FlowCyt_data.csv")
dat

# Use standard 175Mb for known genome size of Drosophila melanogaster (GSdm)
# see ref: Bennett, M. D., Leitch, I. J., Price, H. J. & Johnston, J. S. Comparisons with 
# Caenorhabditis (100 Mb) and Drosophila (175 Mb) Using Flow Cytometry Show Genome Size 
# in Arabidopsis to be 157 Mb and thus 25 % Larger than the Arabidopsis Genome Initiative 
# Estimate of 125 Mb. Annals of Botany 91, 547–557 (2003).

# Calculate individual genome size for each sample
# formula: GSsz = GSdm * Expt_PE-A_mean / Std_PE-A_mean 
dat$GSsz = 175 * dat$Expt_PE.A_mean / dat$Std_PE.A_mean
dat

# Calculate mean for females and males 
stats.by.sex <- aggregate(dat$GSsz, list(dat$Sex), FUN = function(x) c(mean = mean(x), sd = sd(x), median = median(x)))
stats.by.sex

# Create boxplot for mean data
# required library
# library(ggplot2)
p <- ggplot(dat, aes(x=Sex, y=GSsz, fill = Sex)) + 
  # theme_classic() +
  geom_boxplot() +
  scale_fill_manual(values=c("#AA4499", "#88CCEE")) +
  stat_summary(fun.y=mean, geom="point", shape=23, size=4) +
  ggtitle("Genome Size by Sex") +
  xlab("Sex") +
  ylab("Genome Size (Mb)") +
  theme(plot.title = element_text(hjust = 0.5))
p

ggsave("~/Dropbox/GouldLab/Project_Weevil/Data_Weevil/GenomeSize/GenomeSize_boxplot.png")


