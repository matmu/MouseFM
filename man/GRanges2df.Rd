% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/granges_conversion.R
\name{GRanges2df}
\alias{GRanges2df}
\title{GenomicRanges::GRanges object to data frame}
\usage{
GRanges2df(granges)
}
\arguments{
\item{granges}{GenomicRanges::GRanges object}
}
\value{
Data frame.
}
\description{
Wrapper for as.data.frame().
}
\examples{
geno.granges = finemap("chr1",
    start = 5000000, end = 6000000,
    strain1 = c("C57BL_6J"), strain2 = c("AKR_J", "A_J", "BALB_cJ"),
    return_obj = "granges"
)

geno = GRanges2df(geno.granges)
}
