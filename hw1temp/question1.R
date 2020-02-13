# question 1
# Grace Windheim

mylag <- function(L0, intlist) {
  
  if (!isTRUE(all(intlist == floor(intlist)))) stop("Lagged value list must only contain integers")

  #create matrix - default values are NA
  lagged = matrix(nrow = length(L0), ncol = (length(intlist)))
  labels = character(length(intlist)) #vector for labels
  
  endval = length(L0)-1
  
  #fill matrix values
  currcol = 1
  for(val in intlist) {
    start = 1
    
    if(val < length(L0)) {
      for(i in val:endval) {
        lagged[(1 + i), currcol] = L0[start]
        start = start + 1
      }
    }
    
    #create label for the lagged vector
    labels[currcol] = paste("L", val, sep = "")
    currcol = currcol+1
  }
  
  colnames(lagged) = labels #add labels to matrix
  final = cbind(L0, lagged)
  print(final)

}

