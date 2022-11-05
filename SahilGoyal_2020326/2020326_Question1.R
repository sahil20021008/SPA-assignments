rm(list=ls())
set.seed(12345)
library(stats)
# question 1 part a
t <- readline(prompt = "Enter the value of t: ")
t <- as.integer(t)
d<-rbinom(t, size = 1, prob = 0.4)
plot(d,main = "Scatter plot for p = 0.4",xlab = "Instances",ylab = "Success(=1)/Failure(=0)")
# question 1 part b
p<-pgeom(0:t,0.4)
plot(p,type="l",main = "Cumulative Distribution of first inter arrival time for time t",xlab = "Number of Instances",ylab="Probability")
# question 1 part c
plot(dbinom(0:50,size=t,prob=0.4),main = "Probability Density function(p=0.4)",xlab="Number of Earthquakes",ylab="Probability")
plot(dbinom(0:50,size=t,prob=0.9),main = "Probability Density function(p=0.9)",xlab="Number of Earthquakes",ylab="Probability")