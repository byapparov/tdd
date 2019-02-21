

romanToInteger <- function(x) {
  if (nchar(x) == 0) {
    return(0)
  }
  roman.map <- c(I = 1, V = 5, X = 10, L = 50, C = 100)
  s <- unlist(strsplit(x, ""))
  n <- roman.map[s]

  if (grepl("I{4}|X{4}", x)) {
    stop("Not a valid number, single roman digit cannot repeat more than 3 times")
  }

  change.sign <- which(n[1:(length(n) - 1)] < n[2:length(n)])
  n[change.sign] <- -1 * n[change.sign]


  sum(n)
}


