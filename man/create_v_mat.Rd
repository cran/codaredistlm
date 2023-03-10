% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_v_mat.R
\name{create_v_mat}
\alias{create_v_mat}
\title{Create ilr basis matrix (V)}
\usage{
create_v_mat(n_comp)
}
\arguments{
\item{n_comp}{the number of compositional variables}
}
\value{
A \code{n_comp} by \code{n_comp - 1} matrix where each column relates to one ilr variable

The ilr basis made so that the numerator (\code{+} values) for the \code{i}th column is in the \code{i}th row. 
All values below the \code{+} value in the column are set to \code{-1} (the denominator).

The ilr basis for 3 compositional vars is 
{\code{(2, -1, -1)/sqrt(6), (0, 1, -1)/sqrt(2)}}.

The ilr basis for 4 comp vars is 
{\code{(3, -1, -1, -1)/sqrt(12), (0, 2, -1, -1)/sqrt(6), (0, 0, 1, -1)/sqrt(2)}}.

etc
}
\description{
Create ilr basis matrix (V)
}
