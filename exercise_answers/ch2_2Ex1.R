library(shiny)

ui <- fluidPage(
  textInput("name", label = "", value= "", placeholder = "Your Name")
  
)

  server <- function(input, output, session) {

  }

shinyApp(ui, server)
