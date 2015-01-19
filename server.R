library(shiny)

x <- seq(-10,10,0.1)
shinyServer(
  function(input, output) {
    output$polyPlot <- renderPlot({
      y <- input$id5*x^5 + input$id4*x^4 + input$id3*x^3 + input$id2*x^2 + input$id1*x + input$id0
      plot(x,y,col='blue',type='l')
    })
  }
)