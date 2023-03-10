% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_comparison_matrix.R
\name{create_comparison_matrix}
\alias{create_comparison_matrix}
\title{Creates row-wise perturbations of compositions from the mean composition}
\usage{
create_comparison_matrix(comparisons, comps, mean_comps)
}
\arguments{
\item{comparisons}{currently two choices:  \code{"one-v-one"} or  \code{"prop-realloc"} (default).}

\item{comps}{the names (character vector) of the compositional variables}

\item{mean_comps}{the mean composition of \code{comps}}
}
\description{
Creates row-wise perturbations of compositions from the mean composition
}
\details{
\code{comparisons = "one-v-one"} creates a matrix with \code{length(comps)} columns and \code{length(comps) * (length(comps) - 1)} rows. 
The rows contain all pairs of variables with 1 and -1 values.

\code{comparisons = "prop-realloc"} creates a matrix with \code{length(comps)} columns and \code{length(comps)} rows. 
 Each rows contains a 1 value for a compositional variable and the remaining values sum to -1 proportional to the \code{mean_comps} value for those variables. 

Note that for both \code{comparisons} options the net change is 0 (each row sums to 0).
}
