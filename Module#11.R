turkey_multiple <- function(x){
  outliers <- array(TRUE, dim = dim(x))
  for (j in 1:ncol(x)){
    outliers[,j] <- outliers[,j] & turkey.outlier(x[,j])
  }
  outlier.vec <- vector(length = nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i,])
  }
  return(outlier.vec)
}

#test
set.seed(40)
test_data <- matrix(rnorm(20), nrow = 5)
test_data[2,] <- c(50, 50, 50, 50) #outliers

result <- turkey_multiple(test_data)