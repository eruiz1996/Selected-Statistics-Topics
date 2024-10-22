#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr) # manipulation
library(DT) # datatables
library(babynames) # example database

# Define UI for application that draws a histogram
fluidPage(
  DT::DTOutput("babynames_table")
)