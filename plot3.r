# question3
plot3 <- function(PM25,nPM)
{
  library(ggplot2)
  l <- levels(nPM$type)
  y <- c(1999,2002,2005,2008)
 
  attach(nPM)
  #snPM <- tapply ( Emissions , list( year , type ) , sum)
  snPM <- aggregate (Emissions , list( year , type ) , sum)
  colnames(snPM) <- c("year","type","Emissions")
  detach(nPM)
  png(file="plot3-1.png")
  qplot(year, Emissions, data=snPM, facets=.~type)
  dev.off()
  
  attach (PM25)
  #snPM <- tapply ( Emissions , list( year , type ) , sum)
  sPM <- aggregate(Emissions , list( year , type ) , sum)
  colnames(sPM) <- c("year","type","Emissions")
  detach(PM25)
  png(file="plot3-2.png")
  qplot(year, Emissions, data=sPM, facets=.~type)
  dev.off()
}
