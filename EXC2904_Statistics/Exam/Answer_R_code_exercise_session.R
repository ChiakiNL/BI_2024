# EXERCISE SESSION IN R
# Exercise 1
x <- c(2, 0, 9, 4, 14, -6, 9)

# a.
n <- length(x); x2 <- x[2]; x5 <- x[5]; x7 <- x[7]
print(n); print(x2); print(x5); print(x7)

# b.
mean(x); median(x); var(x); sd(x)

# c.
y <- c(x[3], x[4], x[5], x[6])
sum(y)

# Alternatively
y <- x[3:6]
sum(y)


# Exercise 2
n <- 7
p <- 0.10 

# a.
# X has binomial distribution with parameters n = 7 and p = 0.10
x <- 0:n
dbinom(x, size = n, prob = p)

# b.
# E(X) = n*p og Var(X) = n*p*(1-p)
Forv.X <- n*p; Var.X <- n*p*(1-p)
print(Forv.X); print(Var.X)

# c.
dbinom(2, size = n, prob = p)

# d.
1 - pbinom(1, size = n, prob = p)

# Exercise 3
mu <- 1060; sigma <- 217

# a.
x <- 1150
pnorm(1150, mean = mu, sd = 217, lower.tail = FALSE)

# b.
p <- 0.05
qnorm(p, mean = mu, sd = 217, lower.tail = FALSE)


# Exercise 4
v <- 16; t1 <- 1.34; t2 <- 2.12

# a.
pt(t2, df = v, lower.tail = TRUE) - pt(t1, df = v, lower.tail = TRUE)

# b.
p <- 0.75
qt(p, df = v, lower.tail = FALSE)


# Exercise 5
n <- 100; x <- 68

# a.
prop.test(x, n, conf.level = 0.90, correct = FALSE)

# b.
p0 <- 0.75
prop.test(x, n, p = p0, alternative = "two.sided", correct = FALSE)
# Since the p-value (= 0.1060) is greater than significance level (= 0.10), the null hypothesis is not rejected. 
# Thus, we do not find statistical support for the alternative hypothesis stating that the proportion of individuals at the
# restaurant chain who, by their own account, are subject to work related stress is different from the nationwide proportion of 75%.


# Exercise 6
x <- c(1150, 1270, 1560, 1530, 1220, 1090, 1300, 980, 1370, 1460, 1400, 1390)

# a.
t.test(x, conf.level = 0.90)

# b.
mu0 <- 1200
t.test(x, mu = mu0, alternative = "greater")
# Since the p-value (= 0.1060) is less than significance level (= 0.10), the null hypothesis is rejected. 
# Thus, we find statistical support for the alternative hypothesis stating that the mean number of points on the SAT test
# exceeds 1200 points for the students taking the course offered by SATprep is more than 1200. 


# Exercise 7
# a.
library(readxl)
Salary_survey <- read_excel("C:/Users/Teaching/EXC2904 (spring 2024)/R/Salary_survey.xlsx")
View(Salary_survey)
# Note that this code is specific for the computer. This, the code will not work on your computer.

Yearly_salary <- Salary_survey$Yearly_salary
Work_experience <- Salary_survey$Work_experience

# Run regression
est.model <- lm(Yearly_salary ~ Work_experience)
summary(est.model)

# a.
# - The estimated regression line is given by: Yearly salary = 384.434 + 12.938*Work experience
# - The estimated yearly salary for an individual with no work experience is
# (Yearly salary | Work experience = 0) = 384.434 + 12.938*0 = 384.434, or approximately 384 000 NOK
# - The explanatory power of the model is approximately 18%

# b.
n <- 374
t <- (12.938-0)/1.444
df <- n - 2
p.verdi <- pt(t, df, lower.tail = FALSE)
print(t); print(p.verdi)
# Since the p-value (= 0.00) is less than significance level (= 0.05), the null hypothesis is rejected. 
# Thus, we find statistical support for the alternative hypothesis stating that work experience has a positive effect on 
# the yearly salary.