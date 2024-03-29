#include <mlpack.h>
#include <mlpack/methods/neighbor_search.hpp>

using namespace mlpack;

// [[Rcpp::export(.knnDemo)]]
Rcpp::List knnDemo(const arma::mat& Reference,
                   const arma::mat& Query,
                   int k,
                   bool verbose = false) {

  // Enable or Disable INFO messages
  Log::Info.ignoreInput = !verbose;

 // NOTE: Transpose matrices, mlpack accepts Col by Row layout.

  KNN knn_model( Reference.t() );

  arma::umat Neighbors;
  arma::mat  Distances;

  knn_model.Search(Query.t(), k, Neighbors, Distances);

  arma::inplace_trans(Neighbors);
  arma::inplace_trans(Distances);

  // Neighbors.brief_print("N:");
  // Distances.brief_print("D:");

  return Rcpp::List::create(
                Rcpp::Named("distances", Rcpp::wrap(Distances)),
                Rcpp::Named("neighbors", Rcpp::wrap(Neighbors))
                           );
}
