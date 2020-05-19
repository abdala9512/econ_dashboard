


library(dplyr)
library(WDI)
library(Quandl)



# World bank data ---------------------------------------------------------


countries <-  c("COL", "BRA", "ARG", "MEX", "PER")

inflation    <- WDI(country = countries, indicator = "FP.CPI.TOTL.ZG")
gdp_growth   <- WDI(country = countries, indicator = "6.0.GDP_growth")
unemployment <- WDI(country = countries, indicator = "ccx_unempr_pop_tot")
cash_balance <- WDI(country = countries, indicator = "GC.BAL.CASH.GD.ZS")

Quandl("")


# -------------------------------------------------------------------------
# Data processing
# -------------------------------------------------------------------------


