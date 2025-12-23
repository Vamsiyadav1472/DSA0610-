library(ggplot2)
library(tidyr)

# Create a data frame
temperature_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

# Reshape data
long_data <- pivot_longer(
  temperature_data,
  cols = starts_with("City"),
  names_to = "City",
  values_to = "Temperature"
)

# Heatmap
ggplot(long_data, aes(x = Month, y = City, fill = Temperature)) +
  geom_tile(color = "black") +
  scale_fill_gradient(low = "yellow", high = "red") +
  labs(
    title = "Monthly Temperature Heatmap",
    x = "Month",
    y = "City"
  ) +
  theme_minimal()

