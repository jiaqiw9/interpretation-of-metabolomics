setwd('D:/Python code/DS Project/interpretation-of-metabolomics/feature_analysis')
data = read.csv('small_data.csv')
data$Group = as.factor(data$Group)
attach(data)

sat_mdl = glm(Group~., data = data, family=binomial)
fwd_mdl = step(sat_mdl, direction='forward')
bwd_mdl = step(sat_mdl, direction='backward')

summary(fwd_mdl)
summary(bwd_mdl)


