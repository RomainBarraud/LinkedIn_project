library(shiny)
library(ggplot2)
library(readxl)
library(DT)
library(dplyr)

# Define UI for application that plots features of movies
ui <- fluidPage(
  
  # Title Panel
  titlePanel("Romain's linkedIn connections, 2007 - 2018"),
  
  # Outputs
  plotOutput(outputId = "barplot"), 
  
  # Inputs
  sidebarPanel(
    selectInput(inputId = "a", 
                label = "Color breakdown:",
                choices = c("City", "Country", "Region", "Sector", "Position"), 
                selected = "Region")
  )
)