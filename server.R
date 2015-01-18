library(shiny)

x <- seq(-100,100,0.5)
shinyServer(
  function(input, output) {
    output$polyPlot <- renderPlot({
      y <- input$id5*x
      plot(x,y,col='blue',type='l')
    })
  }
)