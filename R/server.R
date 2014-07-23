library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot

  output$growthPlot <- renderPlot({
    yrange <- c(0, 1e6)
    ticks <- seq(0, 1e6, 50000)
    labels <- format(ticks, big.mark = ",", scientific = FALSE)
    curve(input$exp*(input$exprate + 1)^x, 0, 120, xlab = "Month", ylab =
          "Revenue/Expense", col = "red", xaxp = c(0, 120, 12), yaxt = "n", ylim = yrange)
    curve(input$rev*(input$revrate + 1)^x, add = TRUE, col = "green")
    axis(2, at = ticks, labels = labels, las = 1, cex.axis = 0.7)
  })
})
