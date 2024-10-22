#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr) # manipulation
library(DT) # datatables
library(babynames) # example database

# Define server logic required to draw a histogram
function(input, output, session) {

  output$babynames_table <- DT::renderDT({
    babynames %>%
      # subset 10% of rows
      dplyr::slice_sample(prop = 0.1) %>% 
      # define datatable
      DT::datatable()
  })

}
