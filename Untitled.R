library(rpart)
loaddata = read.csv('./binary_table.csv', sep=',')

fit <- rpart(target ~ .,
             method="class", data=loaddata,
             control=rpart.control(minsplit = 10, cp = 0.01))

rpart.plot(fit, uniform=TRUE,
     main="Classification Tree")
text(fit, use.n=T, all=T, cex=.7)

t_pred = predict(fit,subset(loaddata, select = -c(target)),type="class")
#fancyRpartPlot(fit)
confMat <- table(loaddata$target,t_pred)
accuracy <- sum(diag(confMat))/sum(confMat)
