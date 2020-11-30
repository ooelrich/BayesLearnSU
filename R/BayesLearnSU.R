#' BayesLearnSU: a package for the Bayesian learning course at SU
#'
#' This package contains the data sets used in the course Bayesian learning at
#' Stockholm university. The package uses lazy loading, which means that the 
#' data sets are not loaded themselves into the environment, but they will be
#' on first access.
#' 
#' This means that while (for example) tempLinkoping does not show up in the
#' environment, you can still use it. (As an example, after loading the package
#' try "head(tempLinkoping)" or "mean(tempLinkoping$temp)".)
#'
#' For a list of all available data sets, use help(, "BayesLearnSU").
#'
#' @docType package
#' @name BayesLearnSU
NULL