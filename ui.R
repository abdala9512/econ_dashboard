# UI


library(dplyr)
library(data.table)
library(tidyr)


library(plotly)
library(ggplot2)


library(DT)
library(shiny)
library(shinydashboard)
library(dashboardthemes)
library(shinydashboardPlus)


source("Scripts/custom_theme.R")

# -------------------------------------------------------------------------
# Dashboard UI
# -------------------------------------------------------------------------


header <- dashboardHeaderPlus(
  title = tagList(
    span(class = "logo-lg", "EconDashboard"),
    img(src = "sidebar_icon.svg")
  ),
  enable_rightsidebar = TRUE,
  
  dropdownMenu(
    type = "notifications",
    notificationItem(
      text = "RPubs",
      href = "https://www.rpubs.com/arquez9512",
      icon = icon("rocket")
    ),
    notificationItem(
      text = "Github",
      href = "https://github.com/abdala9512",
      icon = icon("github")
    )
  )
)

side_bar <- dashboardSidebar(
  
  
  tags$head(tags$style(
    type = 'text/css', 
    HTML("#run_report { width:50%; margin-left: 10px;}"),
    HTML('.content-wrapper { height: auto !important;position:relative; overflow-x:hidden; overflow-y:hidden}'),
    HTML('.navbar-custom-content>.navbar-nav>li>.dropdown-content { width:900px; }'))),
  
  
  sidebarMenu(
    
    menuItem(tabName = "main_page",
             text = "Dashboard",
             icon = icon("codepen")),
    
    
    menuItem(tabName = "news_page",
             text = "Noticias",
             icon = icon("newspaper")),
    
    
    menuItem(tabName = "macro_charts",
             text = "Variables Macroeconómicas",
             icon = icon("bar-chart")),
    
    menuItem(tabName = "fin_variables",
             text = "Variables Financieras",
             icon = icon("coins")),
    
    menuItem(tabName = "forecast_page",
             text = "Pronósticos",
             icon = icon("chart-line")),
    
    menuItem(tabName ="" ,
             text = "Test1",
             icon = icon("poll")),
    
    menuItem(tabName = "",
             text = "Test1",
             icon = icon("project-diagram")),
    
    menuItem(tabName = "",
             text = "Estadística",
             icon = icon("sitemap")),
    
    menuItem(tabName = "",
             text = "Estadística",
             icon = icon("chart-area")),
    
    menuItem(tabName = "",
             text = "Estadística",
             icon = icon("percent")),
    
    menuItem(tabName = "",
             text = "Estadística",
             icon = icon("chart-pie")),
    
    menuItem(tabName = "",
             text = "Análisis geográfico",
             icon = icon("map-pin")),
    
    menuItem(tabName = "",
             text = "Estadística",
             icon = icon("comments-dollar")),
  
    menuItem(tabName = "download_tab" ,
             text = "Descarga de datos",
             icon = icon("file-excel"),
             menuSubItem(text = "Datos",
                         icon = icon("dot-circle")))
    
  )
)

body <- dashboardBody(
    my_theme,
    
    
    tabItems(
      # Main page
      tabItem(
        tabName = "main_page",
      ),
      # News
      tabItem(
        tabName = "news_page",
        htmlOutput("news_site1")
      ),
      # Macroeconomic variables
      tabItem(
        tabName = "macro_charts",
        h1("Variables macroeconómicas")
      ),
      # Financial variables
      tabItem(
        tabName = "fin_variables",
        h1("Variables financieras")
      ),
      # Forecasts
      tabItem(
        tabName = "forecast_page",
        h1("Pronósticos")
      ),
      tabItem(
        tabName = "forecast_page",
        h1("Descarga de datos")
      )
    ),
    
    
)

ui <- dashboardPagePlus(
  header  = header,
  sidebar = side_bar,
  body    = body,
  collapse_sidebar = TRUE,
  footer  = dashboardFooter(
    left_text  = "Miguel Arquez Abdala",
    right_text = "miguel.arquez12@gmail.com"
  )
)


