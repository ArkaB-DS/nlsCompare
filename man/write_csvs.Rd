\name{write_csvs}
\alias{write_csvs}
\title{
Write csv files of the dataframes created by \code{run()}
}
\description{
This function creates csv files named "nlsDatabase.csv" and "nlsErrorLog.csv" which contain the comparison results of different packages' functions for nls with base `nls`.
}
\usage{
write_csvs(database, errorlog)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{database}{
Takes in the dataframe created by `create_db()` and modified by `run()`.
}
  \item{errorlog}{
Takes in the dataframe created by `create_elog()` and modified by `run()`.
}
}
\details{
The two list items returned by \code{run()}, which are the modified database and errorlog dataframes created by \code{create_db} and \code{create_elog()},  are written into csv files named "nlsDatabase.csv" and "nlsErrorLog.csv" in the directory chosen by \code{setup_dir()}.
}
\note{
Currently, only files with ".csv" format are written, with names "nlsDatabase.csv" and "nlsErrorLog.csv".
}

\seealso{
\code{\link{write.table}}
}
\examples{
write_csvs(database,errorlog) #?? better example
}
