library(shiny)

bmi_func <- function(wt, ht) wt / ((ht/100) * (ht/100))
body_type <- function(bmi) ifelse(bmi >= 19 & bmi <= 25, "Normal", ifelse(bmi > 25 & bmi <= 29, "Overweight",ifelse(bmi > 30, "Obese","Underweight")))

shinyServer(function(input, output) {
  

  
  output$bmi <- renderPrint({bmi_func(input$wt, input$ht)})
  
  ifelse(bmi_func(input$wt, input$ht) >= 19 & bmi_func(input$wt, input$ht) <= 25, output$typ <- "Normal", ifelse(bmi_func(input$wt, input$ht) > 25 & bmi_func(input$wt, input$ht) <= 29, output$typ <- "Overweight",ifelse(bmi_func(input$wt, input$ht) > 30, output$typ <- "Obese", output$typ <-"Underweight")))


})
