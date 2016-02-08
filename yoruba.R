library(reshape2)
library(edgeR)

load(file="data\\raw\\yoruba.RData")

#vaiable it loads is is "y" a DGEList object
#y$counts,y$genes, y$samples

counts_long_format<-melt(y$counts)
colnames(counts_long_format)<-c("GeneID","SampleID","Count")
yoruba_long_format<-merge(counts_long_format,y$genes,by.x="GeneID",by.y="GeneID")

write.table(file="data\\tercen\\yoruba.txt", youruba_long_format,row.names=FALSE,quote=FALSE, sep="\t")
