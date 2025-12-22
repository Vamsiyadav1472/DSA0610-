# Load ggplot2
library(ggplot2)

# Create data frame
data <- data.frame(
  Month = c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar"),
  Region = c("East", "West", "East", "West", "East", "West"),
  Sales = c(200, 150, 220, 170, 210, 160)
)

# Create facet plot
ggplot(data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ Region) +
  labs(title = "Sales by Month and Region") +
  theme_minimal()