# question 4
# coal related source
plot4 <- function(PM25)
{
  #head(SCC)
  #str(SCC)
  y <- c(1999,2002,2005,2008)
  png(file="plot4.png")
  sources <- levels(SCC$Short.Name)
  index <- grep("Coal",sources)
  sources <- sources[index] # coal combustion-related sources
  code <- SCC$SCC[SCC$Short.Name %in% sources]
  
  #PM25 <- transform(PM25, SCC=factor(SCC))
  coalPM25 <- PM25[PM25$SCC %in% code,]
  attach (coalPM25)
  #snPM <- tapply ( Emissions , list( year , type ) , sum)
  cPM <- tapply ( Emissions , list(year) , sum)
  #colnames(cPM) <- c("year","type","Emissions")
  detach(coalPM25)
  plot(y,cPM,type="l",xlab="year",ylab="Emission",main="emissions from coal combustion-related sources")
  dev.off() 
}
