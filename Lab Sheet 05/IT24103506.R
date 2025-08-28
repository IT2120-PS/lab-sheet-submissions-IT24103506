#Question 01
setwd("C:\\Users\\vimuk\\OneDrive\\Desktop\\IT24103506")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Dilivery_Times)

#Question 02
breaks <- seq(20, 70, length.out = 10)
hist(Delivery_Times$Delivery_Time,
     breaks = breaks,
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     col = "green",
     border = "black")

#Question 03
# The distribution of delivery time is unimodal and slightly right-skewd.
# Most deliveries occur around 40 minutes, while a few deliveries take much longer,
# creating a tail on the right side of the histogram.

#Question 04
histogram <- hist(Delivery_Times$Delivery_Time,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

breaks <- histogram$breaks
freq <- histogram$counts

classes <- c()
for(i in 1:(length(breaks) - 1)) {
  classes[i] <- paste0("[", breaks[i], ", ", breaks[i+1], ")")
}

freq_table <- cbind(Class_Interval = classes, Frequency = freq)
print(freq_table)

cum_freq <- cumsum(freq)

cum_freq_with0 <- c(0, cum_freq)

plot(breaks, cum_freq_with0, type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red", pch = 16)

cum_table <- cbind(Upper_Class = breaks, Cum_Freq = cum_freq_with0)
print(cum_table)
