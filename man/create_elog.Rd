\name{create_elog}
\alias{create_elog}
\title{
Create a dataframe to store the error log for the comparisons and testings.
}
\description{
This function returns a dataframe that finally gets written in `nlsErrorLog.csv`.
}
\usage{
create_elog()
}
%- maybe also 'usage' for other objects documented here.
\details{
The function creates a dataframe with column names "DateTime","MachID","FileName",
"Solver","Algorithm","Control" and "Message".
}
\value{
Returns a dataframe.
}
\seealso{
\code{\link{create_db}}, \code{\link{data.frame}}
}
\examples{
errorLog <- create_elog()
## NOT RUN
# View(errorlog)
}
