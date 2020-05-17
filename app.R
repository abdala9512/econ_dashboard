#
#    ECONOMIC AND FINANCIAL DASHBOARD
#    Dashboard with macroeconomic and financial analysis
#    
#
#     Author: Miguel Arquez Abdala
#     email: miguel.arquez12@gmail.com
#     
#     GitHub:https://github.com/abdala9512/econ_dashboard
#     
#     Link:  https://arquez.shinyapps.io/econ_dashboard/



# APP components
source("ui.R")
source("server.R")


shinyApp(ui = ui, server = server)