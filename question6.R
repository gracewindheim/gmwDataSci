#question 6

birthday = function(people) {
  
  n = 365
  r = people
  #perm = factorial(n) / factorial(n - r)
  #cprob = perm / (365^npeople)

  cprob = factorial(n) / ((n^people)*(factorial(n-people)))
  
  prob = 1 - cprob
  sprintf("Probability = %.5f", prob)
  
  
  
}