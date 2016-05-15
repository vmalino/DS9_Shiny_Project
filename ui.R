#You must also include enough documentation so that a novice user could use your application.
#The documentation should be at the Shiny website itself. Do not post to an external link.

library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Temperature Converter"),
        sidebarPanel(
                radioButtons("id1", "Temperature Scale",
                             c("Fahrenheit" = "F",
                               "Celsius" = "C")),
                sliderInput("id2", "Temperature Value", value = 32, min = -58,
                            max = 122, step = 1),
                numericInput("id3", "", 32, step = 1)
        ),
        mainPanel(
                h3("Result of Conversion"),
                h4("Temperature Scale"),
                verbatimTextOutput("oid1"),
                h4("Temperature Value"),
                verbatimTextOutput("oid2")
        )
))