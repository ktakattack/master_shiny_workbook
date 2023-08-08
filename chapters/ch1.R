# install.packages(c(
#   "gapminder", "ggforce", "gh", "globals", "openintro", "profvis", 
#   "RSQLite", "shiny", "shinycssloaders", "shinyFeedback", 
#   "shinythemes", "testthat", "thematic", "tidyverse", "vroom", 
#   "waiter", "xml2", "zeallot" 
# ))
library(shiny)

ui <- fluidPage(
  selectInput("dataset", label = "Dataset", choices = ls("package:datasets")),
  verbatimTextOutput("summary"),
  tableOutput("table")
)

server <- function(input,output,session){
  dataset <- reactive({
    get(input$dataset, "package:datasets")
  })
  
  output$summary <- renderPrint({
   summary(dataset)
  })
  
  output$table <- renderTable({
    dataset()
  })
}
shinyApp(ui,server)

# fin