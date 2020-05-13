#' Save a pdf and png image in the same directory with the same filename
#' Useful for creating identical versions of a publication figure
#'
#' @import ggplot2
#' @param p ggplot object, ggplot object to be saved
#' @param path character, output pdf filepath
#' @param width numeric, output figure width (inches)
#' @param height numeric, output figure height (inches)
#' @return none
#' @export

ggsave_pdf_png <- function(p, path, width, height){

  ggplot2::ggsave(path,
         p,
         useDingbats = FALSE,
         width = width,
         height = height,
         units = 'in')

  ggplot2::ggsave(gsub('.pdf', '.png', path),
         p,
         width = width,
         height = height,
         units = 'in')

}
