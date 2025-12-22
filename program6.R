# Exam scores data
class <- c(rep("A", 4), rep("B", 4))
scores <- c(85, 90, 78, 92, 88, 76, 80, 84)

# Create box plot
boxplot(scores ~ class,
        col = c("lightblue", "lightgreen"),
        main = "Exam Scores by Class",
        xlab = "Class",
        ylab = "Scores",
        border = "darkblue")