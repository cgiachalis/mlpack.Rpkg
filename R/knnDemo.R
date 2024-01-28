#' k-Nearest-Neighbors Search
#'
#' @param reference,query Matrix for query and reference points.
#' @param k An integer. Number of nearest neighbours to find.
#' @param verbose Should a log info be displayed? Default is `FALSE`.
#'
#' @return A `list` with two elements: `distances` and `neighbors`.
#'
#' @export
#'
#' @examples
#' set.seed(1234)
#' x <- matrix(rnorm(10*5), ncol = 5)
#'
#' res <- knnDemo(x, k = 3)
#'
#' # mlpack's knn
#' res2 <- mlpack::knn(query = x, reference = x, k = 3)
#'
#' # sanity check
#' all.equal(res, res2[-3]) # TRUE
knnDemo <- function(reference, query = NULL, k, verbose = FALSE) {
  if (is.null(query)) query <- reference
  .Call(`_mlpack_Rpkg_knnDemo`, reference, query, k, verbose)
}
