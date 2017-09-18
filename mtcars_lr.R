mtcars$am = as.factor(mtcars$am)
head(mtcars)
levels(mtcars$am) = c("Automatic", "Manual")
head(mtcars)
