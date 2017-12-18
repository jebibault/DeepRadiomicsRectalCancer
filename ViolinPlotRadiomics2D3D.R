ViolinPlotRadiomics2D3D$pCR <- as.factor(ViolinPlotRadiomics2D3D$pCR)
head(ViolinPlotRadiomics2D3D)

library(ggplot2)

p + geom_boxplot(width=0.1)
> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM2DEnergy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM2DEnergy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM3DEnergy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM3DEnergy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM2DHomogeneity)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM2DHomogeneity by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM3DHomogeneity)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM3DHomogeneity by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM3DEntropy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM3DEntropy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM2DEntropy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM2DEntropy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM3DSumEntropy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM3DSumEntropy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM2DSumEntropy)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM2DSumEntropy by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM3DInverDiffNorm)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM3DInverDiffNorm by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()

> ggplot(ViolinPlotRadiomics2D3D, aes(x=pCR, y=GLCM2DInverDiffNorm)) + 
+     geom_violin(trim=FALSE, fill="gray")+
+     labs(title="Plot of GLCM2DInverDiffNorm by pCR",x="pCR", y = "Value")+
+     geom_boxplot(width=0.1)+
+     theme_classic()