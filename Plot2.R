#Plot2

#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Search and filter Baltimore
Baltimore<-subset(NEI,fips=="24510")
Baltimore_tot<-with(Baltimore,tapply(Emissions,year,sum,na.rm=T))
#Plot
png('plot2.png')
barplot(
  Baltimore_tot,xlab = "Years",
  ylab = "Total PM2.5 Emissions",
  main = "Total emissions in Baltimore city per year")
dev.off()