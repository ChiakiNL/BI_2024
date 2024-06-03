# Exercise 1
# Consider the following sequence for the variable 𝑋
# 2  0   9  4  14  -6  9

### a. Determine 𝑛, 𝑥2, 𝑥5 and 𝑥7.

x <- c(2, 0, 9, 4, 14, -6, 9)

n <- length(x)
print(n)

x2 <- x[2]
print(x2)

x5 <- x[5]
print(x5)

x7 <- x[7]
print(x7)

### b. Perform a descriptive analysis. Compute mean, median, variance and standard deviation.

mean <- mean(x)
print(mean)

median <- median(x)
print(median)

variance <- var(x)
print(variance)

stdev <- sd(x)
print(stdev)

### c. Create a new sequence consisting of 𝑥3, 𝑥4, 𝑥5 and 𝑥6. Compute the sum of the new sequence.

y <- x[3:6]
sum_y <- sum(y)
print(sum_y)

# Exercise2
# 10% of the contacted individuals accept the offer. One afternoon, the student calls 7 potential customers. Let 𝑋 be the number of individuals accepting the offer.

### a. What is the distribution of 𝑋? Derive the probability distribution.
p <- 0.1
n <- 7
x <- 0:n
dbinom(x, n, prob = p)

# dbinomは二項分布の確率質量関数を計算する関数。指定された確率probと試行回数nに基づいて成功回数xの確率を計算する。

### b. Compute 𝐸(𝑋) and 𝑉ar(𝑋)?
expectation <- n * p
var <- n * p * (1 - p)

print(expectation)
print(var)

### c. What is the probability that exactly 2 individuals (out of the 7 that are contacted) accept the offer ?
dbinom(2, n, prob = p)

### d. What is the probability that at least 2 individuals (out of the 7 that are contacted) accept the offer ?

pbinom(1, n, prob = p, lower.tail = FALSE)

# デフォルトでは、lower.tail = TRUEとなっており、これは分布の左側（つまり、0から指定した値まで）の累積確率を計算します。
# しかし、lower.tail = FALSEと設定すると、分布の右側（つまり、指定した値から最大値まで）の累積確率を計算します。
# pbinomは二項分布から成功回数から確率を計算し、qbinomは確率から成功回数を計算します。

# Exercise3
# The Scholastic Aptitude Test (SAT) is a standardized test that is used for college admissions in the United
# States (US). SAT scores are (approximately) normally distributed with mean equal to 1060 points and
# standard deviation equal to 217 points.

### a. Consider a US university with admission requirement of at least 1150 points on the SAT test.
# What is (approximately) the probability that 3 randomly selected students all satisfy the
# admission requirement?

mu <- 1060
sigma <- 217
x <- 1150
pnorm(1150, mean = mu, sd = sigma, lower.tail = FALSE)

# pnormは正規分布から値から確率を計算し、qnormは確率から値を計算します。

### b. A spokesman from a highly ranked US university told a reporter that the university he represents
# only admit US students with SAT scores among the top 5%. What is the admission requirement
# for this university?

p <- 0.05
qnorm(p, mean = mu, sd = sigma, lower.tail = FALSE)


# Exercise4
# Let 𝑇 be a 𝑡-distributed random variable with 16 degrees of freedom. Solve the following problems:
### a. Compute 𝑃(1.34 ≤ 𝑇 ≤ 2.12).

v <- 16
t1 <- 1.34
t2 <- 2.12
pt(t2, df = v, lower.tail = TRUE) - pt(t1, df = v, lower.tail = TRUE)

# pt関数は、t分布の累積分布関数（CDF）を計算します。

### b. Determine a value α such that 𝑃(𝑇 > α) = 0.75.

p <- 0.75
qt(p, df = v, lower.tail = FALSE)

# Exercise5

# According to the National Institute for Occupational Safety and Health, job stress poses a major threat to
# the health of workers. A National survey of restaurant employees found that 75% said that work related
# stress had a negative impact on their personal lives. A survey among 100 randomly selected employees
# working for a large US restaurant chain showed that 68 of the respondents answered “Yes” to the
# question: “Does work stress have a negative impact on your personal life”. Based on the data, solve the
# following problems:

