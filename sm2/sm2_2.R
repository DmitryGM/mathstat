COUNT <- 1000

median_ok <- function(N) {
  means   <- 1:COUNT
  medians <- 1:COUNT
  
  
  for (i in 1:COUNT) {
    sample_norm <- rnorm(N, mean = 0, sd = 1)
    
    means[i]  <- mean(sample_norm)
    medians[i] <- median(sample_norm)
  }
  
  boxplot(medians, means, names=c('median', 'mean'))
  abline(h = 0, col = 'green', lwd=2)
  #abline(h = 0, col = 'red', lwd=2) # зачем эта линия?)))
}

median_ok(30)
median_ok(1000)

