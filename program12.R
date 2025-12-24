# Cumulative sales data
month <- c("Jan", "Feb", "Mar", "Apr", "May")
sales <- c(100, 200, 300, 400, 500)

# Create step plot
plot(sales, type = "s",
     xaxt = "n",                # suppress default x-axis
     xlab = "Month",
     ylab = "Cumulative Sales",
     main = "Step Plot of Cumulative Sales",
     col = "darkred",
     lwd = 2)

# Add custom x-axis labels
axis(1, at = 1:length(month), labels = month)