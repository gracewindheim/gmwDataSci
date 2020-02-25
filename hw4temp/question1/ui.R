# HW 4
# Hogwarts shiny app
# Grace Windheim

library(shiny)

shinyUI(fluidPage(
  #Application title
  titlePanel("The Sorting Hat"),
  
  #sidebar to ask for user input
  sidebarPanel(
    radioButtons("id2", "Which of these 4 colors do you like the most?",
                       c("Blue" = "1",
                         "Yellow" = "2",
                         "Red" = "3",
                         "Green" = "4"),
                 selected = NULL),
    submitButton('Submit')
  ),
  #output the user's Hogwarts house
  mainPanel(
    h4('Your Hogwarts house is'),
    verbatimTextOutput("ohouse")
  )
))

