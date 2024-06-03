# Exercise 9

# 1. Enter the sequence 
x <- c(2, 6, 8, 4, 14, 18, 4)
n <- length(x)
# where «length(x)» is a function that returns the number of elements in x.

# 2. Determine the numbers 𝑥2, 𝑥5 and 𝑥7.
x[2]; x[5]; x[7]


# 3. Compute the median of the sequence.
y <- sort(x, decreasing = FALSE)
y[n/2 + 1]

median(x)

# 4. Compute the sum
sum(x[3:6])

#5. Compute the sum: 𝑥1 + 𝑥2 + 𝑥3 − 𝑥5 − 𝑥6 − 𝑥7.
sum(x[1:3]) - sum(x[5:7])

# Exercise 10

x <- c(2, 6, 9, 4, 9, 3)
n <- length(x)
a <- 2


# 1. Confirm that the following equation is satisfied
sum(a*x)
a*sum(x)


# 2. Confirm that the following equation is satisfied
sum(x + a)
sum(x) + n*a

# 3. Confirm that the following equation is satisfied
sum(x + a)
n*(mean(x) + a)