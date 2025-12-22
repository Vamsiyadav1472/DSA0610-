install.packages("reshape2")
library(reshape2)
library(ggplot2)

temperature_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

melted_data <- melt(temperature_data, id.vars = "Month",
                    variable.name = "City", value.name = "Temperature")

ggplot(melted_data, aes(x = Month, y = City, fill = Temperature)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "lightyellow", high = "red") +
  labs(title = "Monthly Temperatures Heatmap",
       x = "Month", y = "City") +
  theme_minimal()