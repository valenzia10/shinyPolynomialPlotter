library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Polynomial plotter"),
  sidebarPanel(
    tags$head( tags$script(src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS_HTML-full", type = 'text/javascript'),
               tags$script(src = 'https://c328740.ssl.cf1.rackcdn.com/mathjax/2.0-latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML', type = 'text/javascript'),
               tags$script( "MathJax.Hub.Config({tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}});", type='text/x-mathjax-config')
    ),
    h4('Input the polynomial coefficients below'),
    numericInput('id5','$\\alpha_5 \\cdot x^5$',0,min=-20,max=20,step=0.1),
    numericInput('id4','$\\alpha_4 \\cdot x^4$',0,min=-20,max=20,step=0.1),
    numericInput('id3','$\\alpha_3 \\cdot x^3$',0,min=-20,max=20,step=0.1),
    numericInput('id2','$\\alpha_2 \\cdot x^2$',0,min=-20,max=20,step=0.1),
    numericInput('id1','$\\alpha_1 \\cdot x^1$',0,min=-20,max=20,step=0.1),
    numericInput('id0','$\\alpha_0$',0,min=-200,max=200,step=0.1),
    submitButton('Plot')
  ),
  mainPanel(
    p('After setting the coefficients, a plot of the corresponding polynomial over the data range from -10 to 10 will appear below:'),
    plotOutput("polyPlot")
  )
))