library(rpart)

loaddata = read.csv('./binary_table2.csv', sep=',')

fit <- rpart(target ~ .,
             method="class", data=loaddata,
             control=rpart.control(minsplit = 10, cp = 0.01))

plot(fit, uniform=TRUE,
     main="Classification Tree for Kyphosis")
text(fit, use.n=T, all=T, cex=.7)

library(rattle)
library(rpart.plot)
library(RColorBrewer)

fancyRpartPlot(fit)

