
COUNT <- 1000

mean_N    <- 1:COUNT
median_N  <- 1:COUNT

mean_N005 <- 1:COUNT
mean_N010 <- 1:COUNT

N <- 1000
n <- 10

# Sample:
sample_norm_1 <- rnorm(N, mean = 1, sd = 1)
sample_norm_2 <- rnorm(n, mean = 20, sd = 1)

sample_norm <- c(sample_norm_1, sample_norm_2)
hist(x = sample_norm, col = c('darkred'), main = 'Sample')
  

  
for (i in 1:COUNT) {
  sample_norm_1 <- rnorm(N, mean = 1, sd = 1)
  sample_norm_2 <- rnorm(n, mean = 20, sd = 1)
  
  sample_norm <- c(sample_norm_1, sample_norm_2)
  
  mean_N[i] <- mean(sample_norm)
  median_N[i] <- median(sample_norm)
  mean_N005[i] <- mean(sample_norm, trim = 0.05)
  mean_N010[i] <- median(sample_norm, trim = 0.10)
}

boxplot(median_N, mean_N, mean_N005, mean_N010, names = c('median', 'mean', 'mean -5%', 'mean -10%'))
abline(h = 1, col = 'green', lwd=2)




