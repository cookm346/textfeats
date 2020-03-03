#' concreteness
#'
#' Fetch concreteness norms for words from Brysbaert (2014)
#' @param x a vector of strings
#' @return a dataframe of concreteness norms
#' @export

concreteness <- function(x){

    out <- matrix(NA_real_, length(x), 1)

    for(i in seq_along(x)){
        y <- clean_text(x[i])
        inds <- match(y, rownames(concrete_norms))
        inds <- inds[!is.na(inds)]
        if(length(inds) > 1)
            out[i, ] <- mean(concrete_norms[inds , "Conc.M"])
        else
            out[i, ] <- as.numeric(concrete_norms[inds , "Conc.M"])

        colnames(out) <- "Concreteness"
        rownames(out) <- x
    }
    return(out)
}
