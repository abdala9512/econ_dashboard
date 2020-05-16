#
#    ECONOMIC AND FINANCIAL DASHBOARD
#    
#     Miguel Arquez Abdala
#     miguel.arquez12@gmail.com
#     
#   https://github.com/abdala9512/econ_dashboard
#     
#   https://arquez.shinyapps.io/econ_dashboard/



# APP components
source("ui.R")
source("server.R")


shinyApp(ui = ui, server = server)