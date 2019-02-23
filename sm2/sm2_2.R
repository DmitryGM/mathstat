boo <- function(N) {
  COUNT = 1000
  means = 1:COUNT
  medians = 1:COUNT
  
  
  for (i in 1:COUNT) {
    sample_norm <- rnorm(N, mean = 0, sd = 2.1) # N ???
    
    means[i]  <- mean(sample_norm)
    medians[i] <- median(sample_norm)
  }
  
  boxplot(means, medians)
}

boo(30)
#boo(1000)

N = 30
N = 1000