## EDA Assignment 2 - PM2.5 
# 2015-1-9
#Tao

### read the data
rm(list=ls())
PM25 <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
PM25 <- transform(PM25, SCC=factor(SCC), type=factor(type), year=factor(year))
Baltimore_PM <- subset(PM25, PM25$fips == "24510")
LA_PM <- subset(PM25, PM25$fips == "06037")

source('plot1.r')
source('plot2.r')
source('plot3.r')
source('plot4.r')
source('plot5.r')
source('plot6.r')

#question 1
plot1(PM25)

#question 2
plot2(Baltimore_PM)

# question3
plot3(PM25, Baltimore_PM)

# question 4
plot4(PM25)

# question 5
plot5(Baltimore_PM)

#question 6
plot6(LA_PM)
