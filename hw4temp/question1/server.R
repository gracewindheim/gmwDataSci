# HW 4
# Hogwarts shiny app
# Grace Windheim

library(shiny)

shinyServer(
  function(input, output) {
    
    output$ohouse = renderText({
      if (input$id2 == 1) "Ravenclaw!"
      else if (input$id2 == 2) "Hufflepuff!"
      else if (input$id2 == 3) "Gryffindor!"
      else if (input$id2 == 4) "Slytherin!"
      else "Hmm try again"
    })
    
  }
)
