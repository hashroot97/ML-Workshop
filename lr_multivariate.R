brate = c(49.5, 48, 47, 43, 40, 41, 40, 37, 28, 18, 1.6)
drate = c(41, 47, 38, 31, 28, 22, 18, 14, 10, 9, 7)
pop = c(240, 239, 240, 280, 300, 350, 500, 620, 890, 981, 1200)
emp.data = data.frame(Birthrate=brate,
                      DeathRate = drate,
                      Population= pop)
print (emp.data)
model1 = lm(pop ~ brate+drate, data=emp.data)
model2 = lm(pop ~ brate, data = emp.data)
model3 = lm(pop ~ drate, data=emp.data)
summary(model1)
summary(model2)
summary(model3)

plot(brate+drate, pop, col="Blue", abline(model1), main = "Population Vs Rate", xlab = "BirthRate+DeathRate", ylab = "Population", pch=20)
plot(brate, pop, col="Blue", abline(model2), main = "Population Vs Rate", xlab = "BirthRate", ylab = "Population", pch=20)
plot(drate, pop, col="Blue", abline(model3), main = "Population Vs Rate", xlab = "DeathRate", ylab = "Population", pch=20)

