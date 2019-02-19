library("moments", lib.loc="~/R/x86_64-pc-linux-gnu-library/3.4")


var2 <- function(v) {
  # Выборочная дисперсия (Population variance)
  # (НЕ исправленная дисперсия)
  N <- length(v)
  return(var(v) * (N-1)/N)
}

my_summary <- function(v) {
  my_min       <- min(v)
  my_max       <- max(v)
  my_mean      <- mean(v)
  my_median    <- median(v)
  
  my_q1        <- quantile(v, 0.25)
  my_q3        <- quantile(v, 0.75)
  
  # Исправленная выборочная дисперсия
  my_var <- var(v)
  
  # Выборочная дисперсия
  my_var2 <- var2(v)
  
  # Выборочное исправленное стандартное отклонение
  my_sd = sd(v)
  
  # Коэффициент вариации
  # (Coefficient of variation)
  my_cv = my_sd / my_mean
  
  # Коэффициент асимметрии
  # my_gamma1 = moment(v, order=3, center=TRUE) / my_sd ^ 3
  my_skewness = moments::skewness(v)
  
  # Коэффициент эксцесса
  # my_gamma2 = moment(v, order=4, center=TRUE) / my_sd^4 - 3
  my_kurtosis = moments::kurtosis(v) - 3
  
  return(c(
    my_min,
    my_max,
    my_mean,
    my_var,
    my_var2,
    my_sd,
    my_median,
    my_q1,
    my_q3,
    my_cv,
    my_skewness,
    my_kurtosis))
}