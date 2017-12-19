loaddata <- read.csv('/Users/Valeriya/Documents/Py/hsecxg/binary_table.csv', sep=',')
library("randomForest")
require(randomForest)
fit <- randomForest(factor(target)~., data=loaddata)

varImpPlot(fit,type=2)

