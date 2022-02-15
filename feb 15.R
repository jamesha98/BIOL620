# Author: Jamesha Jones, Date: 02/15/2022, Purpose: to perform microarray nornmalization 

# set the working directory to your .CEL files folder
setwd("/Users/meshajones/desktop/BIOL_620")

# Load package affy
library(affy)
# Reading the .CEL files
eset <- ReadAffy()