\name{MCe}
\alias{MCe}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~
Detecting of Outliers in Circular Regression
}
\description{
%%  ~~ 
Removal of the ith observation from the data set calculate mean circular error for reduced data set  
}
\usage{
MCe(u)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{u}{
  %%
cosine the difference between the observed value of the response variable y and fitted values Y on model \eqn{y_i=\alpha+\beta x_i+\epsilon_i}(mod 2\eqn{\pi}) (i=1,2,...,n).
}
}
\details{
%%  ~~ 
This function after removal of the ith observation from the data set. 
}
\value{
Number, that is mean circular error after removal of the ith observation from the data set.
}
\references{
%% ~
A. H. Abuzaid, A. G. Hussin & I. B. Mohamed (2013) Detecting of outliers in simple circular
   regression models
using the mean circular error statistics 
}
\author{
%%  ~~
Azade Ghazanfarihesari, Majid Sarmad
}
\seealso{
%% ~~
circular, CircStats 
}
\examples{
# Generate a data set dependent of circular variables.
library(CircStats)
 x <- rvm(n = 50, 0, 2)
y <- rvm(n = 50, pi/4, 5)
# Fit a circular-circular regression model.
circ.lm <- circ.reg(x, y, order = 1)
Y <- circ.lm$fitted
MCe(cos(y - Y))
}


