source("csc-2019/mstat/sm1/useful_functions.R")


sample_size = 100500


sample_norm <- rnorm(sample_size, mean = 2, sd = 2)
sample_exp  <- rexp(sample_size,rate=0.5)
sample_unif <- runif(sample_size, min=-2, max=6)
sample_pois <- rpois(sample_size, lambda = 2) # mean == lambda


vars_norm = my_summery(sample_norm)
vars_exp  = my_summery(sample_exp)
vars_unif = my_summery(sample_unif)
vars_pois = my_summery(sample_pois)

vars = data.frame(cbind(vars_norm,vars_exp,vars_unif,vars_pois))
names(vars) = c('Normal','Exponential','Uniform','My Sample')
rownames(vars) = c('min:','max:','mean:','corrected var:', 'not corrected var:  ', 'sd:','median:', 'q1:', 'q3:', 'Variation coef:','Skewness:', 'Kurtosis:')

print(round(vars,2))




mycolors = c(rgb(1,0,0,1/2),rgb(0,1,0,1/2),col=rgb(0,0,1,1/2),col=rgb(1,0,1,1/2))
xlim_a = min(min(sample_norm),min(vars_pois),min(sample_unif),min(sample_exp))
xlim_b = max(max(sample_norm),max(vars_pois),max(sample_unif),max(sample_exp))

hist(sample_norm, freq = F,col=mycolors[1],xlim = c(xlim_a,xlim_b), ylim = c(0,1),main = ' ', xlab = 'X')
hist(sample_exp,freq = F,col=mycolors[2], add=T)
legend("topright", inset=.02, title="Distributions",
       c("norm","exp"), fill=mycolors[1:2], horiz=F, cex=0.8)


hist(sample_unif,freq=F,col=mycolors[3],xlim = c(xlim_a,xlim_b), ylim = c(0,1),main = ' ', xlab = 'X')
hist(sample_pois,freq=F,col=mycolors[4], add=T)
legend("topright", inset=.02, title="Distributions",
       c("unif","mysample"), fill=mycolors[3:4], horiz=F, cex=0.8)


boxplot(sample_norm, sample_exp, sample_unif, sample_pois, names = c('norm','exp','unif','mysample'))



