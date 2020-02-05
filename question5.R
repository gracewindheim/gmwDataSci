#question 5

vec = c(sample(1:6, 6000, replace=TRUE))
dim(vec) = c(1000,6)
avg = rowMeans(vec, na.rm = FALSE)
hist(avg)

avg2 = mean(avg)
var = var(avg)