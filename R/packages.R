#' Re-load a library
#'
#' Useful for debugging packages to quickly re-load
#' a library after a change
#'
#' It is convenient to define this function in or load aapack 
#' from .RProfile to load every time R starts
#'
#' @param libName name of the package to re-load
#'
#' @examples
#' reload(chb)
#' @export
reload <- function(libName) {
  libNameAsChar <- as.character(substitute(libName))
  require(libNameAsChar, character.only=TRUE) # load it just in case it is not loaded to avoid throwing an error
  detachExpression <- paste('package:', libNameAsChar, sep='')
  detach(detachExpression, unload=TRUE, character.only = TRUE)
  library(libNameAsChar, character.only=TRUE)
}


#' TODO: make a function called unload which will be a quick handle for detach('package:packageName', unload=TRUE)
