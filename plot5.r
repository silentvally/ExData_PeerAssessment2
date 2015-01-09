# question 5
plot5 <- function(nPM)
{
  y <- c(1999,2002,2005,2008)
  png(file="plot5.png")
  sources <- levels(SCC$Short.Name)
  index <- grep("Motor Vehicle",sources)
  sources <- sources[index] # coal combustion-related sources
  code <- SCC$SCC[SCC$Short.Name %in% sources]
  
  #PM25 <- transform(PM25, SCC=factor(SCC))
  coalPM25 <- PM25[PM25$SCC %in% code,]
  attach (coalPM25)
  #snPM <- tapply ( Emissions , list( year , type ) , sum)
  cPM <- tapply ( Emissions , list(year) , sum)
  #colnames(cPM) <- c("year","type","Emissions")
  detach(coalPM25)
  plot(y,cPM,type="l",xlab="year",ylab="Emission",main="emissions from motor vehicle sources in Baltimore City")
  dev.off() 
}
