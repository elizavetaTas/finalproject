df <- data.frame(name =  c("0.95"),
                   size = c("0.98"),
                   type_of_data = c("0.99"),      
                 precision_1 = c(0.95, 0.98, 0.99),
                 recall_1 = c(0.95, 0.98, 0.99))
library(ggplot2)

ggplot(data = df) +
  geom_point(mapping = aes(x = recall_1, y = precision_1, color = name, shape = type_of_data, size = size)) +
  labs(color = "Train accuracy", shape = "Validation Accuracy", size = "Test Accuracy")
  #guides(size=FALSE) +
  xlab('Recall') +
  ylab('Precision') +
  ggtitle('Train Classification Report')

  