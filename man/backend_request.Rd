% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/send_request.R
\name{backend_request}
\alias{backend_request}
\title{Send HTTP request to backend server}
\usage{
backend_request(q, n.tries = 2, method = "GET")
}
\arguments{
\item{q}{Query string}

\item{n.tries}{Number of tries}

\item{method}{HTTP method to use}
}
\value{
Data frame.
}
\description{
Send HTTP request to backend server
}
\keyword{internal}
