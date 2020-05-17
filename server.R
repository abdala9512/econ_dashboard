

# Server
library(aws.s3)
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(dashboardthemes)


# -------------------------------------------------------------------------
# Dashboard Server
# -------------------------------------------------------------------------


server <- function(input, output, session){
  

# Main Page ---------------------------------------------------------------

  
  
  output$news_site1 <- renderUI({
    tags$iframe(src="https://es.investing.com/", height=600, width=535)
  })
}