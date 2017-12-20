loaddata <- read.csv('/Users/Valeriya/Documents/Py/hsecxg/Label_Encoder_Data.csv', sep=';')

#chisq.test(loaddata$pronoun_target, loaddata$make, correct=FALSE)

#chisq.test(loaddata$pronoun_target, loaddata$is_back, correct=FALSE)

#chisq.test(loaddata$pronoun_target, loaddata$neg, correct=FALSE)

chisq.test(loaddata$is_back, loaddata$make, correct=FALSE)
