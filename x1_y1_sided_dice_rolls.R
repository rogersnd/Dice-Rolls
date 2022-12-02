# Sum of dice rolls with x1 standard dice
# Each die has y1 sides with values ranging from 1:y1
# Default: 2 standard 6-sided dice
x1_y1_sided_dice <- function(x1 = 2, y1 = 6) {
  sum1 <- 0
  for(i in 1:x1){sum1 <- sum1 + sample(1:y1, size = 1)}
  return(sum1)
}

# To roll x1 y1-sided dice and collect the sum of all the rolls, call function x1_y1_sided_dice()
x1_y1_sided_dice()

# Check for accuracy through simulation with following values:
#   x1 = 2 (default)
#   y1 = 6 (default)

# Initialize container vector res1 to store results
res1 <- rep(0, 3600)
# Run for-loop for length(res1) iterations
for(i in 1:length(res1)){
  res1[i] <- x1_y1_sided_dice()
}

# Histogram for Sum of x1 y1-Sided Dice Rolls:
hist(res1)
# For the histogram for res1, I expect a roughly symmetric distr. centered at the number of dice * the expectation value per single die.
#    Note: the expectation value for a single y1-sided die is the sum of the sequence 1:y1 divided by the total number of sides (y1)

factor_levels1 <- factor(res1)
# Contingency table for factor levels
table(res1)