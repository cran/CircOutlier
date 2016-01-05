\name{DMCE}
\alias{DMCE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%
Detecting of Outliers in Circular Regression 
}
\description{
%% 
Maximum absolute difference between the values of the mean circular statistics for full and reduced data sets 
}
\usage{
DMCE(y, Y, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
  %%    
  observed values of the response variable are calculated based on model

    \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n). here n is sample size. random error  
  
 having a VonMises distribution with circular mean 0 and concentration 

parameter k.
}
\item{Y}{
the estimated value of y under model  
 \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n).
}
\item{n}{
the sample size
}
}
\details{
%% 
The ith observation is identified as an outlier if the difference of means circular error (DMCE)  exceeds a pre-specified cut-off point.
}
\value{

Number, that is Maximum absolute difference between the values of the mean circular statistics for full and reduced data sets. 

}
\references{
%% ~
A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detecting of outliers in simple circular   regression models
using the mean circular error statistics 
}
\author{
%%
Azade Ghazanfarihesari, Majid Sarmad
}

\seealso{
%% ~~
circular, CircStats 
}
\examples{
# Generate a data set dependent of circular variables.
library(CircStats)
n <- 50
x <- rvm(n = 50, 0, 2)
y <- rvm(n = 50, pi/4, 5)
# Fit a circular-circular regression model.
circ.lm <- circ.reg(x, y, order = 1)
Y <- circ.lm$fitted
DMCE(y, Y, n)
}
