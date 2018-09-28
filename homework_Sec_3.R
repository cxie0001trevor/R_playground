# Scenario: You are a Data Scientist working for a consulting 
# ﬁrm. One of your colleagues from the Auditing department has
# asked you to help them assess the ﬁnancial statement of 
# organisation X.

# You have been supplied with two vectors of data: monthly 
# revenue and monthly expenses for the ﬁnancial year in question.

# Your task is to calculate the following ﬁnancial metrics:
# - proﬁt for each month
# - proﬁt after tax for each month (the tax rate is 30%)
# - proﬁt margin for each month - equals to proﬁt a after tax 
#   divided by revenue
# - good months - where the proﬁt after tax was greater than the
#   mean for the year
# - bad months - where the proﬁt after tax was less than the mean
#   for the year
# - the best month - where the proﬁt after tax was max for the year
# - the worst month - where the proﬁt after tax was min for the year

# All results need to be presented as vectors.
# Results for dollar values need to be calculated with $0.01 precision,
# but need to be presented in Units of $1,000 (i.e. 1k) with no decimal
# points.
# Results for the proﬁt margin ratio need to be presented in units of
# % with no decimal points.
# Note: 
# You colleague has warned you that it is okay for tax for any given
# month to be negative (in accounting terms, negative tax translates 
# into a deferred tax asset).

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

# Solution:
# 1. proﬁt for each month
revenue.1000 <- round(revenue/1000)
expenses.1000 <- round(expenses/1000)
profit.1000 <- revenue.1000 - expenses.1000 

# 2. proﬁt after tax for each month (30%)
tax.1000 <- 0.3*profit.1000
profit_taxed <- profit.1000 - tax.1000

# 3. proﬁt margin for each month - equals to proﬁt a after tax 
#   divided by revenue
profit_margin <- round(100*profit_taxed/revenue.1000,2)
profit_margin
# - good months - where the proﬁt after tax was greater than the
#   mean for the year
mean_profit <- mean(profit_taxed)
good.months <- profit_taxed > mean_profit
Month <- seq_len(12)
Month[good.months]

# - bad months - where the proﬁt after tax was less than the mean
#   for the year
bad.months <- Month[!good.months]

# - the best month - where the proﬁt after tax was max for the year
best <- profit_taxed == max(profit_taxed)
Month[best]
# The equal syntax invoke the recycling, It acts like:
# (1) max(profit_taxed) = 8140.68
# (2) rep(8140.68, 12)
# (3) then compare with profit_taxed elementwise, and return a 
#     logical vector

# - the worst month - where the proﬁt after tax was min for the year
worst <- profit_taxed == min(profit_taxed)
Month[worst]

#Wrap up
w <-rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit_taxed,
  profit_margin,
  good.months,
  bad.months,
  best,
  worst
)
w






