\name{machineId}
\alias{machineId}

\title{
Generate a one-line machine summary
}
\description{
This function creates an informative machine summary that can be used to characterize a machine.
}
\usage{
machineId()
}

\details{
The function gives the nodename, the username, the OS name, the OS release, the CPU model name and RAM (in gigabytes).
}
\value{
Returns a string.
}
\note{
\code{benchmarkme::get_ram()} returns "NA B" for Windows 10. So, a windows specific workaround has been used in it viz. \code{sum(as.numeric(system('wmic MemoryChip get Capacity',intern=TRUE)),na.rm=T)/1024^3} to get the RAM size in gigabytes.
}
\section{Warning}{
\code{options(warn=-1)} has been used inside the code; otherwise, it gives "NAs introduced by coercion".
}

\seealso{
\code{\link{Sys.info}}, \code{\link{get_ram}}, \code{\link{get_cpu}}, \code{\link{system}}
}
\examples{
machid <- machineId()
machid
}
