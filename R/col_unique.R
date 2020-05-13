#' Get the unique values of a dataframe column
#'
#' @import dplyr
#' @param data data.frame, dataset to be subset
#' @param column character or column object to select
#' @param n numeric, optional, return only the nth record
#' @return vector, unique column values or nth item of unique column values
#' @examples
#' 
#' data <- tibble::tibble(country = c('USA', 'Albania', 'Borneo'), value = c(1, 2, 3))
#' 
#' data %>% col_unique(country)
#' data %>% col_unique(country, 3)
#' 
#' @export

col_unique <- function(data, column, n=NULL){
  
  unique_values <- data %>% dplyr::pull(!!dplyr::enquo(column)) %>% unique() 
  
  if (!is.null(n)){
    return(unique_values[n])
  }else{
    return(unique_values)
  }
}

