library("survival")
library("survminer")

fit <- survfit(Surv(Time, Status) ~ pCR, data = RectumSurvR)

ggsurvplot(
+     fit,                     # survfit object with calculated statistics.
+     pval = TRUE,             # show p-value of log-rank test.
+     conf.int = TRUE,         # show confidence intervals for 
+     # point estimaes of survival curves.
+     conf.int.style = "step",  # customize style of confidence intervals
+     xlab = "Time in months",   # customize X axis label.
+     ggtheme = theme_light(), # customize plot and risk table with a theme.
+     risk.table = "abs_pct",  # absolute number and percentage at risk.
+     risk.table.y.text.col = T,# colour risk table text annotations.
+     risk.table.y.text = FALSE,# show bars instead of names in text annotations
+     # in legend of risk table.
+     ncensor.plot = TRUE,      # plot the number of censored subjects at time t
+     surv.median.line = "hv",  # add the median survival pointer.
+     legend.labs = 
+         c("no pCR", "pCR"),    # change legend labels.
+     palette = "grey" # custom color palettes.
+ )