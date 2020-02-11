#' semantics
#'
#' Fetch semantic wor vectors for words or documents
#' @param x a vector of strings
#' @return a dataframe of semantic vectors
#' @export

semantics <- function(x, vectors){

    out <- matrix(NA_real_, length(x), ncol(vectors))

    for(i in seq_along(x)){
        y <- clean_text(x[i])
        print(y)
        inds <- match(y, rownames(vectors))
        inds <- inds[!is.na(inds)]
        print(inds)
        if(length(inds) > 1)
            out[i, ] <- colMeans(vectors[inds , ])
        else
            out[i, ] <- vectors[inds , ]
    }
    return(out)
}