rm(list = ls())
set.seed(12345)
library(stats)

a_money <- 5
pa <- 0.8
y = c()
y <- append(y,5)
while (T) {
  bernoulli <- sample(0:1, 1, replace = T, prob = c((1 - pa), pa))
  if (bernoulli == 1) {
    a_money <- a_money + 1
  }
  if (bernoulli == 0) {
    a_money <- a_money - 1
  }
  y <- append(y, a_money)
  if (a_money == 0) {
    break
  }
  if (a_money == 10) {
    break
  }
}

plot(y,
     type = "l",
     xlab = "time",
     ylab = "Amount of money A has")
