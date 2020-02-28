# HW 4
# Question 3 - BMI calculator
# Grace Windheim

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
 output$bmi = renderText({
   
   h = input$height
   w = input$weight
    
   # Convert height and weight to metric units if needed
   if (input$hunits == "ft") {
     h = 0.3048 * input$height
   }
   
   if (input$wunits == "lb") {
     w = 0.4536 * input$weight
   }
   
   # Calculate BMI using metric formula (weight(kg) / height(m)^2)
   w / (h^2)
   
 })
})
