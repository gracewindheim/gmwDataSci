# HW 4
# Question 3 - BMI calculator
# Grace Windheim

library(shiny)

# Define UI for application that calculates BMI
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMI Calculator"),
  
  # Sidebar with areas for weight and height input 
  sidebarLayout(
    sidebarPanel(
      
      numericInput('height', 'What is your height?', 0, min = 0, step = 1),
      radioButtons("hunits", "Height Units",
                         c("Feet" = "1",
                           "Meters" = "m")),
      numericInput('weight', 'What is your weight?', 0, min = 0, step = 1),
      radioButtons("wunits", "Weight Units",
                   c("Pounds" = "lb",
                     "Kilograms" = "kg"))
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4('Your BMI is'),
      verbatimTextOutput("bmi")
    )
  )
))
