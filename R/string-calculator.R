updateDelimeter <- function(s) {
  if(substring(s, 1, 1) == '['){
    delim <- substring(s, 2, (regexpr("]", s)[1] - 1))
    s <- substring(s, (regexpr("]", s)[1] + 2))
  } else {
    delim <- substring(s, 1, 1)
    s <- substring(s, 3)
  }
  return (c(delim,s))
}

sumStringNumbers <- function(s , delim = ",") {
  if (s == ""){
    res <- as.integer(0)
  } else {
    
    if (grepl("//", s)){
      d <- updateDelimeter(substring(s, 3))
      delim <- d[1]
      s <- d[2]
    }
    
    split.input <- strsplit(s, delim)
    split.input <- lapply(split.input, function(x){ 
      strsplit(x, "\n")}
    )
    split.input <- unlist(split.input)
    
    transform.input <- sapply(split.input, as.integer)
    
    if (any(transform.input < 0)) {
      stop(paste0("Negative numbers not allowed:",transform.input[transform.input < 0]))
    }
    
    transform.input <- transform.input[transform.input <= 1000]
    
    res <- sum(transform.input)
  }
  return (res)
}