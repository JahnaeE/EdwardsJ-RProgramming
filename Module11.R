library(outliers)

tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] & (outlier(x[,j]))
  }
  outlier.vec <- vector(length=nrow(x))
  
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) }


x <- matrix(rnorm(100), nrow = 10, ncol = 10)

#debug(tukey_multiple)

tukey_multiple(x)
