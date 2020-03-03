\name{concreteness}
\alias{concreteness}
\title{concreteness}
\description{
Fetch concreteness norms for words from Brysbaert (2014)
}
\usage{
concreteness(x)
}
\arguments{
\item{x}{a vector of strings. The strings can either be single words or longer documents.}
}
\value{
a dataframe of word or document ratings containing concreteness norms for each word. If x contains elements with more than one word, the mean concretness is computed for each word.
}
\examples{
warriner(c("i am the WALRUS", "Jerk!!", "very very good"))
##                        Concreteness
##    i am the WALRUS     2.796667
##    Jerk!!              3.260000
##    very very good      1.500000

}
