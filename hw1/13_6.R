source("csc-2019/mstat/sm1/useful_functions.R")


my_sum <- function(x) {
  options(digits=8)
  cat(cat(round(c(mean(x), median(x), var2(x)), 1), sep=', '), '\n')
}


dat <- read.csv(
  file = "csc-2019/mstat/hw1/13_6",
  header = FALSE,
  stringsAsFactors = FALSE,
  sep = '\t'
  )


v6  <- unlist(dat[3])
v13 <- unlist(dat[4])


my_sum(v13)


my_sum2 <- function(x) {
  my_mean     <- mean(x)
  my_kurtosis <- moments::kurtosis(x) - 3 # Коэффициент эксцесса
  my_skewness <- moments::skewness(x)     # Коэффициент асимметрии
  
  cat(cat(round(c(my_mean, my_kurtosis, my_skewness), 2), sep=', '), '\n')
}

v_delta <- v13 - v6
my_sum2(v_delta)



hist(v13, col=rgb(0,1,1,1/2))

hist(v6, col=rgb(0,1,1,1/2))

hist(v_delta,  col=rgb(0,1,1,1/2))

boxplot(v6, v13, names = c('6','13'))

boxplot(v_delta)

