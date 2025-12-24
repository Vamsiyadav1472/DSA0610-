# Load required package
library(ggplot2)

# Create data frame
data <- data.frame(
  Region = c("North", "South", "East", "West"),
  Sales = c(150, 200, 180, 210)
)

# Create lollipop plot
ggplot(data, aes(x = Region, y = Sales)) +
  geom_segment(aes(x = Region, xend = Region, y = 0, yend = Sales),
               color = "gray", size = 1.5) +
  geom_point(color = "blue", size = 5) +
  labs(title = "Sales by Region (Lollipop Plot)",
       x = "Region", y = "Sales") +
  theme_minimal()