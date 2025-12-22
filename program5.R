# Market share data
company <- c("A", "B", "C", "D")
market_share <- c(20, 30, 25, 25)

# Create pie chart
pie(market_share,
    labels = company,
    col = rainbow(length(company)),
    main = "Market Share by Company")