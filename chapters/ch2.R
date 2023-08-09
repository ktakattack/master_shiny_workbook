
# Drop down menu
# library(shiny)
# 
# animals <- c("dog", "cat", "mouse", "bird", "other", "I hate animals")
# 
# ui <- fluidPage(
#   selectInput("state", "What's your favourite state?", state.name),
#   radioButtons("animal", "What's your favourite animal?", animals)
# )
# 
# server <- function(input, output, session) {
#   
# }
# 
# shinyApp(ui, server)

# library(shiny)
# 
# ui <- fluidPage(
#   radioButtons("rb", "Choose one:",
#                choiceNames = list(
#                  icon("angry"),
#                  icon("smile"),
#                  icon("sad-tear")
#                ),
#                choiceValues = list("angry", "happy", "sad")
#   )
# )
# 
# server <- function(input, output, session) {
#   
# }
# 
# shinyApp(ui, server)

library(shiny)

ui <- fluidPage(
  textOutput("text"),
  verbatimTextOutput("print")
)
server <- function(input, output, session) {
  output$text <- renderText("hello!")
  output$print <- renderPrint("hello!")
}

shinyApp(ui, server)
