# R Course 22 September

library(stats)

# install.packages("MASS")
# install.packages("ggplot2") # Data visualization
# install.packages("readxl")

library(MASS)
library(ggplot2)
library(readxl)

# 1.Built-in Function

head(survey)
names(survey)
summary(survey)

# 2.Inspect and manipulate variable in our data-set

survey$Pulse
summary(survey$Smoke)

attach(survey) # This is a data that I refer to

# 3.Visualize data using boxplot

# boxplot(Pulse~Sex, main = "Boxplot", col = (c("blue", "grey")))
# Use the color-blind friendly color (Blue, pink etc.)

# Exercise 1
# A.Inspect the height and sex variables using the summary() function.
# B.Inspect the relation between height and sex by creating a boxplot.
# C.Color your boxplot and give ita title.

# 4.Save and give a title to your script

# 5.Read files your computer

# read_xlsx("CRSP_index_monthly.xlsx")

# 6.Variables/Objects

CRSP <- read_xlsx("CRSP_index_monthly.xlsx")

head(CRSP, 20)

summary(CRSP)

class(CRSP$`Value-Weighted Return-incl. dividends`)

# 7.Visualize data using a histgram

# Write a title and give it a color
hist(
  CRSP$`Value-Weighted Return-incl. dividends
`,
  main = "Stock market values - Histogram",
  xlab = "Values",
  col = "red"
)


# Exercise2
# A.Store the column "date of observstion" in a variable.

CRSP_dates <- CRSP$`Date of observation`

# B.Inspect the data you have stored using the head(), summary() and class()

head(CRSP_dates)
summary(CRSP_dates)
class(CRSP_dates)

# Year information

years <- format(CRSP$`Date of observation`, "%Y") # Indicates that we want to see the year

head(years)

CRSP_years <- aggregate(CRSP$`Value-Weighted Return-incl. dividends`, by = list(years), mean)

head(CRSP_years)

# 8.Visualize using a barplot from the package ggplot

ggplot(CRSP_years[which(CRSP_years$Group.1<=1979),], aes(x = x, y = Group.1))+
geom_bar(stat = "identity")+
labs(title = "Stock market values 1925-1979", x = "Values", y = "years") # Specify we want the data grouped by values. We don't wanna see everything

# Exercise3
# Create a barplot for the CRSP data using  the library GGplot. Plot the data from 1980-2020.

ggplot(CRSP_years[which(CRSP_years$Group.1>=1980),], aes(x = x, y = Group.1))+
geom_bar(stat = "identity")+
labs(title = "Stock market values 1925-1979", x = "Values", y = "years") # Specify we want the data grouped by values. We don't wanna see everything
