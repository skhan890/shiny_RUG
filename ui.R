library(shiny)

#Infertility dataset ("infert") from base-R's datasets package
library(datasets)


shinyUI(
  
  fluidPage(    
    
    # Give the page a title
    titlePanel("Infertility Distribution"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        
        #selectInput("education", "Education:", 
       #             choices=levels(infert$education)),
        sliderInput("range", "Age Range:",
                    min = min(infert$age),
                    max = max(infert$age),
                    value = c(min(infert$age),max(infert$age))),
        
        
        hr(),
        helpText("Data from the infertility dataset.")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("eduPlot")  
      )
      
    )
  )
)