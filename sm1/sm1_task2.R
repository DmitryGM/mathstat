source("csc-2019/mstat/sm1/useful_functions.R")

#1 generate vector of normal
sample1<- rnorm(60, mean = 0, sd = 1)
sample2<- rnorm(80, mean = 4, sd = 0.5)


#combine them
sample<- append(sample1, sample2 )

vars = data.frame(my_summary(sample))
rownames(vars) = c('min:','max:','mean:','corrected var:', 'not corrected var:  ', 'sd:','median:', 'q1:', 'q3:', 'Variation coef:','Skewness:', 'Kurtosis:')

print(round(vars,2))


h1 = hist(sample, col=rgb(1,0,0,1/2))
lines(h1$mids, h1$counts)
rug(sample)

plot(ecdf(sample), main = "Empirical Cumulative Distribution Function")