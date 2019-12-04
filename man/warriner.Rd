\name{warriner}
\alias{warriner}
\title{Warriner}
\description{
Fetch norms from Warriner et al (2013) word norms database
}
\usage{
warriner(x)
}
\arguments{
\item{x}{a vector of strings. The strings can either be single words or longer documents.}
}
\value{
a dataframe of word or document ratings
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
