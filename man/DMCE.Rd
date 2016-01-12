\name{DMCE}
\alias{DMCE}
\docType{data}
\title{
The simulated 10\% and 5\% points of the distribution of DMCE.
}
\description{
The data used in here, obtained by using Monte-Carlo simulation method.
}

\usage{data("DMCE")}
\details{
A simulation study is carried out to find the percentile (cut-off) point of DMCE by using Monte-
Carlo methods. Fifteen different sample sizes are used, namely n = 10, . . . , 150. For each
sample size n, a set of random circular errors is generated from the von Mises distribution with
mean direction 0 and various values of concentration parameter k = 1, 2, . . . , 100. Samples
of von Mises distribution VM(\eqn{\pi}/4, 10) with corresponding size n are generated to represent the
values of X variable. The parameters of model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi}) 
(i=1,2,...,n) are fixed at \eqn{\alpha}=0 and \eqn{\beta}=1. Observed values
of the response variable y are calculated based on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi})
 (i=1,2,...,n) and subsequently the fitted values Y
are obtained. We then compute the value of the MCE statistic for full data set. Sequentially, we
exclude the ith observation from the generated sample, where i = 1, . . . , n. We refit the reduced
data using model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi}) (i=1,2,...,n)
 and then calculate the values of MCe. Then, we obtain the value of DMCE.
The process is carried out 2000 times for each combination of sample size n and concentration
parameter k. 
}

\references{
A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detecting of outliers in simple circular regression models
using the mean circular error statistics.
}
