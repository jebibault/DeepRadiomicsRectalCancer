baz <- read.csv2("CRRadiomicsWilcoxon.csv", dec='.')
dim(baz)
res <- NULL

for (i in 2:1684){

  x <- wilcox.test(baz[, i]~baz[,1], correct=F)  
  res <- rbind(res, c(names(baz[, i]), x$p.value))
}

write.table(x = res, file = "res.txt")