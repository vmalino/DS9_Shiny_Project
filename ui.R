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
                verbatimTextOutput("oid2"),
                h3("Application Documentation"),
                "This R application created to test basic features of the Shiny package. The application allows to select one of the temparature scales (Fahrenhiet or Celsius), to enter temperature value, and to get the result of the converion to another scale.",
                h4("Input Elements"),
                "There are 3 input elements:",
                "Input temperature scale selector (by default: Fahrenhiet), ",
                "Slider which allows to select temperature value from the range, and ",
                "Textbox which allows to enter temperature value manually.",
                "The Temperature Value textbox is set by the slider. However, the value entered manually does not change the slider.",
                "The slider range is (-50, 50) degree Celsius and respective values Fahreheit (-58, 122). Such slider settings helps to demonstrate the difference between two temperature scales.",
                h4("Output Elements"),
                "The output is the Temperature Scale to which the conversion was made and the Temperature Value - result of the conversion."
        )
))