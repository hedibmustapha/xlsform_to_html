

load_questionnaire_without_data<-function(questions.file, choices.file, choices.label.column.to.use = NULL){
  raw_questionnaire<-read.csv(questions.file) 
  raw_choices<-read.csv(choices.file)
  data_str<-matrix(NA,0,length(raw_questionnaire$name))
  colnames(data_str)<-raw_questionnaire$name
  data_str<-as.data.frame(data_str)
  loaded_questionnaire<-koboquest::load_questionnaire(data = data_str,
                                                      questions.file = questions.file,
                                                      choices.file = choices.file,
                                                      choices.label.column.to.use = choices.label.column.to.use)
  return(loaded_questionnaire)
}


file.opened <- function(path) {
  suppressWarnings(
    "try-error" %in% class(
      try(file(path, 
               open = "w"), 
          silent = TRUE
      )
    )
  )
}


sanitise_survey_label <- function(original_label, survey_names){
  original_label <- sub("::", "..", original_label)
  survey_names <- sub(original_label, "label", survey_names)
  return(survey_names)
}

sanitise_choices_label_listname <- function(original_label,choices_names){
  choices_names <- sub("^list[\\._]name$", "list_name", choices_names)
  original_label <- sub("::", "..", original_label)
  choices_names <- sub(original_label, "label", choices_names)
  return(choices_names)
}

