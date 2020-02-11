#' pos
#'
#' Fetch parts of speech classes for a vector of strings
#' @param x a vector of strings
#' @return a dataframe of ratings
#' @export

pos <- function(x){

    out <- matrix(NA_real_, length(x), ncol(pos_tags) - 1)

    for(i in seq_along(x)){
        y <- clean_text(x[i])
        inds <- match(y, pos_tags$word)
        inds <- inds[!is.na(inds)]
        if(length(inds) > 1)
            out[i, ] <- colSums(pos_tags[inds , -1])
        else
            out[i, ] <- as.numeric(pos_tags[inds , -1])
    }
    return(out)
}
