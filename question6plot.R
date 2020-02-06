#question 6
#create a plot of probability by num people
source("question6.R")

  x = c(1:100)
  for (i in 1:100) {
    
    x[i] = birthday(i)
  }
  r = data.frame(n = 1:100, Probability = x)
  plot(r, main="Probability of two people in a room of n people sharing 
       a birthday")