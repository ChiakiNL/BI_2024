# Exercise 8: Solve Exercise 3 using R

x <- c(2, 4, 6, 3, 4, 2, 6, 5)
y <- c(550, 600, 750, 650, 450, 550, 700, 550)

n <- length(x)

# lm(y ~ x)は、yを目的変数（または応答変数）、xを説明変数（または予測変数）とする線形モデルを推定します。
# この関数は、最小二乗法を用いて線形モデルのパラメータ（切片と傾き）を推定します。
est.model <- lm(y ~ x)

# summary(est.model)は、推定されたモデルの詳細なサマリーを提供します。これには、回帰係数、標準誤差、t値、p値などが含まれます。
summary(est.model)

# Compute the 𝑝-value:
# 線形モデルのサマリーからt値を取得します。このt値は、説明変数の係数が0であるという帰無仮説に対するt検定の結果です。
t <- coef(summary(est.model))[2, "t value"]
df <- n - 2
p.value <- pt(t, df, lower.tail = FALSE)
print(p.value)

# Exercise 9: Solve Exercise 4 (d)(e)(f), using R

x <- c(2, 12, 8, 10, 8, 12)
y <- c(13, 26, 20, 27, 16, 24)
n <- length(x) 
est.model <- lm(y ~ x)
summary(est.model)
R2 <- cor(x,y)^2
print(R2)

# Compute the p-value
t <- coef(summary(est.model))[2, "t value"]
df <- n - 2
p.value <- pt(t, df, lower.tail = FALSE)
print(p.value)


# Exercise 10: Solve Exercise 5 (c)(e), using R
x <- c(68.60, 74.04, 134.00, 102.84, 114.00, 82.39)
y <- c(159.90, 129.00, 118.78, 149.00, 120.78, 149.00) 
n <- length(x)

est.model <- lm(y ~ x)
summary(est.model)

R2 <- cor(x, y)^2
print(R2)

# Compute the p-value
t <- coef(summary(est.model))[2, "t value"]
df <- n - 2
p.value <- pt(t, df, lower.tail = FALSE)
print(p.value)

