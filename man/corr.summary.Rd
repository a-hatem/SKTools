% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corr.summary.R
\name{corr.summary}
\alias{corr.summary}
\title{Clean corr.test output}
\usage{
corr.summary(corr.test.results, alpha = 0.05)
}
\arguments{
\item{corr.test.results}{corr.test object}

\item{alpha}{Alpha level to test significance}
}
\value{
Dataframe with clean output
}
\description{
Converts corr.test output to tidy dataframe with most important information (IV, DV, r, n, t, p)
}
