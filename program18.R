# Load required packages
install.packages("hexbin")  # Run once if not installed
library(ggplot2)
library(hexbin)

# Create data frame
data <- data.frame(
  X = c(1, 2, 3, 4, 5, 6, 7, 8),
  Y = c(2, 3, 4, 5, 6, 7, 8, 9)
)

# Create hexbin plot
ggplot(data, aes(x = X, y = Y)) +
  geom_hex() +
  labs(title = "Hexbin Plot of X and Y Coordinates",
       x = "X", y = "Y") +
  theme_minimal()