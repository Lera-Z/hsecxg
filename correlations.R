library('corrplot')
loaddata <- read.csv('/Users/Valeriya/Documents/Py/hsecxg/Label_Encoder_Data.csv', sep=';')
df = subset(loaddata, select = -c(X) )
corrmatr <- cor(df)
res1 <- cor.mtest(df, conf.level = .99)
corrplot(corrmatr, p.mat = res1$p, insig = "blank")

