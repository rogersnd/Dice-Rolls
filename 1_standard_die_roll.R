# One standard dice roll
# This die has 6 sides with values ranging from 1:6
one_standard_die <- function() {
  sample(1:6, size = 1)
}

# To roll one standard die and collect the value of the roll, call function one_standard_die()
one_standard_die()

# Check for accuracy through simulation:

# Initialize container vector res1 to store results
res1 <- rep(0, 3600)
# Run for-loop for length(res1), (length of res1), iterations
for(i in 1:length(res1)){
  res1[i] <- one_standard_die()
}

# Histogram for One Standard Dice Roll:
hist(res1)
# For the histogram for res1, I expect a uniform distr. where all frequencies are close to the value of length(res1)/6
#    Remember: the expectation value for a single standard die is 3.5.

factor_levels1 <- factor(res1)
# Contingency table for factor levels
table(res1)