source("renv/activate.R")

library(shiny)
library(jsonlite)

ui = fluidPage(
  h1("Shiny App"),
  numericInput("n", "n", 1),
  plotOutput("plot")
)


server = function(input, output) {
  output$plot <- renderPlot( plot(head(cars, input$n)) )
}

shinyApp(ui = ui, server = server)
