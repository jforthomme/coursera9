# Load the datasets package which provides
# the 'quakes' dataset.
library(datasets)

fluidPage(
    titlePanel("Basic DataTable"),
    
    # Create a new Row in the UI for selectInputs
    fluidRow(
        column(4,
               selectInput("mag",
                           "Magnitude:",
                           c("All",
                             unique(as.character(quakes$mag))))
        ),
    ),
    # Create a new row for the table.
    DT::dataTableOutput("table")
)
