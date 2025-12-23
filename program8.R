library(ggplot2)

# Create a data frame
weights_data <- data.frame(
  Weight = c(60, 65, 70, 75, 80, 85, 90, 95, 100)
)

# Density plot
ggplot(weights_data, aes(x = Weight)) +
  geom_density(fill = "lightblue", alpha = 0.7) +
  labs(
    title = "Density Plot of Weights",
    x = "Weight (kg)",
    y = "Density"
  ) +
  theme_minimal()

