# Sum of two standard dice rolls
# Each die has 6 sides with values ranging from 1:6
two_standard_dice <- function() {
  sample(1:6, size = 1) + sample(1:6, size = 1)
}

# To roll two standard dice and collect the sum of the rolls, call function two_standard_dice()
two_standard_dice()

# Check for accuracy through simulation:

# Initialize container vector res1 to store results
res1 <- rep(0, 3600)
# Run for-loop for length(res1) iterations
for(i in 1:length(res1)){
  res1[i] <- two_standard_dice()
}

# Histogram for Sum of Two Standard Dice Rolls:
hist(res1)
# For the histogram for res1, I expect a roughly symmetric distr. centered at the number of dice * 3.5
#    Remember: the expectation value for a single standard die is 3.5.

factor_levels1 <- factor(res1)
# Contingency table for factor levels
table(res1)