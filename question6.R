#question 6

birthday = function(people) {
  
  n = 365
  perm = 1
  
  if (people <= 0) {
    print("Probability = 0")
  } else {
    
    for (i in 1:people) {
      perm = perm * (n - (i-1))
    }
    cprob = perm / (365^people)
    prob = 1 - cprob
    print(prob)
    
  }
  
  #create a plot of probability by num people
  x = c(1:100)
  for (i in 1:100) {
    x[i] = birthday(i)
  }
  r = data.frame(n = 1:100, Probability = x)
  plot(r, main="Probability of two people in a room of n people sharing 
       a birthday")
  
}