#question 6

birthday = function(npeople) {
  
  n = 365
  r = npeople
  #perm = factorial(n) / factorial(n - r)
  #cprob = perm / (365^npeople)

  
  cprob = factorial(n) / ((365^npeople)*(factorial(365-npeople)))
  
  prob = 1 - cprob
  sprintf("Probability = %.2f", prob)
  
  
  
}