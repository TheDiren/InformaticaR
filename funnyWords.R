funny.words <- function(s = "summer", count = 3){
  s = "summer"
  s1 <- ""
  for(i in 1:2){
    for(i in 1:count){
      print(substr(s, i, i))
      s1 <- paste(s1, substr(s, i, i), sep = "")
    }
  }
  return(s1)
}
funny.words()
