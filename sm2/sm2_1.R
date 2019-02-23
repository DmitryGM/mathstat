source('csc-2019/mstat/sm1/useful_functions.R')



foo <- function(N) {
  vars = 1:N
  vars2 = 1:N
  
  
  for (i in 1:N) {
    sample_norm <- rnorm(60, mean = 0, sd = 1.1)
    
    vars[i]  <- var(sample_norm)
    vars2[i] <- var2(sample_norm)
  }
  
  return(vars, vars2)
}


var_count(n, m) {
  
  vars_n, vars2_n <- foo(N)
}

var_count(30, 100)

  my_mean_var  <- mean(vars)
  my_mean_var2 <- mean(vars2)
  
  boxplot(vars, vars2)
  
  p1 <- hist(vars)
  p2 <- hist(vars2)
  plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10))
  plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), add=T)
  
  return(c(my_mean_var, my_mean_var2))
}

#foo(30)
foo(100)

