# Introduction

`xlsform_to_html` is a small R project designed to convert a questionnaire to html page.

# xlsform_to_html walk through

## Prerequisite

To be able to use `xlsform_to_html` you will need:

- R: download here: (https://cran.rstudio.com/). 

- R Studio (https://www.rstudio.com/products/rstudio/download/#download)
## Folders and files

Input: put your survey and choices files in csv format.

Internal: source code   

run_me.R: R script to be executed.  

questionnaire.html: Output of the script.

## Quick start

#### run_me.R
```
parameters$title <- ""  
```
The title of your questionnaire (will be placed on the top center on the output)

```
parameters$survey<-""  
parameters$choices<-""
```
The path to your input data files
```
parameters$choices_label<-""
parameters$survey_label<-""
```
Columns' name to use to extract all the questions and chocies. **IF YOU USE MORE THAN ONE LANGUAGE IN YOUR SURVEY, YOU NEED TO MOVE YOUR COLUMN OF INTEREST BEFORE THE OTHER LABEL COLUMNS IN YOUR CSV FILES**   
```
parameters$right_to_left <- TRUE/FALSE
```
To set up your writing system. How should we read the output: from left-to-right (Latin script) or from right-to-left (e.g: Arabic script)  
```
parameters$local_language <- ""
```
Keep it empty if the output text does not contain any special characters.

After initializing all the parameters source the script, wait until the end of the execution. The results is the questionnaire.html.

## R packages used
- devtools
- rstudioapi  
- [koboquest](https://github.com/mabafaba/koboquest)
- tidyverse

## Contact
**hedi.benmustapha@msb.tn**

