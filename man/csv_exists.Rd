\name{csv_exists}
\alias{csv_exists}
\title{
Check if "nlsDatabase.csv" and "nlsErrorLog.csv" are present
}
\description{
This functions checks if "nlsDatabase.csv" and "nlsErrorLog.csv" are present in the directory chosen by `setup_dir`.
}
\usage{
csv_exists(database, errorlog)
}
\arguments{
\item{database}{
  a dataframe that contains the database of problems, tests and comparsions
}
  \item{errorlog}{
a dataframe that contains the error log of problems, tests and comparsions
}
}
\details{
If the csv files are not present, then they are created and appropriate messages are printed.The function prints " 'nlsDatabase.csv' already exists" if "nls.Database.csv" already exists in the directory chosen by `setup_dir()` and prints " 'nlsDatabase.csv' has been created" otherwise.
Similar actions are taken for "nlsErrorLog".
}
\value{

}
\seealso{
\code{\link{file.exists}},\code{\link{write.table}},
}
\examples{

}
