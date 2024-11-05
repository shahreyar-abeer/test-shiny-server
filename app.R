source("renv/activate.R")

library(shiny)
library(jsonlite)

ui = fluidPage(
  numericInput("n", "n", 1),
  plotOutput("plot")
)


server = function(input, output) {
  output$plot <- renderPlot( plot(head(cars, input$n)) )
}

shinyApp(ui = ui, server = server)
