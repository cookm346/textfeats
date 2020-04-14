#' count
#'
#' Compute frequency based features
#' @param x a vector of strings
#' @export

count <- function(x){
    out <- data.frame(n_words(x),
                   n_unique_words(x),
                   n_chars(x),
                   n_unique_chars(x),
                   n_punc(x))

    colnames(out) <- c("n_words", "n_unique_words", "n_chars", "n_unique_chars",
                       "n_periods", "n_commas", "n_question", "n_exclamation")
    rownames(out) <- substr(x, 1, 25)

    return(out)

}


#' n_words
#'
#' Compute number of words in a string
#' @param x a vector of strings
#' @export
#'

n_words <- function(x){
    return(sapply(x, function(y){length(clean_text(y))}))
}


#' n_unique_words
#'
#' Compute number of unique words in a string
#' @param x a vector of strings
#' @export
#'

n_unique_words <- function(x){
    return(sapply(x, function(y){length(unique(clean_text(y)))}))
}


#' n_chars
#'
#' Compute number of characters in a string
#' @param x a vector of strings
#' @export
#'

n_chars <- function(x){
    return(nchar(x))
}


#' n_unique_chars
#'
#' Compute number of unique characters in a string
#' @param x a vector of strings
#' @export
#'

n_unique_chars <- function(x){
    return(sapply(x, function(y){length(unique(strsplit(y, "")[[1]]))}))
}


#' count_char
#'
#' Count number of occurrences of a given character
#' @param x a vector of strings
#' @export
#'

count_char <- function(x, s){
    y <- gregexpr(paste0("\\", s), x)[[1]]
    y <- y[y > 0]
    return(length(y))
}


#' n_punc
#'
#' Count number of periods, commas, question marks, and commas in a given string
#' @param x a vector of strings
#' @export
#'

n_punc <- function(x){
    return(t(sapply(x, function(y){
            c(count_char(y, "."),
              count_char(y, ","),
              count_char(y, "?"),
              count_char(y, "!"))
        })))
}


