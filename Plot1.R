#Plot1
#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Sum
tot<-with(NEI,tapply(Emissions/1000,year,sum,na.rm=T))
#Plot
png('plot1.png')
barplot(tot,xlab = "Years",ylab = "PM2.5 Emissions (K tons)",main = "Total emissions in the US per year")
dev.off()