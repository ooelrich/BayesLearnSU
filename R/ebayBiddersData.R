#' Coin auctions from ebay
#'
#' A dataset of 1000 auctions of coins on ebay.
#'
#' @format A data frame with 1000 rows and 10 variables:
#' \describe{
#'   \item{nBids}{The number of bids in the auction}
#'   \item{const}{The intercept}
#'   \item{powerSeller}{Is the seller selling large columes on ebay?}
#'   \item{verifyID}{Is the seller verified by ebay?}
#'   \item{sealed}{Was the coin sold sealed in a never opened envelope?}
#'   \item{minBlem}{Did the coin have a minor blemish/defect?}
#'   \item{majBlem}{Did the coin have a major blemish/defect?}
#'   \item{largeNeg}{Did the seller have a lot of negative feedback from
#'   customers?}
#'   \item{logBook}{Logarithm of the coins book-value according to expert sellers. Standardized.}
#'   \item{minBidShare}{A variable that measures the ratio of the minimum
#'   selling price and the book value. Standardized.}
#'   ...
#' }
#'
"ebayNumberOfBidders"
