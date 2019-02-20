
########################
########################
# Hi :) PLEASE ENTER ALL YOU PARAMETERS THEN SOURCE THIS FILE. (TOP RIGHT CORNER OF THIS PANEL)
########################

######## YOU CAN IGNORE THIS
if(!("rstudioapi" %in% installed.packages()[,"Package"])){install.packages("rstudioapi")};require("rstudioapi")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
source("./internal/run_master.R")

########################
########################
# PARAMETERS
########################
########################

parameters<-list()


# NAME YOUR QUESTIONNAIRE
parameters$title<- "Area Based Approach Assessment 2019" 

# WHERE ARE YOUR SURVEY AND CHOICES CSV SHEETS (EDIT YOUR CHANGES AFTER ./input/)
parameters$survey<-"./input/aba_questionnaire.csv"
parameters$choices<-"./input/aba_choices.csv"

# YOUR CHOICES AND SURVEY LABELS TO USE (e.g: "label", "label::French", "label::English (en)") IF YOU HAVE MULTIPLE 
# LABLES COLUMNS LANGUAGE PUT THE DESIRED LABEL COLUMN BEFORE ALL OTHER LABEL COLUMNS IN YOUR CSV FILE
parameters$choices_label <- "label::Arabic"
parameters$survey_label <- "label::Arabic"

# IS YOUR WRITING SYSTEM RIGHT-TO-LEFT (like in Arabic or Persian script. SET TO TRUE) OR LEFT-TO-RIGHT (Latin script. SET TO FALSE)
parameters$right_to_left <- TRUE

# IS YOUR TEXT HAS SOME SPECIAL CHARACTERS ? (like "arabic", "persian", "russian" ... characters) IF not leave it ""
parameters$local_language <- "arabic"

########################
########################
# let's go!
########################
#######################

run(parameters)
