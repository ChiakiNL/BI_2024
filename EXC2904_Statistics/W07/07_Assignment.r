# Exercise_19
# Solve Exercise 15 using R

### Exercise_15
# According to the National Institute for Occupational Safety and Health, job stress poses a major threat to
# the health of workers. A National survey of restaurant employees found that 75% said that work related
# stress had a negative impact on their personal lives. A survey among 100 randomly selected employees
# working for a large US restaurant chain showed that 68 of the respondents answered “Yes” to the
# question: “Does work stress have a negative impact on your personal life”. Based on the data, solve the
# following problems:

# a. Compute a two-sided 90% confidence interval for the proportion of employees at the restaurant
# chain who would say “Yes” to the question in the survey.

n <- 100
x <- 68
prop.test(x, n, conf.level = 0.90, correct = FALSE)

# b. Based on the data, is there reason to think that the proportion of employees at the restaurant
# chain who would say “Yes” to the question in the survey differs from the national proportion of
# 75%? Use a significance level of 0.10.

p0 <- 0.75
n <- 100
x <- 68
prop.test(x, n, p = p0, alternative = "two.sided", correct = FALSE)


# Exercise_20
# Solve Exercise 17 using R

### Exercise_17

# A drug company has developed a new drug designed to treat patients with a certain type of flu. To evaluate
# the effectiveness of the drug, the company carried out a controlled experiment with a total of 282
# participants, all infected by the flu. Among the female participants, 91 out of 149 individuals responded
# positively to the drug. Among the male participants, 72 out of 133 individuals responded positively.
# Let 𝑝1 and 𝑝2 be the proportions of female and male participants, respectively, that respond positively to
# the use of the drug.
# a. Compute a 95% confidence interval for the difference across gender in the proportion of
# individuals that responded positively to the drug.

n1 <- 149
x1 <- 91

n2 <- 133
x2 <- 72

n <- c(n1, n2)
x <- c(x1, x2)

prop.test(x, n, conf.level = 0.95, correct = FALSE)

# b. Perform a hypothesis test to see if the difference across gender in the proportion of individuals
# that responded positively to the drug. Use a significance level of 0.05.

n1 <- 149
x1 <- 91

n2 <- 133
x2 <- 72

n <- c(n1, n2)
x <- c(x1, x2)
prop.test(x, n, alternative = "two.sided", correct = FALSE)