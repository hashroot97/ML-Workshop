df = read.csv('/home/bigdata17/Documents/ML-Workshop/GDPData.csv')
head(df)
dim(df)
class(df)
summary(df)
vec_GDP = df$GDP
vec_Service = df$Service
vec_Industry = df$Industry
vec_Agriculture = df$Agriculture
frame = data.frame(Agriculture=vec_Agriculture, Industry=vec_Industry
                   , Service=vec_Service, GDP=vec_GDP)
head(frame)
model = lm(vec_GDP ~ vec_Agriculture+vec_Industry+vec_Service, data=frame)
plot(vec_Agriculture+vec_Industry+vec_Service,
     vec_GDP, col="Blue", abline(model), main = "GDP Prediction",
     xlab = "X", ylab = "GDP", pch=20)
summary(model)
plot(model)
