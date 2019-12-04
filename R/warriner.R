#' warriner
#'
#' Fetch Warriner et al (2013) ratings for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

warriner <- function(x, single_words = TRUE){
    norms <- read.csv("data/warriner.csv")

    if(single_words){
        x <- clean_text(x)
        return(t(sapply(x, function(y){
            ind <- match(y, norms$word)
            norms[ind , c("valence", "arousal", "dominance")]
        })))
    }
}
