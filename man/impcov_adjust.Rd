% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/impcov_adjust.R
\name{impcov_adjust}
\alias{impcov_adjust}
\title{Adjustment for imperfect HIV testing coverage}
\usage{
impcov_adjust(data)
}
\arguments{
\item{data}{The dataframe output from either the \link[ANCRTAdjust]{HIV_prev_cov} function (if adjustment for missing reporting periods is not being performed)
or the \link[ANCRTAdjust]{HIVprev_ipcw} function (if adjustment for missing reporting periods is also being performed).  The required variables include:
\itemize{
  \item \code{HIVprev}: The HIV prevalence adjusted for all previous adjustments (e.g. data cleaning, adjustment for multiple testing and/or adjustment for missing reporting periods)
  \item \code{HIVcov}: The HIV testing coverage adjusted for all previous adjustments (e.g. data cleaning, adjustment for multiple testing and/or adjustment for missing reporting periods)
  }}
}
\value{
A dataframe including the original input data with an additional column, \code{Adjusted_prev}, for the HIV prevalence adjusted for imperfect HIV testing coverage.
}
\description{
Adjusts the HIV prevalence for imperfect HIV testing coverage
}
\details{
This function was designed to adjust HIV prevalence when HIV testing coverage is less than 100\%.  A dataframe with one or many HIV prevalence
and HIV testing coverage estimates is input and all prevalence estimates are adjusted for imperfect HIV testing coverage.  This means that if the input data is stratified by 
\code{time}, \code{period}, and/or \code{Year}, the adjustment will also be stratifed by the same variable(s).
}
\author{
Mathieu Maheu-Giroux

Brittany Blouin
}
