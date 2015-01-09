# question 2
plot2 <- function(nPM)
{
  png(file="plot2.png")
  y <- c(1999,2002,2005,2008)
  #nPM <-subset(PM25, PM25$fips == "24510")
  #s2 <- rep(0,4)
  #for (i in 1:4)
  #{
  #  s2[i] <- sum(nPM$Emission[nPM$year == m[i]])
  #}
  attach(PM25)
  s2 <- tapply(Emissions, list(year), sum)
  detach(PM25)
  plot(y,s2,xlab="year",ylab="Emission", main="Emission in Baltimore City",type="l")
  dev.off()
}

