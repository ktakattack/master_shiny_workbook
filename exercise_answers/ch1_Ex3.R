# Extend the app from the previous exercise to allow the user to set the value of the multiplier, y, so that the app yields the value of x * y. 
# The final result should look like this: https://d33wubrfki0l68.cloudfront.net/6a4de45b5dd90ca5c9e9ba6bf90d4be54d5ac8db/dc9e2/demos/basic-app/ex-x-times-y.png

library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),

  sliderInput("y", label = "and y is", min = 1, max = 50, value = 5),
  "then x times y is",
  textOutput("product")
)

server <- function(input, output, session) {
  y <- reactive({
    input$y*input$x
  })
  
  output$product <- renderText({
    y()
  })
}

shinyApp(ui, server)

