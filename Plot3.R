#plot3

#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

install.packages("ggplot2")
library(ggplot2)
##plot
png('plot3.png')
ggplot(Baltimore,aes(factor(year),Emissions,fill=type))+
  geom_bar(stat="identity")+
  facet_grid(.~type,scales = "free",space="free")+
  theme(axis.text.x = element_text(angle = 60, hjust = 1))+
  labs(x="year", y=expression("Total PM2.5 Emissions"))+
  labs(title=expression("Total Emissions in Baltimore city by Source Type per year"))
dev.off()