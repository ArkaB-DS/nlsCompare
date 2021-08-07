\name{run}
\alias{run}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Perform comparison of `nls` with other packages; functions for nonlinear least squares
}
\description{
This is the main function of the **nlsCompare** package. It compares with `nls` a solver (for e.g. `nlsr::nlxb` or `minpack.lm::nlsLM`) and uses different algorithms ( for e.g "marquardt", "plinear", "port") and controls from the "methods.csv" file. The names of the problems used in the comparsions are present in "problems.csv". The probelm statements, as of this writing, is in `R/test_files`.
}
\usage{
run()
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

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
}
