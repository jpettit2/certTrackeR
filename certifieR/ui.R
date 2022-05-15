#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Simple ED Certifier"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
         textInput(inputId = "name_f",label = "First Name",placeholder = "Type first name here",),
         textInput(inputId = "name_l",label = "Last Name",placeholder = "Type last name here"),
         textInput(inputId = "unid",label = "UnID",placeholder = "u*******"),
         textInput(inputId = "email",label = "Email",placeholder = "Type email address here"),
         selectizeInput(inputId = "course_names",choices = c("HAZMAT", "PEDS", "MI", "Bedside Manner"),label = "Select Course"),
         actionButton(inputId = "submit",label = "Submit Record")
         
        ),

        # Show a plot of the generated distribution
        mainPanel(
          textOutput("firstName"),
          textOutput("lastName"),
          textOutput("unids"),
          textOutput("courseName"),
          textOutput("emailName"),
          textOutput("date")
        )
    )
))
