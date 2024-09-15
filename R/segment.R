
segment <- function(a,b,n){
  t <- seq(0, 1, length.out=n)
  line <- matrix(0, nrow=n, ncol=3)
  line <- lapply(1:n,function(i){(1-t[i])*a + t[i]*b})
  do.call("rbind",line)
 }
