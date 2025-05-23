% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_red_noise_wt.R
\name{model_red_noise_wt}
\alias{model_red_noise_wt}
\title{Models average spectral power based curves based on a red-noise signal
generated using the characteristics of an input signal.}
\usage{
model_red_noise_wt(
  wavelet = NULL,
  n_simulations = NULL,
  run_multicore = FALSE,
  verbose = FALSE
)
}
\arguments{
\item{wavelet}{Wavelet object created using the \code{\link{analyze_wavelet}} function.}

\item{n_simulations}{Number of red noise simulations.}

\item{run_multicore}{run simulation using multiple cores \code{Default=FALSE}
the simulation is run at x-2 cores to allow the 2 remaining processes to run background processes.}

\item{verbose}{Print text \code{Default=FALSE}.}
}
\value{
Returns a matrix in which each column represents the average spectral
power resulting from a red-noise run.
}
\description{
The \code{\link{model_red_noise_wt}} function is used to generate
average spectral power curves based on and input signal and set wavelet settings.
}
\examples{
\donttest{
#'#generate average spectral power curves based on red noise curves which are
# based on the magnetic susceptibility record of the Sullivan core of Pas et al., (2018)

mag_wt <- analyze_wavelet(data = mag,
dj = 1/100,
lowerPeriod = 0.1,
upperPeriod = 254,
verbose = FALSE,
omega_nr = 10)

#increase n_simulations to better define the red noise spectral power curve
mag_wt_red_noise <- model_red_noise_wt(wavelet=mag_wt,
n_simulations=10, # increase number for better constrained results
run_multicore=FALSE,
verbose=FALSE)
}


}
\references{
Angi Roesch and Harald Schmidbauer (2018). WaveletComp: Computational
Wavelet Analysis. R package version 1.1.
\url{https://CRAN.R-project.org/package=WaveletComp}

Gouhier TC, Grinsted A, Simko V (2021). R package biwavelet: Conduct Univariate and Bivariate Wavelet Analyses. (Version 0.20.21),
\url{https://github.com/tgouhier/biwavelet}

Torrence, C., and G. P. Compo. 1998. A Practical Guide to Wavelet Analysis.
Bulletin of the American Meteorological Society 79:61-78.
\url{https://paos.colorado.edu/research/wavelets/bams_79_01_0061.pdf}

Morlet, Jean, Georges Arens, Eliane Fourgeau, and Dominique Glard.
"Wave propagation and sampling theory—Part I: Complex signal and scattering in multilayered media.
" Geophysics 47, no. 2 (1982): 203-221.

J. Morlet, G. Arens, E. Fourgeau, D. Giard;
Wave propagation and sampling theory; Part II, Sampling theory and complex waves.
 Geophysics 1982 47 (2): 222–236.
}
\author{
Code based on the "analyze.wavelet" function of the 'WaveletComp' R package
and "wt" function of the 'biwavelet' R package which are based on the
wavelet 'MATLAB' code written by Christopher Torrence and Gibert P. Compo (1998).
}
