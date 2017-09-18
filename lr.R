driving_exp = c(5, 2, 12, 9, 15, 6, 25, 16, 12, 21, 11, 6 , 4, 12)
ins_prem = c(64, 87, 50, 71, 44, 56, 42, 60, 50, 54, 60, 45, 65, 45)

emp.data = data.frame(driving_experience = driving_exp, insurance_premium = ins_prem)
print (emp.data)
print (head(emp.data))

model = lm(ins_prem ~ driving_exp, data = emp.data)
print (model)
a = coef(model)[1]
b = coef(model)[2]
print (a)
print (b)
plot(driving_exp, ins_prem, col="Blue", main = "Experience vs Insurance Regression", abline(model), pch = 20, xlab = "Experience", ylab = "Insurance" )

summary(model)
