#install.packages("carData") # install data package
#library(carData) # load the data library
#data() # list datasets available
##head(WeightLoss, n=10) # view first 10 data points
#summary(WeightLoss)

# Create a dataframe.
bmi <- c(32,33,34,32,30,29,30,33,27,28)
sex <- c(1,1,1,1,1,2,2,2,2,2)
df <- data.frame(bmi,sex)
print(df)
summary(df$bmi)

install.packages("dplyr")
library(dplyr)
df %>%
  group_by(sex) %>%
  summarise(mean=mean(bmi))
