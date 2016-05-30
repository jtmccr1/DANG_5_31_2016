output$mtcars_plot <- renderPlot({
 
  x<-ggplot(subset(mtcars,cyl==input$cyl),aes(x=mpg,y=qsec,color=as.factor(cyl)))+geom_point()
  print(x)
})
