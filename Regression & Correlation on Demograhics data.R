data =read.csv(file.choose(), sep=",", header=T)
attach(data)
head(data)
cross_tab = table(gender,marital)
cross_tab
##corelation test
relationship = cor.test(income,age)
relationship
## From the result, the relationship has a weak correlation since the correlation coefficient is 0.3072254

##REgression Analysis
reg1 = lm(income ~ age)
reg1
summary(reg1)
reg = lm(income ~ age + carpr)
reg
summary(reg)
