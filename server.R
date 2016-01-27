library(shiny)
library(ggplot2)

# Infertility dataset ("infert") from base-R's datasets package
library(datasets)

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  reactive({
    

    
  })
  # Fill in the spot we created for a plot
  output$eduPlot <- renderPlot({
    ## add stuff about the "reactive" bit, so this part doesnt change?
    minAgePicked<-input$range[[1]]
    
    maxAgePicked<-input$range[[2]]
    
    
    foo <- infert[(infert$age%in%(minAgePicked:maxAgePicked)), "education"]
    
    new<-table(foo)/length(foo)
    
    new2<-as.data.frame(new)
    
 
    # Render a barplot

    plot<-barplot(table(foo)/length(foo))
    
    ggplot(new2, aes(x=foo, y = Freq)) + geom_bar(stat="identity")
    
   # plot
    
  })
})

