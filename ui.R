#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Capstone Project - SwiftKey"),
    sidebarPanel(
      textInput('phrase2', 'Write any English Phrase or Text into this Text Box') ,
      submitButton('Submit')
    ), 
    mainPanel(
      h2('Prediction'),
      p('The predicted Next word is '),
      h2(textOutput("nextword2")),
      h5(textOutput("stats2"), align="left"))
      
      
    )
    
  )   

# shinyUI(
#   pageWithSidebar( 
#     titlePanel(h1("Next Word", align="center"),
#              windowTitle = "Capstone Project -- Swiftkey"),
#     sidebarPanel(
#     TextInput('phrase2', 'Write any English Phrase or Text into this Text Box') ,
#     submitButton('Submit')
#   ),
#   mainPanel(
#     h4('The predicted Next word is '), 
#     h2(textOutput("nextword2"))    
#     ),
  # fluidRow(
  #   column(12, offset=3,
  #       tabsetPanel(type = "tabs",
  #                   tabPanel("Prediction",
  #                            "Write any ENGLISH into this text box:",
  #                            textInput("phrase2", label = "", value = ""),
  #                            tags$head(tags$style(type="text/css", "#phrase2 {width: 450px;}")),
  #                            submitButton('Submit'),
  #                            
  #                            fluidRow(
  #                              column(6,
  #                                   "The next word is:",
  #                                   h2(textOutput("nextword2")),
  #                              column(12,
  #                                   h5(textOutput("stats2"), align="left"))
  #                              ))
  #                   )        
  # 
  #       )
  #   )
  # ),
 
# )
# )