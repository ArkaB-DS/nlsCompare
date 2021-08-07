\name{machineId}
\alias{machineId}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generate a one-line machine summary
}
\description{

}
\usage{
machineId()
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
    options(warn = -1)
    sy <- Sys.info()
    cpu <- benchmarkme::get_cpu()
    ramtry <- as.numeric(benchmarkme::get_ram())
    if (!anyNA(ramtry)) {
        ram <- ramtry/(1024^3)
    }
    else {
        ram <- paste(sum(as.numeric(system("wmic MemoryChip get Capacity",
            intern = TRUE)), na.rm = T)/1024^3, "GB")
    }
    machid <<- paste(sy["nodename"], ":", sy["user"], "-", sy["sysname"],
        "-", sy["release"], "|", cpu$model_name, "|", ram, " RAM",
        sep = "")
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
