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
      numericInput('height', 'Numeric input, labeled id1', 0, min = 0, max = 10, step = 1),
      checkboxGroupInput("hunits", "Height Units",
                         c("Feet" = "1",
                           "Meters" = "2"))
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
      h4('Your BMI is'),
      verbatimTextOutput("bmi")
    )
  )
))
