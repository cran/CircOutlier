\name{MCE}
\alias{MCE}
%- Also NEED an '\alias' for EACH other topic documented here
\title{
%%  ~~
Detection of Outliers in Circular-Circular Regression
}
\description{
%%  ~~
Mean circular error
}
\usage{
MCE(y,Y,n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
%%     ~~
observed values of the response variable are calculated based on model 

   \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n). here n is sample size. random error
   
 having a VonMises distribution with circular mean 0 and concentration 

parameter k.
}
  \item{Y}{
%%     ~~
the estimeted value of y under model \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n). 
}
  \item{n}{
 the sample size
}
}
\details{
%%  ~~ 
This function may be considered as a type of arithmetic mean which is not 
robust to the existence of outlier.thus it can be used to detect the possible outliers in the
circular regression.
}
\value{
%%  
Number, that is mean circular error.

}
\references{
%% ~
A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detection of outliers in simple circular   regression models
using the mean circular error statistics.
}
\author{
%%  ~~
Azade Ghazanfarihesari, Majid Sarmad
}

\seealso{
circular, CircStats
%% 
}
\examples{
#Generate a data set dependent of circular variables.
library(CircStats)
n <- 50
x <- rvm(n = 50, 0, 2)
y <- rvm(n = 50, pi/4, 5)
# Fit a circular-circular regression model.
circ.lm <- circ.reg(x, y, order = 1)
Y <- circ.lm$fitted
MCE(y, Y, n)
}

