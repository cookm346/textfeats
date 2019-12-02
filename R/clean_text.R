#' Clean Text
#'
#' Clean Text
#' @param x a string
#' @return a vector of strings
#' @export

clean_text <- function(x){
    return(tolower(strsplit(gsub("[^[:alnum:] ]", "", x), " +")[[1]]))
}
