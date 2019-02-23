set.seed(3000)

xseq           <- seq(-4,4,.01)
densities      <- dnorm(xseq, mean=0, sd=1)
cumulative     <- pnorm(xseq, mean=0, sd=1)
randomdeviates <- rnorm(1000, mean=0, sd=1)

par(mfrow=c(1, 1), mar=c(3,4,4,2))

plot(xseq,
     densities,
     col="darkgreen",
     xlab="",
     ylab="Density",
     type="l",
     lwd=2,
     cex=2,
     main="PDF of Standard Normal", cex.axis=.8)

