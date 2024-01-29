#include <mlpack.h>

// [[Rcpp::export(.addOne_arma)]]
arma::vec addOne_arma(arma::vec& x) {

  return x+1;
}
