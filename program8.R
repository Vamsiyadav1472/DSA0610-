# Load ggplot2
library(ggplot2)

# Create data frame
group <- c(rep("X", 4), rep("Y", 4))
score <- c(80, 85, 78, 92, 88, 76, 80, 84)
data <- data.frame(Group = group, Score = score)

# Create violin plot
ggplot(data, aes(x = Group, y = Score, fill = Group)) +
  geom_violin(trim = FALSE) +
  geom_boxplot(width = 0.1, fill = "white") +
  labs(title = "Violin Plot of Scores by Group",
       x = "Group",
       y = "Score") +
  theme_minimal()