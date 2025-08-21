setwd("C:\\Users\\it24103506\\Desktop\\IT24103506")

#Question 01
branch_data<-read.table("Exercise.txt",header =TRUE, sep=",")
head(branch_data)

#Question 02
str(branch_data)

#Question 03
boxplot(branch_data$Sales,
        main = "Boxplot of Sales",
        ylab = "Sales",
        col = "blue")

#Question 04
fivenum(branch_data$Advertising)

summary(branch_data$Advertising)
IQR(branch_data$Advertising)


#Question 05
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower <- Q1 - 1.5 * IQR
  upper <- Q3 + 1.5 * IQR
  outliers <- x[x < lower | x > upper]
  return(outliers)
}
find_outliers(branch_data$Years)