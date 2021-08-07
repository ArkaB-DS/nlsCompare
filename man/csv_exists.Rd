\name{csv_exists}
\alias{csv_exists}
\title{
Check if "nlsDatabase.csv" and "nlsErrorLog.csv" are present in the directory chosen by `setup_dir`.
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
csv_exists()
}
%- maybe also 'usage' for other objects documented here.
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
function ()
{
    if (!file.exists("nlsDatabase.csv")) {
        write.table(spreadsheet, file = "nlsDatabase.csv", append = TRUE,
            sep = ",", col.names = TRUE, row.names = FALSE)
    }
    if (!file.exists("nlsErrorLog.csv")) {
        write.table(spreadsheet_error, file = "nlsErrorLog.csv",
            append = TRUE, sep = ",", col.names = TRUE, row.names = FALSE)
    }
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
