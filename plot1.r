# question1
# plot total pm2.5 emission
plot1 <- function(PM25)
{
  png(file="plot1.png")
  y <- c(1999,2002,2005,2008)
  
  #s <- rep(0,4)
  #for (i in 1:4)
  #{
  #  s[i] <- sum(PM25$Emission[PM25$year == y[i]])
  #}
  attach(PM25)
  s <- tapply(Emissions, list(year), sum)
  detach(PM25)
  plot(y,s,xlab="year",ylab="Emission", main="total PM2.5 emission from all sources",type="l")
  dev.off()
}

