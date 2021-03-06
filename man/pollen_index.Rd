% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pollen_index.R
\name{pollen_index}
\alias{pollen_index}
\title{A Pollen Index Function}
\usage{
pollen_index(value, date)
}
\arguments{
\item{value}{pollen concentration values}

\item{date}{dates}
}
\description{
This function calculates the Pollen Index (PI), which is implemented as
the average amount of annual pollen collected based on the input data
}
\examples{
data(pollen_count)
df <- subset(pollen_count, site == 'Oz')
pollen_index(value = df$birch, date = df$date)
}
\keyword{pollen}
