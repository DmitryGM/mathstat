source('csc-2019/mstat/sm1/useful_functions.R')

var_count <- function(N, COUNT) {

#N, COUNT <- 30, 1000
#N, COUNT <- 1000, 1000

vars = 1:N           # Дисперсия
corrected_vars = 1:N # Исправленная дисперсия
  
  
for (i in 1:COUNT) {
  sample_norm <- rnorm(N, mean = 0, sd = 1)
  
  corrected_vars[i]  <- var(sample_norm)
  vars[i]            <- var2(sample_norm)
}


my_mean_corrected_vars  <- mean(corrected_vars)
my_mean_vars <- mean(vars)
  
boxplot(vars, corrected_vars, names = c('not corrected','corrected'), main=paste('N =', N, sep = ' '))
abline(h = my_mean_vars, col = 'red')
abline(h = my_mean_corrected_vars, col = "green")
abline(h = 1, col = "blue")

legend("topright", inset=.02, title="Dispersions",
       c("mean of not corrected",
         "mean of corrected",
         "theoretical value"),
       fill=c('red', 'green', 'blue'), horiz=FALSE, cex=0.8)

# density:

# 1)
sample_norm_1 <- rnorm(N, mean = 0, sd = 1)
sample_norm_2 <- rnorm(N, mean = 0, sd = my_mean_vars)
sample_norm_3 <- rnorm(N, mean = 0, sd = my_mean_corrected_vars)


xseq           <- seq(-4,4,.01)
densities_1    <- dnorm(xseq, mean=0, sd=1)
densities_2    <- dnorm(xseq, mean=0, sd=sqrt(my_mean_vars))
densities_3    <- dnorm(xseq, mean=0, sd=sqrt(my_mean_corrected_vars))


par(mfrow=c(1, 1), mar=c(3,4,4,2))



plot(x=xseq,
     y=densities_1,
     col="blue",
     xlab="",
     ylab="Density",
     type="l",
     lwd=2,
     cex=2,
     main=paste('N =', N, sep = ' '),
     cex.axis=.8
     )
legend("topright", inset=.02, title="Dispersions",
       c("with sd = theoretical value",
         "with sd = sqrt(mean of not corrected)",
         "with sd = sqrt(mean of corrected)"),
       fill=c('blue', 'red', 'green'), horiz=FALSE, cex=0.8)

lines(x=xseq,
      y=densities_2,
      type="l",
      lwd=2,
      col="red")

lines(x=xseq,
      y=densities_3,
      type="l",
      lwd=2,
      col="green")
}


var_count(30, 1000)
var_count(1000, 1000)
