% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filter.R
\name{bessel}
\alias{bessel}
\title{Apply Bessel lowpass filter to the signal}
\usage{
bessel(df, sr, cutoff_freq, order = 8)
}
\arguments{
\item{df}{dataframe. The input multi-channel signal. The first column is
timestamps in POSXlct format. The rest columns are signal values.}

\item{sr}{number. Sampling rate in Hz of the input signal.}

\item{cutoff_freq}{number. The lowpass cutoff frequency in Hz.}

\item{order}{number. The order of the filter. Default is 8.}
}
\value{
dataframe. Filtered signal.
}
\description{
\code{bessel} function takes a multi-channel signal and applies a bessel
lowpass filter to the signal.
}
\details{
This function filters the input multi-channel signal by applying a bessel
lowpass filter. See \href{https://en.wikipedia.org/wiki/Bessel_filter}{wiki}
for the explanation of the filter. The filter was implemented with the same
implementation as in MATLAB.
}
\section{How is it used in MIMS-unit algorithm?}{
 This function has been
  considered as one of filtering options during the development of MIMS-unit
  algorithm. But the released version of MIMS-unit algorithm does not use
  this function for filtering.
}

\examples{
  # Use sample data
  df = sample_raw_accel_data

  # View input
  illustrate_signal(df, plot_maxed_out_line = FALSE)

  # Apply filtering
  output = bessel(df, sr=80, cutoff_freq=2, order=8)

  # View output
  illustrate_signal(output, plot_maxed_out_line = FALSE)
}
\seealso{
Other filtering functions: 
\code{\link{bandlimited_interp}()},
\code{\link{iir}()},
\code{\link{remove_average}()}
}
\concept{filtering functions}
