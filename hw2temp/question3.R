#question 3
#Grace Windheim

continue = TRUE

while (continue) {
  
  response = readline(prompt = "What's your favorite color? (q to quit) >")
  
  print(response)
  continue = (response != "q")
  
  if (continue) {
    x = floor(runif(1, min=0, max=4))
    
    if (x == 0) {
      print("Gryffindor")
    } else if (x == 1) {
      print("Hufflepuff")
    } else if (x == 2) {
      print("Ravenclaw")
    } else {
      print("Slytherin")
    }
  }
  
}