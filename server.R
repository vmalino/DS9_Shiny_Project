library(shiny)

toC <- function(x) round((x - 32) / 1.8)
toF <- function(x) round(x * 1.8 + 32)

shinyServer(
        function(input, output, clientData, session) {
                observe({
                        if (input$id1 == "F") {
                                updateSliderInput(session, "id2", min = -58, max = 122)
                        }
                        else {
                                updateSliderInput(session, "id2", min = -50, max = 50)
                        }
                        updateNumericInput(session, "id3", value = input$id2)
                })
                output$oid1 = renderPrint({
                        if (input$id1 == "F") "Celsuis"
                        else "Fahrenheit"
                })
                output$oid2 = renderPrint({
                        if (input$id1 == "F") toC(input$id3)
                        else toF(input$id3)
                })
        }
)