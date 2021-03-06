% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sim_Community.R
\name{community}
\alias{community}
\title{Create spatial community object}
\usage{
community(x, y, spec_id, xrange = c(0, 1), yrange = c(0, 1))
}
\arguments{
\item{x, y}{Coordinates of individuals (numeric)}

\item{spec_id}{Species names or IDs; can be integers, characters or factors}

\item{xrange}{Extent of the community in x-direction (numeric vector of length 2)}

\item{yrange}{Extent of the community in y-direction (numeric vector of length 2)}
}
\value{
Community object which includes three items:
\enumerate{
   \item census: data.frame with three columns: x, y, and species names for
    each individual
   \item x_min_max: extent of the community in x-direction
   \item y_min_max: extent of the community in y-direction
}
}
\description{
Creates a spatial community object with defined extent and with coordinates
and species identities of all individuals in the community.
}
\examples{
x <- runif(100)
y <- runif(100)
species_names <- rep(paste("species",1:10, sep = ""), each = 10)

com1 <- community(x,y, species_names)
plot(com1)
summary(com1)

}
