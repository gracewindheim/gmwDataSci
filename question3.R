#question 3

continue = TRUE

while (continue) {
  
  response = readline(prompt = "What's your favorite color? (q to quit) >")
  
  print(response)
  continue = (response != "q")
  
  x = floor(runif(1, min=0, max=4))

  print(x)
  if (x == 1) {
    print("Gryffindor")
  }

  
}