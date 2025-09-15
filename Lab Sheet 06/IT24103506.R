setwd("C:\\Users\\vimuk\\OneDrive\\Desktop\\IT24103506")

# Exercise
#(01)
n <- 50
p <- 0.85

#(i) Distribution of X?
X ~ Binomial(n=50, p=0.85)

#(ii) Probability that at least 47 students passed the test?
# P(X >= 47) = 1 - P(X <= 46)

prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
prob_at_least_47

#(02)
#(i) Random variable (X) = # of calls received in an hour

#(ii) Distribution of X
X ~ Poisson(lambda = 12)

#(iii) Probability that exactly 15 calls are received in an hour?
lambda <- 12
prob_15 <- dpois(15, lambda = lambda)
prob_15
