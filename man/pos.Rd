\name{pos}
\alias{pos}
\title{pos}
\description{
Fetch parts of speech tags from Moby parts of speech tags database
}
\usage{
pos(x)
}
\arguments{
\item{x}{a vector of strings. The strings can either be single words or longer documents.}
}
\value{
a dataframe of word or document parts of speech tag for 15 different parts of speech classes. If the input string is a phrase, the sum for each class is computed.
}
\examples{
pos(c("jerk", "the", "joyously"))
## OUTPUT TRUNCATED
##          Noun Plural Noun_Phrase Verb_participle Verb_transitive
## jerk        1      0           0               1               1
## the         0      0           0               0               0
## joyously    0      0           0               0               0

pos(c("the jerk store called", "the", "joyously"))
## OUTPUT TRUNCATED
##                       Noun Plural Noun_Phrase Verb_participle Verb_transitive
## the jerk store called    2      0           0               1               2
## the                      0      0           0               0               0
## joyously                 0      0           0               0               0
}
