
connect_vertices <- function(ind){
  cube <- rbind(c(+1,+1,+1), c(-1,+1,+1), c(-1,-1,+1), c(+1,-1,+1), c(+1,+1,-1), c(-1,+1,-1), c(-1,-1,-1), c(+1,-1,-1))
  x <- substring(ind, 1, 1) ; y <- substring(ind, 2, 2)
  x <- as.numeric(x) ; y <- as.numeric(y)
  segment(a=cube[x,], b=cube[y,],n=100) 
}

create_cube <- function(){
  vertind <- c("12", "23", "34", "41", "56", "67", "78", "85", "15", "26", "37", "48")
  edges <- lapply(vertind, connect_vertices)
  do.call("rbind",edges)
}