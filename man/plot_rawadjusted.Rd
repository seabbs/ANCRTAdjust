% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_rawadjusted.R
\name{plot_rawadjusted}
\alias{plot_rawadjusted}
\title{Plot of HIV prevalence over time}
\usage{
plot_rawadjusted(Data, snu1 = "All", time.unit = "PERIOD",
  HIVraw = "TRUE", y.lim = 40)
}
\arguments{
\item{Data}{The dataframe output by \link[ANCRTAdjust]{impcov_adjust}.  The following variables must be present:
\itemize{
 \item \code{snu1}: The subnational unit 1.  If plots are to be generated for the different snu1s, the parameter bysnu1 = "TRUE" must 
 have been specified when running \link[ANCRTAdjust]{impcov_adjust}.
 \item \code{time}: The year and/or quarter that the data was collected.  If plots are to be generated by reporting period, the parameter 
 byperiod = "TRUE" must have been specified when running \link[ANCRTAdjust]{impcov_adjust}.  If plots are to be generated by year, the parameter
 byyear = "TRUE" must have been specified when running \link[ANCRTAdjust]{impcov_adjust}.
 \item \code{Adjusted_prev}: The HIV prevalence adjusted for imperfect testing coverage and all previous adjustments (i.e. data cleaning, adjustment 
 for multiple testing and/or adjustment for missing reporting periods, if performed) (generated using the \link[ANCRTAdjust]{impcov_adjust} function).
 \item \code{HIVraw}: The HIV prevalence using the raw data (generated using the \link[ANCRTAdjust]{impcov_adjust} function).
}}

\item{snu1}{The snu1 for which the plot is generated.  "All" indicates that the plot include the entire country data (i.e. not snu1-specific). Default = "All".}

\item{time.unit}{"PERIOD" indicates that the results be plotted by reporting period.  "YEAR" indicates that the results be plotted by year. Default = "PERIOD".}

\item{HIVraw}{"TRUE" indicates that both the fully adjusted and raw HIV prevalences be plotted.  "FALSE" indicates that only the fully
adjusted HIV prevalences be plotted. Default = "TRUE".}

\item{y.lim}{The y-axis upper limit. Default = 40.}
}
\value{
A plot of HIV prevalence over time.
}
\description{
Plots the raw and/or fully adjusted HIV prevalence over time
}
\details{
This function has been developed to plot HIV prevalence over time.  Both the raw and fully adjusted HIV prevalence (obtained using the \link[ANCRTAdjust]{data_clean}, \link[ANCRTAdjust]{mt_adjust}
and \link[ANCRTAdjust]{impcov_adjust} functions) can be plotted and compared or just the fully adjusted prevalence can be plotted.  The time unit can be set to 
either yearly or by reporting period.
}
\author{
Mathieu Maheu-Giroux

Brittany Blouin
}
