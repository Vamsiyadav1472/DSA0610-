# Load required packages
install.packages("circlize")  # Run once if not installed
library(circlize)

# Create data frame
data <- data.frame(
  From  = c("A", "A", "B", "B", "C"),
  To    = c("B", "C", "C", "D", "D"),
  Value = c(10, 20, 15, 25, 30)
)

# Create chord diagram
chordDiagram(data, transparency = 0.3)