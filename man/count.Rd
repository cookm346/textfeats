\name{count}
\alias{count}
\title{count}
\description{
Compute frequency based text features
}
\usage{
semantics(x)
}
\arguments{
\item{x}{a vector of strings. The strings can either be single words or longer documents.}
}
\value{
a matrix of frequency based features.
}
\examples{
##count(c("i am the WALRUS", "Jerk!!", "very very good"))
                n_words n_unique_words n_chars n_unique_chars n_periods n_commas n_question n_exclamation
##i am the WALRUS       4              4      15             13         0        0          0             0
##Jerk!!                1              1       6              5         0        0          0             2
##very very good        3              2      14              8         0        0          0             0

}
