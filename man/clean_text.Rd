\name{clean_text}
\alias{clean_text}
\title{Clean text}
\description{
This function coverts text to lowercase, removes non-alpha numeric characters, and vectorizes text by splitting on one or more spaces.
}
\usage{
clean_text(x)
}
\arguments{
\item{x}{a string}
}
\value{
a vector of strings
}
\examples{
clean_text("THIS is an example sentence.   With another 1 sentence!!")
## [1] "this" "is" "an" "example" "sentence" "with" "another" "1" "sentence"
}
