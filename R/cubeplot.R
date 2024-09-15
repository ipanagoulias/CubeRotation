
cubeplot <- function(cube,theta){
  cube <- rotate_and_project(cube, theta)
  plot(cube[,"x"], cube[,"y"], col="blue", xlim=c(-3,3), ylim=c(-3,3), xlab="", ylab="", axes = 0)
}


