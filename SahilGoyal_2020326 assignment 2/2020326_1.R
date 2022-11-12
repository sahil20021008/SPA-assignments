rm(list = ls())
set.seed(12345)
library(stats)

# a part

state <- 1
p1 <- 0.7
p2 <- 0.5
matrix1 = matrix(NA,
                 nrow = 50,
                 ncol = 5)
for (i in 1:5) {
  y = c()
  y <- append(y, 1)
  for (j in 2:50) {
    if (state == 1) {
      bernoulli <- sample(0:1, 1, replace = T, prob = c((1 - p1), p1))
      if (bernoulli == 1) {
        state <- 2
      }
    } else if (state == 2) {
      bernoulli <- sample(0:1, 1, replace = T, prob = c((1 - p2), p2))
      if (bernoulli == 1) {
        state <- 1
      }
    }
    y <- append(y, state)
  }
  matrix1[, i] = y
}

matplot(
  matrix1,
  type = "l",
  xlab = "time",
  ylab = "state",
  lty = 1
)

# b part

P <- matrix(c(0.3, 0.7, 0.5, 0.5),
            nrow = 2,
            ncol = 2,
            byrow = T)
ans <- diag(2)
for (i in 1:50) {
  ans <- ans %*% P
  if (i == 10) {
    print("P 10 is:")
    print(ans)
  } else if (i == 20) {
    print("P 20 is:")
    print(ans)
  } else if (i == 50) {
    print("P 50 is:")
    print(ans)
  }
}
