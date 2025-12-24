# Revenue data
year <- c(2015, 2016, 2017, 2018, 2019)
revenue <- c(30, 35, 40, 45, 50)

# Create area plot
plot(year, revenue,
     type = "n",               # set up plot without drawing
     xlab = "Year",
     ylab = "Revenue (in million)",
     main = "Yearly Revenue Area Plot")

# Fill area under the curve
polygon(c(year, rev(year)), c(rep(0, length(revenue)), rev(revenue)),
        col = "lightblue", border = NA)

# Overlay line
lines(year, revenue, col = "blue", lwd = 2)