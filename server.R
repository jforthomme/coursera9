# Load the datasets package which provides
# the 'quakes' dataset.
library(datasets)

function(input, output) {
    
    # Filter data based on selections
    output$table <- DT::renderDataTable(DT::datatable({
        data <- quakes
        if (input$mag != "All") {
            data <- data[data$mag == input$mag,]
        }
        data
    }))
    
}