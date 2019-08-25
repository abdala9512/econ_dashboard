library("shiny")
library("shinydashboard")
library("shinydashboardPlus")
library("dashboardthemes")



header <- dashboardHeaderPlus()

side_bar <- dashboardSidebar()

body <- dashboardBody()

ui <- dashboardPagePlus(header = header,
                        sidebar = side_bar,
                        body = body)

server <- function(input, output, session){}

shinyApp(ui = ui, server = server)



