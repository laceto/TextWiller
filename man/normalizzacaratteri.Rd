% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalizzacaratteri.R
\name{normalizzacaratteri}
\alias{normalizzacaratteri}
\title{normalizzacaratteri}
\usage{
normalizzacaratteri(testo, fixed = TRUE)
}
\arguments{
\item{testo}{a set of texts to be stripped of escape and punctation codes}

\item{fixed}{logical. If TRUE, pattern is a string to be matched as is. Overrides all conflicting arguments.}
}
\value{
a set of processed texts
}
\description{
\code{normalizzacaratteri} replaces escape and punctation codes in \code{testo} with a blank
}
\examples{

 testo<-c("\t","\r") 
 normalizzacaratteri(testo)
 
 
}
\author{
Livio Finos
}
