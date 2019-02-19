

dat <- read.csv('csc-2019/mstat/hw1/colleges.txt',
                sep = '\t'
                )


dat1 <- subset(dat, School_Type == 'Univ')
dat2 <- subset(dat, School_Type != 'Univ')

unlist(dat1['SAT'], dat2['SAT'])
unlist(dat['Acceptance'])
unlist(dat['X..Student'])
unlist(dat['Top.10.'])
unlist(dat['X.PhD'])
unlist(dat['Grad.'])

# boxplots:
boxplot(dat1$SAT, dat2$SAT)
boxplot(dat1$Acceptance, dat2$Acceptance)
boxplot(dat1$X..Student, dat2$X..Student)
boxplot(dat1[['Top.10.']], dat2[['Top.10.']])
boxplot(unlist(dat1['X.PhD']), unlist(dat2['X.PhD']))
boxplot(unlist(dat1['Grad.']), unlist(dat2['Grad.']))

# hists:
p1 <- hist(dat1$X.PhD)
p2 <- hist(dat2$X.PhD)

plot( p1, col=rgb(0,0,1,1/4))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), add=T)  # second


hist(dat1$Grad.)
hist(dat2$Grad.)

# summary:
options(digits=8)
print(mean(dat2$SAT))
print(quantile(dat1$Acceptance))
print('Cal Tech', quote = FALSE)













# test:
set.seed(42)
p1 <- hist(rnorm(500,4))                     # centered at 4
p2 <- hist(rnorm(500,6))                     # centered at 6
plot( p1, col=rgb(0,0,1,1/4), xlim=c(0,10))  # first histogram
plot( p2, col=rgb(1,0,0,1/4), xlim=c(0,10), add=T)  # second


