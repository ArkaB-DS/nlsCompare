\name{numeric_output}
\alias{numeric_output}
\title{
Get numeric output only
}
\description{
This function strips of strips off the non-numeric part of a string that contains ": " in it.
}
\usage{
numeric_output(str)
}
\arguments{
  \item{str}{
Either a string or any other object
}
}
\details{
\code{all(sapply(c("Mean",":"),grepl,str))} checks if both "Mean" and ":" are present in \code{str}. If present, \code{ gsub("^.*: *","",str)} replaces everthing upto (including the  whitespace after) ":" with an empty string. That is, it keeps only what is left after ": ".
}
\value{
Returns a string with only numeric output if the input string contains ":"; otherwise, returns the input as it is.
}
\seealso{
\code{\link{sapply}},\code{\link{gsub}},\code{\link{all}},\code{\link{grepl}}
}
\examples{
str <- "Mean relative difference of 0.000567"
numeric_output(str)
}
