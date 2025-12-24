# Load required packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggwaterfall")  # optional package for waterfall plots

library(ggplot2)
library(dplyr)
library(ggwaterfall)

# Create data frame
data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  Amount = c(100, -20, 50, -10, 80)
)

# Create waterfall plot
ggwaterfall(data,
            column_label = "Month",
            column_value = "Amount",
            fill_by_sign = TRUE) +
  labs(title = "Profit and Loss by Month",
       x = "Month", y = "Amount") +
  theme_minimal()