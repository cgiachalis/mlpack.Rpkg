#include <Rcpp.h>

// [[Rcpp::export(.addOne_rcpp)]]
Rcpp::NumericVector addOne_rcpp(Rcpp::NumericVector& x) {
  return x + 1;
}
