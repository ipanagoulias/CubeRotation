
play <- function(){
  n <- 1000
  i=1
  theta <- seq(0, 4*pi, length.out=n-1)
  cube <- create_cube()
  X11()
  while (TRUE) {
    cubeplot(cube, theta[i])
    i <- i+1
    if (i > n-1) {i <- 1} 
  }
  dev.off()
}

