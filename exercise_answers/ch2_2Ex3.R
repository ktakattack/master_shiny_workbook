library(shiny)

ui <- fluidPage(
  sliderInput("play", "Animated 0-100", value = 0, min = 0, max = 100, step = 5, animate = TRUE)
  
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)