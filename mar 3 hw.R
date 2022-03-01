# Author: Jamesha, Date: Feb 28, 2022; Purpose: To generate box plots of raw microarray datasets

setwd("/Users/meshajones/desktop/")
library(affy)

eset <- ReadAffy()
# Box plots for raw datasets
boxplot(eset)

# Perform RMA normalization
eset_Norm <- mas5(eset)

# Box plots for normalized datasets
mas5 <- exprs(eset_Norm)
boxplot(mas5)
