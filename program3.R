# Sales data
product <- c("A", "B", "C", "D", "E")
sales <- c(300, 450, 500, 350, 400)

# Create bar plot
barplot(sales,
        names.arg = product,
        col = "skyblue",
        main = "Sales by Product",
        xlab = "Product",
        ylab = "Sales",
        border = "blue")