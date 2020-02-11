#' warriner
#'
#' Fetch Warriner et al (2013) ratings for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

warriner <- function(x){

    out <- matrix(NA_real_, length(x), ncol(norms) - 1)

    for(i in seq_along(x)){
        y <- clean_text(x[i])
        inds <- match(y, norms$word)
        inds <- inds[!is.na(inds)]
        if(length(inds) > 1)
            out[i, ] <- colMeans(norms[inds , c("valence", "arousal", "dominance")])
        else
            out[i, ] <- as.numeric(norms[inds , c("valence", "arousal", "dominance")])

        colnames(out) <- c("valence", "arousal", "dominance")
        rownames(out) <- x
    }
    return(out)
}
