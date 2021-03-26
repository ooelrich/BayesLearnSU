
#' Plotting the normal approximation of the Beta distribution
#' 
#' @description Plots a Beta distribution together with the corresponding 
#'   normal approximation.
#' 
#' @param n Number of trials in the Beta
#' @param s Number of successen in the Beta
#' @param alpha Prior hyperparameter alpha
#' @param beta Prior hyperparameter beta
#' 
#' @import ggplot2, reshape2

beta_normal_approximation <- function(n, s, alpha = 1, beta = 1) {

    theta <- seq(0, 1, by = 0.001)

    exact <- lapply(
        as.list(theta),
        dbeta,
        shape1 = s + alpha,
        shape2 = n + beta - s
    )
    
    approx <- lapply(
        as.list(theta),
        dnorm,
        mean = (alpha + s) / (alpha + beta + n),
        sd = sqrt(
            (alpha + s) * (beta + n - s) /
            ((alpha + beta + n)^2 * (alpha + beta + n + 1))
        )
    )

    df <- data.frame(theta, exact = unlist(exact), approx = unlist(approx))
    df <- reshape2::melt(df, measure.vars = c("exact", "approx"))
    ggplot2::ggplot(df, ggplot2::aes(x = .data$theta, y = .data$value, col = .data$variable)) + ggplot2::geom_line()
}