\name{write_csvs}
\alias{write_csvs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Write csv files of the dataframes created by `run()`
}
\description{
This function creates csv files named "nlsDatabase.csv" and "nlsErrorLog.csv" which contain the comparison results of different packages' functions for nls with base `nls`.
}
\usage{
write_csvs(spreadsheet, spreadsheet_error)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{spreadsheet}{
Takes in the dataframe that will write to "nlsDatabase.csv".
}
  \item{spreadsheet_error}{
Takes in the dataframe that will write to "nlsErrorLog.csv".
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (spreadsheet, spreadsheet_error)
{
    write.table(spreadsheet, file = "nlsDatabase.csv", append = TRUE,
        sep = ",", col.names = FALSE, row.names = FALSE)
    write.table(spreadsheet_error, file = "nlsErrorLog.csv",
        append = TRUE, sep = ",", col.names = FALSE, row.names = FALSE)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
