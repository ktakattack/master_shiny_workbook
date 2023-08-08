# ch 1 ex 2
# Suppose your friend wants to design an app that allows the user to set a number (x) between 1 and 50, and displays the result of multiplying this number by 5. This is their first attempt:
#   
#   library(shiny)
# 
# ui <- fluidPage(
#   sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
#   "then x times 5 is",
#   textOutput("product")
# )
# 
# server <- function(input, output, session) {
#   output$product <- renderText({ 
#     x * 5
#   })
# }
# 
# shinyApp(ui, server)
# But unfortunately it has an error: " error: object 'x' not found"
#   
#   
#   Can you help them find and correct the error?
  

library(shiny)

ui <- fluidPage(
  sliderInput("x", label = "If x is", min = 1, max = 50, value = 30),
  "then x times 5 is",
  textOutput("product")
)

server <- function(input, output, session) {
  x <- reactive({
    input$x*5
  })

  output$product <- renderText({
    x()
  })
}

shinyApp(ui, server)



