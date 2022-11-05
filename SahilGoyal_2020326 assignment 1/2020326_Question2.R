rm(list=ls())
set.seed(12345)
library(stats)
# question 2 part a
t <- readline(prompt = "Enter the value of t: ")
t <- as.integer(t)
d<-rpois(100,lambda=10*t)
plot(density(d),main="Density of the Number of arrivals (lambda = 10)",xlab="Number of Arrivals")
# question 2 part b
p<-rpois(100,lambda=20*t)
plot(density(p),main="Density of the Number of arrivals (lambda = 20)",xlab="Number of Arrivals")
# question 2 part c
plot(cumsum(d),type="l",main = "Total number of visitors for lambda = 10")
p<-rpois(100,lambda=5*t)
plot(cumsum(p),type="l",col="red",main = "Total number of visitors for lambda = 5")
sumdp<-rpois(100,lambda=15*t)
plot(cumsum(sumdp),type="l",col="green",main = "Total number of visitors for lambda = 15(sum of both sites)")
# first interarrival time
d1<-rexp(0:t,10)
d2<-rexp(0:t,5)
d3<-rexp(0:t,15)
plot(d1,type="l")
plot(d2,col="red",type="l")
plot(d3,col="green",type="l")
# cumulative distribution function
plot(ecdf(d1))
plot(ecdf(d2))
plot(ecdf(d3))