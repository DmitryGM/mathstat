
COUNT <- 1000


N <- 1000
n <- 10
  
sample_norm <- rnorm(60, mean = 0, sd = 2.1)
  
for (i in 1:COUNT) {
  sample_norm_1 <- rnorm(n, mean = 0, sd = 2.1)

  sample_norm_2 <- rnorm(N, mean = 0, sd = 2.1)
  
  
  sample_norm <- sample_norm_1 + sample_norm_2
  mean_N[i] <- mean(sample_norm)
  median_N[i] <- median(sample_norm)
  # mean_N005[i] <- mean(sample_norm, trim = 0.05)
  # median_N005[i] <- median(sample_norm, trim = 0.05)
}

boxplot(mean_N, median_N) #, median_N005)

