#' warriner
#'
#' Fetch Warriner et al (2013) ratings for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

warriner <- function(x){
    return(t(sapply(x, function(y){
        y <- clean_text(y)
        inds <- match(y, norms$word)
        inds <- inds[!is.na(inds)]
        colMeans(norms[inds , c("valence", "arousal", "dominance")])
    })))
}
