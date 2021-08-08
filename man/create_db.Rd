\name{create_db}
\alias{create_db}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a dataframe to store the database of comparisons and testing
}
\description{
This function returns a dataframe that finally gets written in `nlsDatabase.csv`.
}
\usage{
create_db()
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
    database <- data.frame(DateTime = "", FileName = "", Solver = "",
        Algorithm = "", Control = "", Residuals = "", Deviance = "",
        Gradient = "", Parameters = "", Rmat = "", Convergence = "",
        Passed = "", Tags = "", MachID = "")
    return(database)
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
