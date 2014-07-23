library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
                  # Application title
                  titlePanel("Growth calculator"),
                  plotOutput("growthPlot", height = "900px"),
                  hr(),
                  fluidRow(
                           column(12,
                                  sliderInput("rev",
                                              "Monthly Revenue:",
                                              min = 0,
                                              max = 500000,
                                              value = 400,
                                              step = 100,
                                              format="$#,##0",
                                              locale="us",
                                              width = "90%"),
                                  br(),
                                  sliderInput("revrate",
                                              "Revenue Monthly Growth Rate:",
                                              min = 0,
                                              max = 10,
                                              value = 0.5,
                                              step = 0.01,
                                              width = "90%"),
                                  br(),
                                  sliderInput("exp",
                                              "Monthly Expense:",
                                              min = 0,
                                              max = 500000,
                                              value = 100000,
                                              step = 100,
                                              format="$#,##0",
                                              locale="us",
                                              width = "90%"),
                                  br(),
                                  sliderInput("exprate",
                                              "Expense Monthly Growth Rate:",
                                              min = 0,
                                              max = 10,
                                              value = 0.1,
                                              step = 0.01,
                                              width = "90%")
                                  )
                           )
                  )
)
