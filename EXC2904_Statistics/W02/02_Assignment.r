x <- c(2, 12, 8, 10, 8, 12)
y <- c(13, 26, 20, 27, 16, 24)

# plot(x, y, main = " Scatter plot", xlim = c(7, 13), ylim = c(10, 30),
#  bty = "n", cex.main = 1.50, cex.lab = 1.25, cex.axis = 1.00,
#  xlab = "Attendance", ylab = " Points", pch=19, cex = 1.25,
#  col = "blue")

#Solve Exercise (c), (e), (f), and (g) by R

# (c) Compute all relevant sample statistics
# (averages, variances, standard deviations, the covariance and the correlation).

mean(x)
mean(y)

var(x)
var(y)

sd(x)
sd(y)

cov(x, y)
cor(x, y)

# (e) Use the least squares regression procedure outlined in the notes
# to compute the parameters of the regression line. That is, determine 𝑎 and 𝑏. 

a <- cov(x, y) / var(x)
b <- mean(y) - a * mean(x)

# (f) How well does the regression model fit the data?

R2 <- (cor(x, y))^2
print(R2)