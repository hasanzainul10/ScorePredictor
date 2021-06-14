library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(plotly)
library(DT)
mydata <- read.csv("StudentsPerformance.csv")

ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "My Dashboard"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Home", tabName = "home"),
        menuItem("Histograms", tabName = "histo",
                 menuSubItem("Gender", tabName = "histogramg"),
                 menuSubItem("Parent's Education", tabName = "histogrampe"),
                 menuSubItem("Race", tabName = "histogramr"),
                 menuSubItem("Lunch", tabName = "histograml")),
        menuItem("Box Plots", tabName = "boxo",
                 menuSubItem("Gender", tabName = "boxplotsg"),
                 menuSubItem("Parent's Education", tabName = "boxplotspe"),
                 menuSubItem("Race", tabName = "boxplotsr"),
                 menuSubItem("Lunch", tabName = "boxplotsl")),
        menuItem("Heatmaps", tabName = "mapo",
                 menuSubItem("Gender", tabName = "mapg"),
                 menuSubItem("Parent's Education", tabName = "mappe"),
                 menuSubItem("Race", tabName = "mapr"),
                 menuSubItem("Lunch", tabName = "mapl")),
        menuItem("Prediction", tabName = "prediction")
      )
    ),
    dashboardBody(
      tabItems(
        tabItem("home",
                h1("SCORE PREDICTOR"),
                box(width = 12, p("On this application, we are using 'Student Performance in Exams' dataset. From this
                  dataset, we have made some visualizations on the factors affecting student's performances and
                  also made a prediction part on the mathematics score based on the factors.")),
                h2("Dataset"),
                DT::dataTableOutput("mydata")
        ),
        tabItem("histogramg",
                box(plotOutput("hist1")),
                box(plotOutput("hist2")),
                box(plotOutput("hist3"))
        ),
        tabItem("histogrampe",
                box(plotOutput("hist4")),
                box(plotOutput("hist5")),
                box(plotOutput("hist6"))
        ),
        tabItem("histogramr",
                box(plotOutput("hist7")),
                box(plotOutput("hist8")),
                box(plotOutput("hist9"))
        ),
        tabItem("histograml",
                box(plotOutput("hist10")),
                box(plotOutput("hist11")),
                box(plotOutput("hist12"))
        ),
        tabItem("boxplotsg",
                box(plotOutput("box1")),
                box(plotOutput("box2")),
                box(plotOutput("box3"))
        ),
        tabItem("boxplotspe",
                box(plotOutput("box4")),
                box(plotOutput("box5")),
                box(plotOutput("box6"))
        ),
        tabItem("boxplotsr",
                box(plotOutput("box7")),
                box(plotOutput("box8")),
                box(plotOutput("box9"))
        ),
        tabItem("boxplotsl",
                box(plotOutput("box10")),
                box(plotOutput("box11")),
                box(plotOutput("box12"))
        ),
        tabItem("mapg",
                box(plotOutput("map1")),
                box(plotOutput("map2")),
                box(plotOutput("map3"))
        ),
        tabItem("mappe",
                box(plotOutput("map4")),
                box(plotOutput("map5")),
                box(plotOutput("map6"))
        ),
        tabItem("mapr",
                box(plotOutput("map7")),
                box(plotOutput("map8")),
                box(plotOutput("map9"))
        ),
        tabItem("mapl",
                box(plotOutput("map10")),
                box(plotOutput("map11")),
                box(plotOutput("map12"))
        ),
        tabItem("prediction",
                box(selectInput("gender", "Gender:", c("female","male"))),
                box(selectInput("race", "Race:", c("group A","group B", "group C", "group D", "group E"))),
                box(selectInput("parent", "Parent's Education:", c("bachelor's degree", "some college",
                                                                   "master's degree", "associate's degree",
                                                                   "high school", "some high school"))),
                box(selectInput("lunch", "Lunch:", c("standard", "free/reduced"))),
                box(selectInput("testprep", "Test Preparation", c("none", "completed"))),
                box(sliderInput("wrintingscore", "Writing Score:",
                                min = 0, max = 100, value = 70
                )),
                
                box(title = "This is the prediction for mathematics score based on the factors:",
                    textOutput("prediction")),
                
        )
      )
    )
  )
)