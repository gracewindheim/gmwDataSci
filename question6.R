#question 6
#Grace Windheim

birthday = function(people) {
  
  n = 365
  perm = 1
  
  if (people <= 0) {
    print(0)
  } else {
    
    for (i in 1:people) {
      perm = perm * (n - (i-1))
    }
    cprob = perm / (365^people)
    prob = 1 - cprob
    print(prob)
    
  }
  
}