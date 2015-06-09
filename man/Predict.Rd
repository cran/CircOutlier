\name{Predict}
\alias{Predict}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Estimates of Parameters in Circular Regression
}
\description{
This function calculated the maximum-likelihood estimates parameters
}
\usage{
Predict(x, y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
independent variable on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i} (mod 2\eqn{\pi}) (i=1,2,...,n)
}
  \item{y}{
the response variable on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n)
}
}
\details{

This function uses of iterative methods for the parameter estimates in circular-circular regression model and The user can default values The desired change.
}
\value{
Number

 a list containing the following values:
  \item{alpha1 }{estimate of \eqn{\alpha}}
 \item{beta1}{estimate of \eqn{\beta}}
.
}
\references{
A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detecting of outliers in simple circular  
 regression models
using the mean circular error statistics 
}
\author{
Azade Ghazanfarihesari, Majid Sarmad
}


\seealso{
circular,CircStats
}
\examples{
# Generate a data set dependent of circular variables.
library(CircStats)
x <- rvm(n = 50, 0, 2)
y <- rvm(n = 50, pi/4, 5)
Predict(x, y)
}

