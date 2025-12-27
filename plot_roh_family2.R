library(ggplot2)
library(dplyr)

roh <- read.table("family2_roh.hom", header=TRUE)

roh$KB <- roh$KB / 1000
roh$POS1 <- roh$POS1 / 1e6
roh$POS2 <- roh$POS2 / 1e6

roh_chr <- roh %>% filter(CHR == 9)

ggplot(roh_chr, aes(x=POS1, xend=POS2, y=IID, yend=IID, colour=IID)) +
  geom_segment(size=2) +
  labs(x="Position on Chromosome (Mb)",
       y="Individual",
       title="Runs of Homozygosity – Family 2, Chromosome 9") +
  theme_minimal()
