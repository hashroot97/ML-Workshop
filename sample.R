manager_vec = c(1, 2, 3, 4, 5)
country_vec = c('US', 'UK', 'US', 'US', 'UK')
age_vec = c(24, 22, 54, 21, 34)
q1_vec = c(2, 3, 4, 5, 3)
q2_vec = c(1, 4, 2, 4, 3)
q3_vec = c(5, 6, 7, 3, 5)
q4_vec = c(3, 5, 8, 3, 6)

df = data.frame(manager_vec, country_vec, age_vec, q1_vec, q2_vec, q3_vec, q4_vec)

print (df)

df <- data.frame(manager=c(1:5), country=c('US', 'UK', 'UK', 'US', 'UK'), stringsAsFactors = FALSE)
print (df)

df = data.frame(manager=c(1:5), country=c('US', 'UK', 'UK', 'US', 'UK'), 
                date=c('21/02/12', '23/05/11', '11/05/10', '10/12/09', '09/09/12'),
                age = c(24, 22, 54, 21, 34),
                q1 = c(2, 3, 4, 5, 3),
                q2 = c(1, 4, 2, 4, 3),
                q3 = c(5, 6, 7, 3, 5),
                q4=c(1, 3, 5, NA, 3),
                q5 = c(3, 5, 8, 3, NA),
                q6 = c(3, 5, 8, NA, NA),
                stringsAsFactors = FALSE)
print (df) 
df$age
df$age[df$age == 24] <- 49
print(df)
is.na(df[, 5:9])
dim(df$q4)
print (df)
new_df= na.omit(df)
print(new_df)
dim(df)
df

