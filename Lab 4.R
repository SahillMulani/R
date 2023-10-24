# Sample data
trainee <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
revision_time <- c(4, 9, 10, 14, 4, 7, 12, 22, 1, 17)
exam_mark <- c(31, 58, 65, 73, 37, 44, 60, 91, 21, 84)

data <- data.frame(trainee,revision_time,exam_mark)

# Create a scatter plot
ggplot2::ggplot(data , aes(x = revision_time, y = exam_mark))+
  geom_point()+
  labs(x = "Revision Time (hours)", y = "Exam Mark")+
  ggtitle("Scatter title")

correlation_coefficient <- cor(revision_time, exam_mark)
cat("Correlation coefficient:", correlation_coefficient, "\n")

lm()

model <- lm(exam_mark ~ revision_time, data = data)
summary(model)
