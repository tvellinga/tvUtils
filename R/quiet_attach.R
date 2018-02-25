#' Quiet Attach
#'
#' @param pkg_list A character vector of packages
#'
#' @return Nothing
#' @export
#'
#' @examples \dontrun{quiet_attach(list("tidyverse", "dt"))}
quiet_attach<-function(pkg_list){
  invisible(
    lapply(
      pkg_list,
      function(x){
        message("Loading ",x)
        suppressWarnings(suppressPackageStartupMessages(library(x, character.only = TRUE, quietly=TRUE, verbose=FALSE)))
      }
    )
  )
}
