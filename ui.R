# UI

library("shiny")
library("shinydashboard")
library("shinydashboardPlus")
library("dashboardthemes")


header <- dashboardHeaderPlus()

side_bar <- dashboardSidebar(
  
  
  sidebarMenu(
    
    
    menuItem(tabName = "macro_charts",
             text = "Variables Macroeconómicas",
             icon = icon("bar-chart")),
    
    menuItem(tabName = "fin_variables",
             text = "Variables Financieras",
             icon = icon("coins")),
    
    menuItem(tabName = "",
             text = "Test3",
             icon = icon("chart-line")),
    
    menuItem(tabName ="" ,
             text = "Test1",
             icon = icon("poll")),
    
    menuItem(tabName = "",
             text = "Test1",
             icon = icon("project-diagram")),
    
    menuItem(tabName = "download_tab" ,
             text = "Descarga de datos",
             icon = icon("file-invoice-dollar"),
             menuSubItem(text = "Datos",
                         icon = icon("dot-circle"))),
    
    
    tags$head(tags$style(
      type = 'text/css', 
      HTML("#run_report { width:50%; margin-left: 10px;}"),
      HTML('.content-wrapper { height: auto !important;position:relative; overflow-x:hidden; overflow-y:hidden}'),
      HTML('.navbar-custom-content>.navbar-nav>li>.dropdown-content { width:900px; }')))
    
    
  )
)

body <- dashboardBody()

ui <- dashboardPagePlus(header = header,
                        sidebar = side_bar,
                        body = body)


