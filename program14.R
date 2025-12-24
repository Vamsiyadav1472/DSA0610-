library(ggplot2)

data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Before  = c(200, 300, 400, 500, 600),
  After   = c(250, 350, 450, 550, 650)
)

ggplot(data) +
  # line connecting before to after
  geom_segment(aes(y = Product, yend = Product, x = Before, xend = After),
               color = "gray50", size = 2) +
  # points at before and after
  geom_point(aes(x = Before, y = Product), color = "red", size = 4) +
  geom_point(aes(x = After,  y = Product), color = "blue", size = 4) +
  labs(title = "Sales Before and After Campaign",
       x = "Sales", y = "Product") +
  theme_minimal()