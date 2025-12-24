# Load required package
library(ggplot2)

# Create data frame
data <- data.frame(
  Month = rep(c("Jan", "Feb", "Mar"), each = 2),
  Product = rep(c("A", "B"), times = 3),
  Sales = c(100, 120, 150, 140, 130, 160)
)

# Create spaghetti plot
ggplot(data, aes(x = Month, y = Sales, group = Product, color = Product)) +
  geom_line(size = 1.5) +
  geom_point(size = 3) +
  labs(title = "Sales Over Time by Product",
       x = "Month", y = "Sales") +
  theme_minimal()