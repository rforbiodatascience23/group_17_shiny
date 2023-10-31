#' amino_acids UI Function
#'
#' @description A shiny Module.
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
#'
#' @noRd
mod_amino_acids_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

sidebarLayout(
  sidebarPanel(
    "peptide_sequence"
  ),
  mainPanel(
    "plot"
  )
)


## To be copied in the UI
# mod_amino_acids_ui("amino_acids_1")

## To be copied in the server
# mod_amino_acids_server("amino_acids_1")