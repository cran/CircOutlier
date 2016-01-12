\name{Huberized}
\alias{Huberized}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Detecting Outliers in Circular Data and Modifying Its
}
\description{

This function is used to identify outliers in circular data sets. and  with do the procedure Huberized on this outliers, the results improve. Huberizing the outliers will improve the results. circular and sd.circular are mean and standard deviation of circular data.
}
\usage{
Huberized(t)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{t}{
circular data set which contains suspected  outliers.
}
}
\details{
In this method, we progressively transform the original data by a process called winsorisation. Assume that we have initial estimates called m,s. (These coulde evaluated as mean and standard deviation.) If a value \eqn{x_i} falls above 
m+(1.5*s) then we change it to \eqn{x_i=m+(1.5*s)}. 
       Likewise if a value falls below m-(1.5*s) then we change it to \eqn{x_i=m=(1.5*s)}. We then 
       calculate an improved estimate of mean as m1=mean.circular(\eqn{x_i}), and of the standard deviation as s1=1.134*(sd.circular(\eqn{x_i})).(The factor 1.134 is derived
from the normal distribution, given a value 1.5 for the multiplier most often used in the winsorisation process.) (see the first reference)  
}

\value{
Two plot and four number

a list containing the following values:

  \item{plot1}{plot data set when exist outlier.  }
  \item{plot2}{plot data set after modified outlier.}

  \item{m }{mean.circular when exist outlier. }
  \item{m1 }{mean.circular after modified outlier.}
  \item{s}{sd.circular when exist outlier.}
  \item{s1 }{sd.circular after modified outlier.}
}

\references{
Analytical Methods Committe, Robust statistics: a method coping with outliers, Royal Society of Chemistry 2001, amc technical brief.

A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detecting of outliers in simple circular   regression models
using the mean circular error statistics.
}
\author{
Azade Ghazanfarihesari, Majid Sarmad
}

\seealso{
circular, CircStats 
}
\examples{
data(wind)
Huberized(wind)
}


