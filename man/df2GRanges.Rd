% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/granges_conversion.R
\name{df2GRanges}
\alias{df2GRanges}
\title{Data frame to GenomicRanges::GRanges object}
\usage{
df2GRanges(
  geno,
  chr_name = "chr",
  start_name = "pos",
  end_name = "pos",
  strand_name = NULL,
  ref_version = ref_genome(),
  seq_lengths = NULL,
  is_circular = FALSE
)
}
\arguments{
\item{geno}{Data frame.}

\item{chr_name}{Name of chromosome column. Default is 'chr'.}

\item{start_name}{Name of start position column. Default is 'pos.'}

\item{end_name}{Name of end position column. Default is 'pos'}

\item{strand_name}{Name of end position column. Default is NULL.}

\item{ref_version}{Reference genome version. Default is 'ref_genome()'.}

\item{seq_lengths}{List of sequence lengths with sequence name as key.
Default is NULL.}

\item{is_circular}{Whether genome is circular. Default is FALSE.}
}
\value{
GenomicRanges::GRanges object.
}
\description{
Wrapper for GenomicRanges::makeGRangesFromDataFrame().
}
\examples{
geno = finemap("chr1",
  start = 5000000, end = 6000000,
  strain1 = c("C57BL_6J"), strain2 = c("AKR_J", "A_J", "BALB_cJ")
)

geno$strand = "+"
seq_lengths = stats::setNames(
    as.list(avail_chromosomes()$length),
    avail_chromosomes()$chr
)
geno.granges = df2GRanges(geno,
    strand_name = "strand",
    seq_lengths = seq_lengths
)
}
