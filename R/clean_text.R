#' Clean Text
#'
#' Clean Text
#' @param x a string
#' @return a vector of strings
#' @export

clean_text <- function(x){
    return(tolower(unlist(strsplit(gsub("[^[:alnum:] ]", "", x), " +"))))
}
