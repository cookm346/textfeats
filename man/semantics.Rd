\name{semantics}
\alias{semantics}
\title{semantics}
\description{
Fetch semantic vectors for words or documents
}
\usage{
semantics(x, vectors)
}
\arguments{
\item{x}{a vector of strings. The strings can either be single words or longer documents.}
}
\item{vectors}{a matrix of word vectors, where each row is a word vector with the word labels stored as rownames}
}
\value{
a dataframe of word or document semantic vectors. Single words from x will have the semantic word vectors from the vectors argument. Longer phrases or documents will be compiled into a fixed length vector by computing the mean of all the vectors in the phrase or document.
}
\examples{
warriner(c("WALRUS", "Jerk", "paradise"))
##          valence arousal dominance
## walrus   5.79    3.95    5.23
## jerk     2.43    6.45    4.84
## paradise 7       4.82    7.9

warriner(c("THE WALRUS ATE the seal", "Jerk", "paradise"))
##                           valence arousal dominance
## THE WALRUS ATE the seal   5.395   3.225      5.43
## Jerk                      2.430   6.450      4.84
## paradise                  7.000   4.820      7.90
}
