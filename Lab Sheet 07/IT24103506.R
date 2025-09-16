setwd("C:\\Users\\vimuk\\OneDrive\\Desktop\\IT24103506")
# Exercise
#(01)
punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)

#(02)
pexp(2, rate = 1/3)

#(03)
#(i) P(IQ > 130)
pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)

#(ii) 95th percentile of IQ
qnorm(0.95, mean = 100, sd = 15)
