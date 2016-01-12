\name{DMCEE}
\alias{DMCEE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%
Detection of Outliers in Circular-Circular Regression 
}
\description{
This function calculates the absolute values of the difference between the values of MCE and MCe statistic. 
 Then, it draws the scatter plot of them and estimates the concentration parameter of k. Given the sample size and the estimated value of K, cut-off point from the table DMCE in the significance level of 0.05 or 0.1 will be found.
 Outliers are locatedon the top of teh line corresponding to the cut-off point.
}
\usage{
DMCEE(x, y, b)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
independent variable on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi}) (i=1,2,...,n)
}
  \item{y}{
the response variable on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi}) (i=1,2,...,n)
}

\item{b}{
the level of significance (0.05 or 0.1)
}
}
\details{
%% 
The ith observation is identified as an outlier if the absolute values of the difference between the values of MCE and MCe statistic  exceeds a pre-specified cut-off point.
}

\references{

A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detection of outliers in simple circular   regression models
using the mean circular error statistics 
}
\author{
%%
Azade Ghazanfarihesari, Majid Sarmad
}

\seealso{

circular, CircStats 
}
\examples{
data(wind2)
DMCEE(wind2[,1], wind2[,2], .9)
}
