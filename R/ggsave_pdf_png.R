#' Save a pdf and png image in the same directory with the same filename
#' Useful for creating identical versions of a publication figure
#'
#' @param p ggplot object, ggplot object to be saved
#' @param path character, output pdf filepath
#' @param width numeric, output figure width (inches)
#' @param height numeric, output figure height (inches)
#' @return none
#' @examples
#' ggsave_pdf_png(p, 'output/plot_1.png', 8, 4)

ggsave_pdf_png <- function(p, path, width, height){
  
  ggsave(path,
         p,
         useDingbats = FALSE,
         width = width, 
         height = height,
         units = 'in')
  
  ggsave(gsub('.pdf', '.png', path),
         p,
         width = width, 
         height = height,
         units = 'in')
  
}