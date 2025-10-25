setwd("C:\\Users\\it24101575\\Desktop\\Lab4")


branch_data <- read.csv("Exercise.txt", header = TRUE)

boxplot(branch_data$Sales_X1, main="Box plot for Sales", col = "lightblie")


summary(branch_data$Advertising_X2)
fivenum(branch_data$Advertising_X2)
IQR(branch_dat$Advertising_X2)

find_outerliers <-function(x){
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR_val <- Q3 - Q1
  lower_bound <-Q1- 1.5 * IQR_val
  upper_bound <-Q3+ 1.5 * IQR_val
  Outliers <- x[x< lowr_bound | x> upper_bound]
  return(Outliers)
}

find_outliers(branch_data$Years_X3)

