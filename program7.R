# Weight data
weight <- c(60, 65, 70, 75, 80, 85, 90, 95, 100)

# Create density plot
plot(density(weight),
     main = "Density Plot of Weights",
     xlab = "Weight (kg)",
     ylab = "Density",
     col = "purple",
     lwd = 2)