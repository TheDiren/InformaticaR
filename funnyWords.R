own.substr <- function(s,i){
  return(substr(s, i, i))
}

funny.words <- function(my.word = "summer", count = 3){
  s1 <- ""
  for(i in 1:2){
    for(i in 1:count){
      print(substr(my.word, i, i))
      sub <- own.substr(my.word,i)
      s1 <- paste(s1, sub, sep = "")
    }
  }
  return(s1)
}
funny.words("banana")
