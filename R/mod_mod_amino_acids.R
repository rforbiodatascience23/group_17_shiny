#' mod_amino_acids UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd
#'
#' @importFrom shiny NS tagList
mod_mod_amino_acids_ui <- function(id){
  ns <- NS(id)
  tagList(

  )
}

#' mod_amino_acids Server Functions
#'
#' @noRd
mod_mod_amino_acids_server <- function(id){
  moduleServer( id, function(input, output, session){
    ns <- session$ns

  })
}

## To be copied in the UI
# mod_mod_amino_acids_ui("mod_amino_acids_1")

## To be copied in the server
# mod_mod_amino_acids_server("mod_amino_acids_1")
