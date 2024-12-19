library(dplyr)
library(Seurat)
library(patchwork)

input <- function(inputfile) {
   pbmc <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
pbmc <- NormalizeData(pbmc, normalization.method = "LogNormalize", scale.factor = 10000)
saveRDS(pbmc, outputfile)
}
