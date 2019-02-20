# EMPTY WD
rm(list=ls())

# LOAD LIBRARIES
if(!("devtools" %in% installed.packages()[,"Package"])){install.packages("devtools")};require("devtools")
if(!("koboquest" %in% installed.packages()[,"Package"])){install_github("mabafaba/koboquest")};require("koboquest")
if(!("tidyverse" %in% installed.packages()[,"Package"])){install.packages("tidyverse")};require("tidyverse")


source("./internal/internal_functions.R")

run<-function(parameters){
  
    message('loading files...')
    # load inputs
    if(!file.exists(parameters$survey)){
      stop(paste("Survey csv file not found in path",parameters$survey))
    }
  
  if(!file.exists(parameters$choices)){
    stop(paste("Choices file not found in path",paramters$choices))
  }
    
   Sys.setlocale("LC_ALL",parameters$local_language)
   
    survey <- read.csv(parameters$survey)
    choices <- read.csv(parameters$choices)
    
    names(survey) <- sanitize_survey_label(parameters$survey_label,names(survey))
    names(choices) <- sanitize_choices_label_listname(parameters$choices_label,names(choices))
    
    
    q <- load_questionnaire_without_data(questions.file = parameters$survey,
                                         choices.file = parameters$choices,
                                         choices.label.column.to.use = parameters$choices_label
    )
    
    rmarkdown::render("./questionnaire.Rmd",output_file = "./questionnaire.html")
    rstudioapi::sendToConsole("browseURL('./questionnaire.html')")
        
    cat(paste("The questionnaire is in : ", getwd(), sep = ""))
    
}

