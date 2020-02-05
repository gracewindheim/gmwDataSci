# Assignment 2
# question 1

mylag <- function(vec, intlist) {
  #loop through intlist to create lagged vectors
  #final == resulting vector
  #store each lagged vector in temp vector; cbind to final
    #final = cbind(final,temp)
  x = intlist
  for (i in x) {
    print(lag(vec, k=i))
    
  }
  print(vec)
  print(intlist)
}

