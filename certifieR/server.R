#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  observeEvent(input$submit, {
    
    output$firstName <- renderPrint({ input$name_f})
    output$lastName <- renderPrint({input$name_l})
    output$unids <- renderPrint({input$unid})
    output$courseName <- renderPrint(input$course_names)
    output$emailName <- renderPrint(input$email)
    output$date <- renderPrint({paste("Certified on", Sys.Date()) })
    
  })
  
})
