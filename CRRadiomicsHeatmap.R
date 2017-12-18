library("gplots")
library("heatmap.plus")
library("RColorBrewer")

test <- read.csv2("CRRadiomicsSignificativesTranspose.csv",row.names = 1)
condition_colors <- unlist(lapply(rownames(test),function(x){
  if(grepl("TRG4",x)) '#31c63e'
  else if(grepl("NoCR",x)) '#010702'  
}))
input <- data.matrix(test)
heatmap.2(input, xlab = "Features", ylab = "Patients", labRow = FALSE, labCol = FALSE, margins = c(2, 3), main = "CT Radiomics Features", trace = "none", RowSideColors = condition_colors, scale = "col")
