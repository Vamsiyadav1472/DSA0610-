# Population data
year <- c(2010, 2011, 2012, 2013, 2014)
population <- c(1000, 1020, 1040, 1060, 1080)

# Create line plot
plot(year, population,
     type = "o",           # 'o' for both points and lines
     col = "darkgreen",    # line color
     pch = 16,             # point style
     xlab = "Year",
     ylab = "Population (millions)",
     main = "Population Growth Over Years")