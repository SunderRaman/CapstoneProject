#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

#load("ngrams_and_badwords.RData", envir=.GlobalEnv)
#source("nextword.R")

source("C:\\Projects\\R\\Course-10-CapstoneProject\\Project\\PredictNextWord.R")

nextw <- function(phrase) {
    return(findWord(phrase))
}

shinyServer(function(input, output) {

    phraseGo <- eventReactive(input$goButton, {
      input$phrase <- "en-US"
    })
    output$stats <- renderText({
      numword <- length(strsplit(input$phrase," ")[[1]])
      numchar <- nchar(input$phrase)
      paste("You've written ", numword, " words and ", numchar, "characters")
    })
    output$nextword <- renderText({
      result <- nextw(phraseGo(), input$lang)
      paste0(result)
    })
    output$stats2 <- renderText({
      numword <- length(strsplit(input$phrase2," ")[[1]])
      numchar <- nchar(input$phrase2)
      paste("You've written ", numword, " words and ", numchar, "characters")
    })
    output$nextword2 <- renderText({
      result <- nextw(input$phrase2)
      paste0(result)
    })

})