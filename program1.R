library(ggplot2)

data <- data.frame(
  Weight = c(60, 65, 70, 72, 75),
  Height = c(170, 175, 168, 180, 178)
)

ggplot(data, aes(Weight, Height)) +
  geom_point(color = "darkgreen", size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Relationship Between Weight and Height") +
  xlab("Weight (kg)") +
  ylab("Height (cm)") +
  theme_classic()
