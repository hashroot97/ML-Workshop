x = c(10, 20, 30, 40, 50)
y = c(4, 22, 44, 60, 82)

emp.data = data.frame(x=x, y=y)
print (emp.data)

model = lm(y ~ x, data=emp.data)
print (model)

plot(x, y, col="Blue", abline(model), main = "Output vs Input", pch=20, xlab = "X", ylab = "Y")
summary(model)
c = cov(x, y)/var(x)
a = mean(y) - c*mean(x)
print (a)