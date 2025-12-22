# Age data
age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)

# Create histogram
hist(age,
     breaks = 5,              # number of bins
     col = "orange",
     main = "Age Distribution Histogram",
     xlab = "Age",
     ylab = "Frequency",
     border = "brown")