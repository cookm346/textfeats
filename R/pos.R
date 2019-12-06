#' pos
#'
#' Fetch parts of speech classes for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

pos <- function(x){
    return(t(sapply(x, function(y){
        y <- clean_text(y)
        inds <- match(y, pos_tags$word)
        inds <- inds[!is.na(inds)]
        colSums(pos_tags[inds , -1])
    })))
}
