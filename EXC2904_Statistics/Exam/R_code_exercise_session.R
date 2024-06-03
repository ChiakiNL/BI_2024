# Exercise 1
# Consider the following sequence for the variable 𝑋
# 2  0   9  4  14  -6  9

# a. Determine 𝑛, 𝑥2, 𝑥5 and 𝑥7.

x <- c(2, 0, 9, 4, 14, -6, 9)

n <- length(x)
print(n)

x2 <- x[2]
print(x2)

x5 <- x[5]
print(x5)

x7 <- x[7]
print(x7)

# b. Perform a descriptive analysis. Compute mean, median, variance and standard deviation.

mean <- mean(x)
print(mean)

median <- median(x)
print(median)

variance <- var(x)
print(variance)

stdev <- sd(x)
print(stdev)

# c. Create a new sequence consisting of 𝑥3, 𝑥4, 𝑥5 and 𝑥6. Compute the sum of the new sequence.

y <- x[3:6]
sum_y <- sum(y)
print(sum_y)

# Exercise2
# 10% of the contacted individuals accept the offer. One afternoon, the student calls 7 potential customers. Let 𝑋 be the number of individuals accepting the offer.

# a. What is the distribution of 𝑋? Derive the probability distribution.
p <- 0.1
n <- 7
x <- 0:n
dbinom(x, n, prob = p)

# dbinomは二項分布の確率質量関数を計算する関数。指定された確率probと試行回数nに基づいて成功回数xの確率を計算する。

# b. Compute 𝐸(𝑋) and 𝑉ar(𝑋)?
expectation <- n * p
var <- n * p * (1 - p)

print(expectation)
print(var)

# c. What is the probability that exactly 2 individuals (out of the 7 that are contacted) accept the offer ?
dbinom(2, n, prob = p)

# d. What is the probability that at least 2 individuals (out of the 7 that are contacted) accept the offer ?
pbinom(1, n, prob = p, lower.tail = FALSE)