# my_summery

f <- function(v) {
  N <- length(v)
  aa <- var(v) * (N-1)/N # population variance (НЕ исправленная дисперсия)
  
  
  
  
  my_mean   <- mean(v)
  my_median <- median(v)
  my_var    <- var(v)
  my_var_2  <- aa
  qq        <- quantile(v)
  q1        <- quantile(v, 0.25)
  q2        <- quantile(v, 0.5)
  q3        <- quantile(v, 0.75)
  
  res <- c(my_mean, my_median, my_var, my_var_2, qq)
  
  
  res <- round(res, 2)
  
  print(res)
}
