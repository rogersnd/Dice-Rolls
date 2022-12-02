# Sum of dice rolls with x1 standard 6-sided dice
# Each die has 6 sides with values ranging from 1:6
# Default: 2 standard 6-sided dice
x1_standard_dice <- function(x1 = 2) {
  sum1 <- 0
  for(i in 1:x1){sum1 <- sum1 + sample(1:6, size = 1)}
  return(sum1)
}

# To roll x1 standard dice and collect the sum of all the rolls, call function x1_standard_dice()
x1_standard_dice()


# Check for accuracy through simulation with following value:
#   x1 = 2 (default)

# Initialize container vector res1 to store results
res1 <- rep(0, 3600)
# Run for-loop for length(res1) iterations
for(i in 1:length(res1)){
  res1[i] <- x1_standard_dice()
}

# Histogram for Sum of x1 Standard Dice Rolls:
hist(res1)
# For the histogram for res1, I expect a roughly symmetric distr. centered at the number of dice * the expectation value per single die.
#    Remember: the expectation value for a single standard die is 3.5.

factor_levels1 <- factor(res1)
# Contingency table for factor levels
table(res1)