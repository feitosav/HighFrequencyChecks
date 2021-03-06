% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions_a.R
\name{assessmentDuration}
\alias{assessmentDuration}
\title{Compute the average and total time for the surveys}
\usage{
assessmentDuration(ds = NULL, dates = NULL)
}
\arguments{
\item{ds}{dataset containing the survey (from kobo): data.frame}

\item{dates}{name of the fields where the information about the start and end date of the survey is stored: list of string (c('start_date','end_date'))}
}
\value{
dst      same dataset as the inputed one but with survey marked for deletion if errors are found and delete=TRUE (or NULL)

ret_log  list of the errors found (or NULL)

var      a list of value (or NULL)

graph    graphical representation of the results (or NULL)
}
\description{
This function compute the average and total time for the surveys
Warning: If there are uncorrected mistakes in the survey dates, it can lead to have the length of the survey in seconds and this check will not performed well
}
\examples{
{
ds <- HighFrequencyChecks::sample_dataset
dates <- c("survey_start","end_survey")

list[dst,ret_log,var,graph] <- assessmentDuration(ds=ds,
                                                  dates=dates)
print(var)
}
}
\author{
Yannick Pascaud
}
