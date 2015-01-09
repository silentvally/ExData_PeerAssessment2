# question 6
plot6 <- function(nPM)
{
  y <- c(1999,2002,2005,2008)
  png(file="plot6.png")
  sources2 <- levels(SCC$Short.Name)
  index2 <- grep("Motor Vehicle",sources2)
  sources2 <- sources2[index2] # coal combustion-related sources
  code2 <- SCC$SCC[SCC$Short.Name %in% sources2]
  
  motorPM25 <- nPM[nPM$SCC %in% code2,]
  attach (motorPM25)
  #snPM <- tapply ( Emissions , list( year , type ) , sum)
  mPM <- tapply (Emissions , list(year) , sum)
  #colnames(cPM) <- c("year","type","Emissions")
  detach(motorPM25)
  plot(y,mPM,type="l",xlab="year",ylab="Emission",main="emissions from motor vehicle sources in LA City")
  dev.off()
}
