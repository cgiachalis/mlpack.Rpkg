# Rcpp package with mlpack library

A small demo package that calls a `C++`function that uses the mlpack's functionality and integrates with `R` via `Rcpp` framework. 

## Installation

You can install the `mlpack.Rpkg` using:

``` r
library(remotes)
remotes::install_github("cgiachalis/mlpack.Rpkg")
```

## Example


``` r
library(mlpack.Rpkg)

set.seed(1234)
x <- matrix(rnorm(10*5), ncol = 5)

res <- knnDemo(x, k = 3)

# mlpack's knn
res2 <- mlpack::knn(query = x, reference = x, k = 3)

# sanity check
all.equal(res, res2[-3]) # TRUE
```

