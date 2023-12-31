# s2. Re-create the Shiny app from Section 2.3.3, this time setting height to 300px and width to 700px. Set the plot “alt” text so that a visually impaired user can tell that its a scatterplot of five random numbers.

library(shiny)

ui <- fluidPage(
  plotOutput("plot", width = "400px")
)
server <- function(input, output, session) {
  output$plot <- renderPlot(plot(1:5), width = 300, height = 700, alt = "scatterplot of 5 numbers")
}

shinyApp(ui, server)