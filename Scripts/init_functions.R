#### Useful Functions for the project ####


# Sets the locale depending on the system that executes the code
if (Sys.info()["sysname"] == "Linux") {
        Sys.setlocale(category = "LC_TIME", locale = "en_US.utf-8")
} else if (Sys.info()["sysname"] == "Windows") {
        Sys.setlocale(category = "LC_ALL", locale = "English")
} else if (Sys.info()["sysname"] == "Darwin"){
        Sys.setlocale(category = "LC_ALL", locale =  "en_US.UTF-8")
} else{
        stop(paste("Configure locales for system with name:", Sys.info()["sysname"]))
}



#' Title
#'
#' @param path 
#' @param slash 
#'
#' @return

normalize_path <- function(path, slash = "/"){
        path = sub(pattern =  "\\/\\/", replacement = slash, path)     
        path = sub(pattern =  "\\/", replacement = slash, path) 
        path = sub(pattern =  "\\\\", replacement = slash, path) 
        return(path)
}

#' Title
#'
#' @return

os_path_join <- function(...){
        normalize_path(file.path(...), slash = "/")     
}

#' Title
#'
#' @param ... 
#'
#' @return

p_print <- function(...){
    cat(sprintf(...), "\n")
}


#' Title
#'
#' @param ... 
#'
#' @return

import_library <- function(...){
   gb = lapply(..., function(x){
      if (!x %in% installed.packages()){
          p_print("Library '%s' not found. Installing... ", x)    
          install.packages(x)
      }
      library(x, character.only = TRUE)
      p_print("Library '%s' imported. ", x)
           
   })  
        
}



#' Title
#'
#' @return

load_libraries <- function(){
  import_library("shiny")
  import_library("shinydashboard")
  import_library("dashboardthemes")
  import_library("shinyBS")
  import_library("shinyjs")
  import_library("shinycssloaders")
  import_library("tidyr")
  import_library("dplyr")
  import_library("stringr")
  import_library("ggplot2")
  import_library("scales")
  import_library("DT")
  import_library("XLConnect")
  import_library("shinyauthr")
  import_library("readr")
  import_library("readxl")
  import_library("magrittr")
  import_library("stringi")
  import_library("sodium")
  import_library("lubridate")
  import_library("writexl")
  import_library("xlsx")
}


#' Sets the environment importing the necessary modules, functions,
#' libraries and configured paths
#'
#' @return: None (void)

set_environment <- function(){
        
     '%!in%' <<- Negate('%in%')
     load_libraries()
}


