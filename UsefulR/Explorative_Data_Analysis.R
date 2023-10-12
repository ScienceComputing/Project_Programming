# Make a density plot
plot(density(df$var), xlab="RNA velocity", main="Distribution of RNA velocity",
     lwd=3, col="chocolate", ylim=c(0, 0.08))

# Make a histogram
hist(df$var, breaks=50, xlab="RNA velocity", main="Distribution of RNA velocity")