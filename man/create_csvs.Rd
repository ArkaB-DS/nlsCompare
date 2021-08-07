\name{create_csvs}
\alias{create_csvs}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create dataframes to store comparisons
}
\description{
This function creates `spreadsheet` and `spreadsheet_error` that finally get written in `nlsDatabase.csv` and `nlsErrorLog.csv` respectively.
}
\usage{
create_csvs()
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
    spreadsheet <<- data.frame(DateTime = "", MachID = "", FileName = "",
        Solver = "", Algorithm = "", Control = "", Residuals = "",
        Deviance = "", Gradient = "", Parameters = "", Rmat = "",
        Convergence = "", Passed = "", Tags = "")
    spreadsheet_error <<- data.frame(DateTime = "", MachID = "",
        FileName = "", Solver = "", WhatFails = "", Algorithm = "",
        Control = "", Message = "")
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
