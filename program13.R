# Load required packages
install.packages("ggridges")  # Run only once if not installed
library(ggplot2)
library(ggridges)

# Create data frame
city <- c(rep("City1", 3), rep("City2", 3))
temperature <- c(20, 21, 19, 22, 23, 24)
data <- data.frame(City = city, Temperature = temperature)

# Create ridgeline plot
ggplot(data, aes(x = Temperature, y = City, fill = City)) +
  geom_density_ridges(alpha = 0.6) +
  labs(title = "Temperature Distributions by City",
       x = "Temperature", y = "City") +
  theme_minimal()