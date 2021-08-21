\name{create_db}
\alias{create_db}
\title{
Create a dataframe to store the database of comparisons and testings.
}
\description{
This function returns a dataframe that finally will be used to write in `nlsDatabase.csv`.
}
\usage{
create_db()
}
%- maybe also 'usage' for other objects documented here.
\details{
The function creates a dataframe with column names `DateTime`, `MachID`, `FileName`, `Solver`, `Algorithm`, `Control`,  `Parameters`, `SSquares`, `Better`, `RefSol`,`Tags`. The function is wrapper for \code{data.frame}.
}
\value{
Returns a dataframe.
}

\seealso{
\code{\link{create_elog}}, \code{\link{data.frame}}
}
\examples{
database <- create_db()
## NOT RUN
#View(database)
}
