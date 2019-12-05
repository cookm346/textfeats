#' pos
#'
#' Fetch parts of speech classes for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

pos <- function(x){
    norms <- read.csv("data/moby_pos.csv")

    return(t(sapply(x, function(y){
        y <- clean_text(y)
        inds <- match(y, norms$word)
        inds <- inds[!is.na(inds)]
        colSums(norms[inds , -1])
    })))
}
