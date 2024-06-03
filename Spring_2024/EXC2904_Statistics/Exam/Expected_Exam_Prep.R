# Potential exam questions involving R

### P1 Consider the following R code:
x <- c(3, 8, 2, 3, 0, -1, 5, 4)
m <- (1/length(x))*sum(x)
print(m)
# What is the result from running the code? 
# (b) 3.0

### P2 Consider the following R code:
x <- c(4, 2, 0, 4, 5)
y <- (x - 3)/2
print(y)
# What is the result from running the code?

### P3
# A student is working part time for a large electricity supplier, selling subscriptions to potential customers.
# The company is offering a one-year subscription in which the subscriber gets discounted rates the first
# three months and then standard rates thereafter. Potential customers are randomly selected and contacted
# by phone. It is the experience that 10% of the contacted individuals accept the offer. One afternoon, the
# student calls 7 potential customers. Let X be the number of individuals accepting the offer.
# Let 𝑋𝑋 be the number of customers accepting the offer. What is the correct code for computing 𝑃(𝑋 = 2)?

dbinom(2, size = 7, prob = 0.10)
# size回の試行でx回成功する確率を計算します。(成功回数の確率を計算する)

# pbinom(2, size = 7, prob = 0.10) は特定の成功回数以下の累積確率を計算します。

### P4
# Let 𝑋 be random normal variable with expectation equal to 100 and standard deviation equal to 16.
# What is the correct code for computing 𝑃(𝑋 ≥ 130)?

mu <- 100
sigma <- 16
pnorm(130, mean = mu, sd = sigma, lower.tail = FALSE)

### P5
# Let 𝑇 be a 𝑡-distributed random variable with 16 degrees of freedom. We want to determine a value 𝑎
# such that 𝑃(𝑇 ≥ 𝑎) = 0.75. What is the result from running the code?

qt(0.75, df = 16, lower.tail = FALSE)

# qt(p, df, lower.tail = FALSE)は、自由度dfのt分布で、上側確率がpとなるt値を計算します。
# lower.tail = FALSEは、分布の右側（つまり、最大値からpまで）の確率を計算することを指定します。
# 自由度16のt分布で、上側確率が0.75となるt値を計算します。
# これは、t分布の75パーセンタイル（上側）を求めることに相当します。

### P6

# According to the National Institute for Occupational Safety and Health, job stress poses a major threat to
# the health of workers. A National survey of restaurant employees found that 75% said that work related
# stress had a negative impact on their personal lives. A survey among 100 randomly selected employees
# working for a large US restaurant chain showed that 68 of the respondents answered “Yes” to the
# question: “Does work stress have a negative impact on your personal life”.

# As part of the statistical analysis, the following code was implemented in R:
p0 <- 0.75
n <- 100
x <- 68

prop.test(x, n, p = p0, alternative = "two.sided", correct = FALSE)

# Use a significance level of 0.10. What is the correct conclusion?

# (answer) p = 0.68 > α = 0.10 so we don't reject the H0.

### P7

# The Scholastic Aptitude Test (SAT) is a standardized test that is used for college admissions in the United
# States (US). SAT scores are (approximately) normally distributed with mean equal to 1060 points and
# standard deviation equal to 217 points.
# Numerous companies have specialized in preparatory courses for students who will take the SAT test. A
# random sample consisting of 12 students who had taken the course offered by the company SATprep
# achieved the following points on the test:

x <- c(1150, 1270, 1560, 1530, 1220, 1090, 1300, 980, 1370, 1460, 1400, 1390)

# Let 𝑋 be the score on the SAT test for students who prepared for the SAT test by taking the course
# offered by SATprep, and let 𝜇𝜇 be the mean test score for the same group. As part of the statistical analysis,
# the following code was implemented in R:

# x <- c(1150, 1270, 1560, 1530, 1220, 1090, 1300, 980, 1370, 1460, 1400, 1390)

mu0 <- 1200
t.test(x, mu = mu0, alternative = "greater")

# Use a significance level of 0.10. Based on the analysis, which of the alternatives below is not correct?

# t = 2.1541, df = 11, p-value = 0.02713

# (answer) α = 0.10 > p = 0.02713 so we reject the H0.
# Mean of x is 1310 but μ = 1060. So this statement is wrong (c).   

### P8

# The purpose of the following exercise is to examine the effect of work experience on the yearly salary
# using simple regression analysis in R. The data is taken from survey of 374 randomly selected individuals.
# Work experience is here measured in years and the yearly salary is measured in 1000 NOK. The data is
# compiled in the Salary_survey.xlsx. Performing regression analysis in R provides the following results:

# Call:
# lm(formula = Yearly_salary ~ Work_experience)
# Residuals:
#  Min 1Q Median 3Q Max
# -277.57 -73.25 -13.22 56.63 725.00
# Coefficients:
#  Estimate Std. Error t value Pr(>|t|)
# (Intercept) 384.434 10.635 36.150 <2e-16 ***
# Work_experience 12.938 1.444 8.963 <2e-16 ***
# ---
# Signif. codes: 0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# Residual standard error: 132.9 on 372 degrees of freedom
# Multiple R-squared: 0.1776, Adjusted R-squared: 0.1754
# F-statistic: 80.33 on 1 and 372 DF, p-value: < 2.2e-16

# Use a significance level of 0.05.
# Based on the analysis, which of the alternatives below is not correct?

# (Answer) "Residual standard error: 132.9 on 372 degrees of freedom" is wrong.
# Residual standard error is given as 132.9.