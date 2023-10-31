#' amino_acids UI Function
#'
#' @description A shiny Module.
#'
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_amino_acids_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' amino_acids Server Functions
#' @importFrom ggplot2 theme
#' @import cdogma
#'
#' @noRd
mod_amino_acids_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns
    output$abundance <- renderPlot({
      if(input$peptide == ""){
        NULL
      } else{
        input$peptide |>
          cdogma::count_aa() +
          ggplot2::theme(legend.position = "none")
      }
    })

  })
}

mod_abundance_ui <- function(id){
  ns <- NS(id)
  tagList(
    shiny::sidebarLayout(
      shiny::sidebarPanel(
        shiny::textAreaInput(
          inputId = ns("peptide"),
          label = "Peptide sequence",
          width = 300,
          height = 100,
          placeholder = "Insert peptide sequence"
        )
      ),
      shiny::mainPanel(
        shiny::plotOutput(
          outputId = ns("abundance")
        )
      )
    ),
    fluidRow(
      column(8, "DNA_sequence"),
      column(4, "random_dna_length", "generate_dna_button")
    ),
    "peptide_sequence"
  )
}


## To be copied in the UI
# mod_amino_acids_ui("amino_acids_1")

## To be copied in the server
# mod_amino_acids_server("amino_acids_1")
