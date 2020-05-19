


library(dplyr)
library(WDI)
library(tidyquant)
library(Quandl)



# World bank data ---------------------------------------------------------


countries <-  c("COL", "BRA", "ARG", "MEX", "PER")

inflation    <- WDI(country = countries, indicator = "FP.CPI.TOTL.ZG")
gdp_growth   <- WDI(country = countries, indicator = "6.0.GDP_growth")
unemployment <- WDI(country = countries, indicator = "ccx_unempr_pop_tot")
cash_balance <- WDI(country = countries, indicator = "GC.BAL.CASH.GD.ZS")


# Yahoo Finance -----------------------------------------------------------

SP_500  <- tq_get("^GSPC", get = "stock.prices", from = " 1990-01-01")
VIX     <- tq_get("^VIX", get = "stock.prices", from = " 1990-01-01")
ftse    <- tq_get("^FTSE", get = "stock.prices", from = " 1990-01-01")

# Criptocurrencies
bitcoin   <- tq_get("BTC-USD", get = "stock.prices", from = " 1990-01-01")
ethereum  <- tq_get("ETH-USD", get = "stock.prices", from = " 1990-01-01")
bt_cash   <- tq_get("BCH-USD", get = "stock.prices", from = " 1990-01-01")


# Currencies
EURUSD   <- tq_get("EURUSD=X", get = "stock.prices", from = " 1990-01-01")
USDJPY   <- tq_get("JPY=X", get = "stock.prices", from = " 1990-01-01")
GPBUSD   <- tq_get("GBPUSD=X", get = "stock.prices", from = " 1990-01-01")
AUDUSD   <- tq_get("AUDUSD=X", get = "stock.prices", from = " 1990-01-01")
EURJPY   <- tq_get("EURJPY=X", get = "stock.prices", from = " 1990-01-01")

# USbonds
TSR_5Y  <- tq_get("^FVX", get = "stock.prices", from = " 1990-01-01")
TSR_10Y <- tq_get("^TNX", get = "stock.prices", from = " 1990-01-01")
TSR_30Y <- tq_get("^TYX", get = "stock.prices", from = " 1990-01-01")


# -------------------------------------------------------------------------
# Data processing
# -------------------------------------------------------------------------


