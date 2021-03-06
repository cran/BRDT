% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bcost_WS.R
\name{bcost_WS}
\alias{bcost_WS}
\title{Warranty Services Cost}
\usage{
bcost_WS(Cw, N, n, c, pi)
}
\arguments{
\item{Cw}{Average cost per warranty claim}

\item{N}{Sales volume}

\item{n}{RDT sample size}

\item{c}{Maximum allowable failures}

\item{pi}{Failure probability}
}
\value{
The result is a vector with two values.
The first value is the expected failure probability in warranty period.
The second value is the expected warranty services cost.
}
\description{
Define the cost function of warranty services (WS) after the decision of the test (for binomial RDT)
}
\examples{
#the n value can be the minimum test sample size obtained from \code{\link{boptimal_n}}.
n_optimal <- 20
pi <- pi_MCSim_beta(M = 1000, seed = 10, a = 1, b = 1)
WScost <- bcost_WS(Cw = 10, N = 1, n = n_optimal, c = 1, pi = pi);
print(WScost[1]) #expected failure probability
print(WScost[2]) #expected warranty services cost
}
\seealso{
\code{\link{bcost_RDT}}, \code{\link{bcost_RG}}, \code{\link{bcost_expected}}
}
