library(neuralnet)

df <- read.csv(file = '/home/bigdata17/Documents/ML-Workshop/concrete.csv', header = TRUE, sep = ',')
str(df)
class (df)
dim(df)
normalize <- function(x){
  return ((x - min(x))/ (max(x)-min(x)))
}
concrete_norm = as.data.frame(lapply(df, normalize))
summary(concrete_norm$strength)
concrete_train  = df[1:773,]
concrete_test = df[774:1030,]

concrete_model = neuralnet(strength ~ cement + slag + ash + water + superplastic + coarseagg + fineagg + age,
                           data=concrete_train)
plot(concrete_model)
concrete_model = neuralnet(strength ~ cement + slag + ash + water + superplastic + coarseagg + fineagg + age,
                           data=concrete_train, hidden = 2)
plot(concrete_model)
head(df)

print (mtcars)