x = c(10, 20, 30, 40, 50)
y = c(4, 22, 44, 60, 82)

emp = data.frame(x=x, y=y)
print (emp)

model = lm(y ~ x, data=emp)
print (model)

plot(x, y, col="Blue", abline(model), main = "Output vs Input", pch=20, xlab = "X", ylab = "Y")
