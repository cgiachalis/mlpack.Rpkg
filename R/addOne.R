#' Example addOne
#'
#' @param x A numeric vector.
#'
#' @return A vector or univariate matrix.
#'
#' @export
#'
#' @examples
#'
#' addOne_arma(1:3)
#'
#' addOne_rcpp(1:3)
#' @name addOne
addOne_arma <- function(x) {
  .Call(`_mlpack_Rpkg_addOne_arma`, x)
}

#' @export
#' @rdname addOne
addOne_rcpp <- function(x) {
  .Call(`_mlpack_Rpkg_addOne_rcpp`, x)
}
