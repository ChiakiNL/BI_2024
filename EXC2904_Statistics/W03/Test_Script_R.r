# Example: Housing prices at Vindern in Oslo, Norway

# Data
sqm <- c(347, 204, 270, 232, 198, 277, 338) # Square meterage of the properties
asking.price <- c(15.90, 11.35, 14.80, 11.60, 14.00, 13.20, 19.80) # Asking prices in millions

# Computing the covariance
cov_sqp_ask <- cov(sqm, asking.price) # sqp = square meterage, ask = asking price
print(cov_sqp_ask)

# Find the regression line (or trend line)
b <- cov_sqp_ask / var(sqm)
a <- mean(asking.price) - b * mean(sqm)
print(b)
print(a)

# Prediction (sqm = 200)
pred <- a + b * 200
print(pred)

# Compute the model fit
R2 <- cor(sqm, asking.price)^2
print(R2)