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
\item{x}{a vector of strings}
}
\value{
a dataframe of word rankings
}
\examples{
warriner(c("WALRUS", "Jerk", "paradise"))
##          valence arousal dominance
## walrus   5.79    3.95    5.23
## jerk     2.43    6.45    4.84
## paradise 7       4.82    7.9
}
