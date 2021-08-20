\name{create_runline}
\alias{create_runline}
\title{
Create runlines to be used by \code{run()}
}
\description{
This is a helper unction used by the \code{run} function. It creates the runlines that can used by a nonlinear least squares (nls) function like \code{nls}.
}
\usage{
create_runline(NLSsolver,NLSalgorithm,NLScontrol,NLSdata,
			NLSstart,NLSlower,NLSupper,NLSweights,NLSsubset,
			NLSna.action=NULL,NLSmasked=NULL)
}

\arguments{
  \item{NLSsolver}{
 a string that is the name of an nls function viz. \code{nlxb}.
}
\item{NLSalgorithm}{
a string that is the name of the algorithm used in the solver. For exmaple, "marquardt", "plinear", "port", etc.
}
\item{NLScontrol}{
a list of control settings. See, for example, \code{\link{nls.control}},\code{\link{nls.lm.control}}.
}
\item{NLSdata}{
a dataframe that contains the nonlinear problem data
}
\item{NLSstart}{
a named list or named numeric vector of starting estimates.
}
\item{NLSlower}{
vector of lower bound
}
\item{NLSupper}{
vector of upper bound
}
\item{NLSweights}{
a numeric vector of (fixed) weights. When present, the objective function is weighted least squares.
}
\item{NLSsubset}{
an vector specifying a subset of observations to be used in the fitting process
}
\item{NLSna.action}{
a function which indicates what should happen when the data contain NAs.
}
\item{NLSmasked}{
Character vector of quoted parameter names. See \code{\link{nlxb}}
}
}
\details{

}
\value{
Returns a string used in \code{run}
}
\seealso{
\code{\link{run}},\code{\link{nls}},\code{\link{nlxb}},\code{\link{nls.lm}}
}
\examples{
}