### a. Compute a two-sided 90% confidence interval for the proportion of employees at the restaurant
# chain who would say “Yes” to the question in the survey.

n <- 100
x <- 68
prop.test(x, n, conf.level = 0.90, correct = FALSE)

# correct = FALSEは、prop.test関数の引数で、連続性補正（continuity correction）を適用するかどうかを指定します。
# 連続性補正は、離散確率分布（例えば二項分布）を連続確率分布（例えば正規分布）で近似するときに、
# 精度を改善するために使用される技術です。
# しかし、この補正は常に必要なわけではなく、場合によっては結果を歪める可能性もあります。

### b. Based on the data, is there reason to think that the proportion of employees at the restaurant
# chain who would say “Yes” to the question in the survey differs from the national proportion of
# 75%? Use a significance level of 0.10.

p0 <- 0.75
n <- 100
x <- 68

prop.test(x, n, p = p0, alternative = "two.sided", correct = FALSE)

# p = 0.68 > α = 0.10
# Since the p-value is greater than significance level, H0 is not rejected.

# Exercise6

# The Scholastic Aptitude Test (SAT) is a standardized test that is used for college admissions in the United
# States (US). SAT scores are (approximately) normally distributed with mean equal to 1060 points and
# standard deviation equal to 217 points.

# Numerous companies have specialized in preparatory courses for students who will take the SAT test. A
# random sample consisting of 12 students who had taken the course offered by the company SATprep
# achieved the following points on the test:

# 1150, 1270, 1560, 1530, 1220, 1090, 1300, 980, 1370, 1460, 1400, 1390

# Let 𝑋 be the score on the SAT test for students who prepared for the SAT test by taking the course
# offered by SATprep.

### a. Compute a two-sided 90% confidence interval for the mean test score achieved by the students
# who prepared for the SAT test by taking the course offered by SAT prep.

x <- c(1150, 1270, 1560, 1530, 1220, 1090, 1300, 980, 1370, 1460, 1400, 1390)
n <- length(x)
mu <- 1060
sigma <- 217

t.test(x, conf.level = 0.90)

# b. SAT prep claims that the students who take their course achieve a mean score of more than 1200
# points on the SAT test. Perform a hypothesis test to see if there is evidence in the data to support
# this claim. Use a significance level of 0.05.

mu0 <- 1200
t.test(x, mu = mu0, alternative = "greater")

# α = 0.05 > p = 0.02713
# Since the significance level is greater than p-value, the H0 is rejected.

# Exercise 7
# The purpose of the following exercise is to examine the effect of work experience on the yearly salary
# using simple regression analysis in R. The data is taken from survey of 374 randomly selected individuals.
# Work experience is here measured in years and the yearly salary is measured in 1000 NOK. The data is
# compiled in the Salary_survey.xlsx.
# Assume that a linear regression model is appropriate for modeling the data. Solve the following
# problems:

### a.
# - Suggest a regression model for the two variables. Estimate the model and write down the
# estimated regression line.
# - What is the estimated yearly salary for an individual with no work experience?
# - How much of the variation in the yearly salary is explained by work experience?

df <- read_excel("../Chiaki Nishihara/Documents/GitHub/BI_2024/Spring_2024/EXC2904_Statistics/Exam/Salary_survey.xlsx")
# View(df)

n <- 374
Yearly_salary <- df$Yearly_salary
Work_experience <- df$Work_experience

est.model <- lm(Yearly_salary ~ Work_experience)
summary(est.model)

# From summary, regression model is: Yearly_salary = 384.434 + 12.938 * Work_experience.

### b.
# − Perform a hypothesis test to see if work experience has a positive effect on the yearly salary.
# Use a significance level of 0.05.

n <- 374
t <- (12.938 - 0) / 1.444
df <- n - 2
p.value <- pt(t, df, lower.tail = FALSE)

# pt関数は、t分布の累積分布関数（CDF）を計算する。lower.tail = FALSEは、右側の確率を計算する。

print(df)
print(t)
print(p.value)

# pvalue s