# Load required packages
install.packages("ggplot2")
install.packages("lubridate")
install.packages("ggTimeSeries")  # optional for calendar-style heatmaps

library(ggplot2)
library(lubridate)
library(ggTimeSeries)

# Create data frame
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Count = c(10, 12, 15, 8, 20)
)

# Create calendar heatmap
ggplot_calendar_heatmap(data, 'Date', 'Count') +
  scale_fill_gradient(low = "lightyellow", high = "darkred") +
  labs(title = "Daily Activity Count - Calendar Heatmap",
       fill = "Activity Count")