library(readr)
RadiomicsICCTrain <- read_csv("~/Desktop/RadiomicsICCTrain.csv")
RadiomicsICCTest <- read_csv("~/Desktop/RadiomicsICCTest.csv")
library(glmnet)
x <- model.matrix(pCR~.,RadiomicsICCTrain)
y <- ifelse(RadiomicsICCTrain$pCR=="1",1,0)
cv.out <- cv.glmnet(x,y,alpha=1,family="binomial",type.measure = "mse")
plot(cv.out)
lambda_min <- cv.out$lambda.min
lambda_1se <- cv.out$lambda.1se
coef(cv.out,s=lambda_1se)
x_test <- model.matrix(pCR~.,RadiomicsICCTest)
lasso_prob <- predict(cv.out,newx = x_test,s=lambda_1se,type="response")
lasso_predict <- rep("0",nrow(RadiomicsICCTest))
lasso_predict[lasso_prob>.5] <- "1"
table(pred=lasso_predict,true=RadiomicsICCTest$pCR)
mean(lasso_predict==RadiomicsICCTest$pCR)