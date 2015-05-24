library(shiny)

shinyUI(
  navbarPage("Body Mass Index Calculator",
             tabPanel("ReadMe",
                      h2("Body Mass Index Calculator"),
                      hr(),
                      h3("Description"),
                      helpText("This App takes weight and height of an individual and calculates body mass index ",
                               " and tells whether the individual is under weight, over weight or right weight"
                               ),
                      h3("Inputs"),
                      p("Height in [cm]"),
                      p("Weight in [kg]"),
                      h3("Output"),
                      p("Body Mass Index [Number]")
             ),
             tabPanel("App",
                      fluidPage(
                        titlePanel("Body Mass Index Calculator"),
                        sidebarLayout(
                          sidebarPanel(
                                        
			    numericInput('wt',"Enter Weight [kg]", 60, min = 10, max = 200, step = 1),     
			    numericInput('ht',"Enter Height [cm]", 150, min = 50, max = 300, step = 1)
                          ),
                          
                          mainPanel(                            
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("Result", h4('Your Body Mass Index (BMI) is '),
                                        			verbatimTextOutput("bmi"),
                                        			h4('Your Body Type is '),
                                        			verbatimTextOutput("typ"))
                            )
                          )
                        )
                      )
             )
  )
)
