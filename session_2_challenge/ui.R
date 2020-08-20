#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
    # add an image in a new row above title panel
    fluidRow(
        column(10, style='padding-top:10px; padding-bottom:15px;',
               tags$img(src = 'data:image/png;base64,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',
                        width = '100px')
        )
    ),
    # Application title
    titlePanel("Old Faithful Geyser Data"),
    
    # Sidebar with a slider input for number of bins 
    #sidebarLayout(
    fluidRow(
        column(6,
               #sidebarPanel(
               sliderInput("bins",
                           "Number of bins:",
                           min = 1,
                           max = 50,
                           value = 30)
        ),
        
        # Show a plot of the generated distribution
        #mainPanel(
        column(6,
               tabsetPanel(
                   tabPanel("Plot",
                            plotOutput("distPlot")
                   ),
                   tabPanel("Plot2",
                            plotOutput("distPlot2")
                   ))
        ),
    ),
    
    # footer (with three even columns)
    fluidRow(
        column(4, align = "center",
               tags$p("Name: Isabel Johnson")
        ), 
        column(4, align = "center",
               tags$p("email:",
                      tags$a(href = 'mailto: isabel.johnson@aut.ac.nz',
                             'isabel.johnson@aut.ac.nz')
               ),
        ),
        column(4, align = "center",
               tags$p('For information about this course, click',
                      tags$a(href = 'https://www.epi-interactive.com/r-shiny-workshop',
                             'here!',
                             target = '_blank')
                   )
            )
        )
)
