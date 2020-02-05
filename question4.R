#question 4

corner = function(mat, spec) {
  
  #check that specifications are within bounds of matrix
  if (length(spec) == 2 && spec[1] <= nrow(mat) && spec[2] <= ncol(mat)) {
    
    #create and fill submatrix
    submat = matrix(data = NA, nrow = spec[1], ncol = spec[2])
  
    for(j in 1:spec[2]){
      for(i in 1:spec[1]){
        submat[i,j] = mat[i,j]
      }
    }
    print(submat)
    
  } else {
    print("Error: vector of integers is not within matrix bounds")
  }
  
}