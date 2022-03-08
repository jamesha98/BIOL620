Author: Jamesha, Date: Mar 8, 2022; Purpose: To generate box plots of raw microarray datasets

setwd("/Users/meshajones/desktop/")
library(affy)

eset <- ReadAffy()

# Perform RMA normalization
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)

#Log base 2, or base 10, to perform log transformation do the following

Treatment <- apply(rma[,c("GSM4843.CEL","GSM4844.CEL")],1,log)
Control<- apply(rma[,c("GSM4845.CEL","GSM4846.CEL", "GSM4847.CEL")],1,log)

#Transpose: Switch columns to rows and rows to columns

#perform transpose so that samples are columns and genes are rows

Treatment_T <- t(Treatment)

Control_T <- t(Control)

# To make fold changes, we first need to take means/averages for treatment and control samples.

Treatment_T_Mean <- rowMeans(Treatment_T )

Control_T_Mean <- rowMeans(Control_T )

#Get the subtraction fold change for treatment over control

Fold_Change <- Treatment_T_Mean - Control_T_Mean

#Assignment: Export variable "Fold_Change" as a .csv format file with name "fold_changes.csv"