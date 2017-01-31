sumStringNumbers <- function(s , delim = ",") {
  if (s == ""){
    res <- as.integer(0)
  } else {
    
    if (grepl("//", s)){
      delim <- substring(s, 3, 3)
      s <- substring(s, 5)
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