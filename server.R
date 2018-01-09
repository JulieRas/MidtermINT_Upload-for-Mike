library(shiny)
shinyServer(function(input, output) {
  output$out1 <- renderText(input$box1)
  output$plot <- renderPlot({
    input$newplot
    plot(trees)
  })
  output$out2 <- renderText(input$box2)
  output$plot <- renderPlot({
    input$newplot
    plot(trees)
  })
}
)