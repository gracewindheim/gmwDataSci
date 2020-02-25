# HW 4
# Question 3 - BMI calculator
# Grace Windheim

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
 if (input$hunits == 2) {
   #convert to feet or vice versa
 }
  
  # Calculate BMI
  
  
  # Print calculated BMI
  output$bmi = renderText()
  
})
