library(shiny)
shinyUI(fluidPage(
  titlePanel("Analysing Tree Growth by Volume"),
  
  sidebarLayout(
    sidebarPanel(
      h3("Model 1"),
      textOutput("slopeOut"),
       textInput("box1", "Enter Tab 1 Text:", value = "Correlation 1"),
      h3("Model 2"),
      textOutput("intOut"),
        textInput("box2", "Enter Tab 2 Text:", value = "Correlation 2")

    ),
    mainPanel(
      tabsetPanel(type = "tabs", 
                  tabPanel("Girth", br(), textOutput("out1")), 
                  tabPanel("Height", br(), textOutput("out2")),
                  plotOutput("plot1", brush = brushOpts(
                    id = "brush1"
            ))
    ))
  )
))
