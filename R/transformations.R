
rotation_x <- function(theta,point) {
  R_x <- matrix(
    c(1,            0,             0,
      0,   cos(theta),   -sin(theta),
      0,   sin(theta),   +cos(theta)),
    nrow=3,ncol=3,byrow=T)
  
  c(R_x %*% point) 
  
}

rotation_y <- function(theta,point) {
  R_y <- matrix(
    c( +cos(theta),  0,     sin(theta),
        0,           1,              0,
       -sin(theta),  0,    cos(theta)),
    nrow=3,ncol=3,byrow=T)
  
  c(R_y %*% point)
  
}

rotation_z <- function(theta,point) {
  R_z <- matrix(
    c( cos(theta),  -sin(theta),    0, 
       sin(theta),   cos(theta),    0,
       0,            0,             1),
    nrow=3,ncol=3,byrow=T)
  
  c(R_z %*% point)
  
}

rotation <- function(cube,theta){
  cube <- t(apply(cube, 1, function(x){rotation_z(theta,x)}))
  cube <- t(apply(cube, 1, function(x){rotation_y(theta,x)}))
  cube <- t(apply(cube, 1, function(x){rotation_x(theta,x)})) 
  cube 
}

projection <- function(cube){
    P <- cbind(c(1,0,0), c(0,1,0), c(0,0,0))
    cube <- cube %*% P 
    cube <- as.data.frame(cube) ; colnames(cube) <- c("x","y","z")
    cube <- cube[,c("x","y")] 
    cube
 }

rotate_and_project <- function(cube,theta){
    cube <- rotation(cube,theta)
    cube <- projection(cube)
    cube 
 }

