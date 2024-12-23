install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)

# Create a boxplot with outliers for number of medications
ggplot(data, aes(x = "", y = num_medications)) +
  geom_boxplot(outlier.colour = "blue",    # Change outlier color
               outlier.size = 3,          # Increase outlier size
               outlier.shape = 19) +      # Change outlier shape (solid circle)
  labs(title = "Boxplot of Number of Medications", 
       y = "Number of Medications") +
  theme_minimal()


# Create a boxplot with outliers for num medications
ggplot(data, aes(x = "", y = number_diagnoses)) +
  geom_boxplot(outlier.colour = "purple",    # Change outlier color
               outlier.size = 3,          # Increase outlier size
               outlier.shape = 19) +      # Change outlier shape (solid circle)
  labs(title = "Boxplot of Number of Diagnoses", 
       y = "Number of Diagnoses") +
  theme_minimal()


# Create a boxplot with customized outliers
ggplot(data, aes(x = "", y = num_procedures)) +
  geom_boxplot(outlier.colour = "purple",    # Change outlier color
               outlier.size = 3,          # Increase outlier size
               outlier.shape = 19) +      # Change outlier shape (solid circle)
  labs(title = "Boxplot of Number of Procedures", 
       y = "Number of Procedures") +
  theme_minimal()

str(data$number_emergency)
data$number_emergency <- as.numeric(as.character(data$number_emergency))
# Create a boxplot with customized outliers
ggplot(data, aes(x = "", y = number_emergency)) +
  geom_boxplot(outlier.colour = "purple",    # Change outlier color
               outlier.size = 3,          # Increase outlier size
               outlier.shape = 19) +      # Change outlier shape (solid circle)
  labs(title = "Boxplot of Number of Emergencies", 
       y = "Number of Emergencies") +
  theme_minimal()


