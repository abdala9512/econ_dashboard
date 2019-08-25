# Grupo Aval Analysis


# Clean environment
rm(list = ls())
gc()

# Create Data path

if(!dir.exists("./Data/")) dir.create("./Data/")

# Disable scientific notation

options(scipen = 999)

# Change prompt
options(prompt = "dash>", continue = " ")

## load convenient functions

source("Scripts/init_functions.R")

## Set up paths and load libraries

set_environment()


