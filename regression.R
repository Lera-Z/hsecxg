mydata = read.csv('/Users/Valeriya/Documents/Py/hsecxg/Label_Encoder_Data.csv', sep=';')
fit <- lm(pronoun_target ~ ., data=mydata)

summary(fit) # show results
