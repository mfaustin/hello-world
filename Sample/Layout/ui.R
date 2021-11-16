#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinythemes)

# Define UI for application that draws a histogram
shinyUI(navbarPage("Project 3",
    theme = shinytheme("cerulean"), 

    tabPanel("Plot Page",
    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot"),
            plotOutput("testPlot")
        )
    )
),
 tabPanel("About", "This will be page 2 content"),
tabPanel("Data Exploration", "This will be page 3 content"),
tabPanel("Modeling",
         mainPanel(
             tabsetPanel(
                tabPanel("Modeling Info"),
                tabPanel("Model Fitting"),
                tabPanel("Prediction")
                 
             )
         )
         )
))


