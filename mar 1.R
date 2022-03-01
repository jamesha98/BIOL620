Author: Jamesha, Date: Feb 22, 2022; Purpose: To generate box plots of raw microarray datasets

setwd("/Users/meshajones/desktop/")
library(affy)

eset <- ReadAffy()

# Perform RMA normalization
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)

#Log base 2, or base 10, to perform log transformation do the following

Treatment <- apply(rma[,c("GSM4843.CEL","GSM4844.CEL")],1,log)
Control<- apply(rma[,c("GSM4845.CEL","GSM4846.CEL", "GSM4847.CEL")],1,log)