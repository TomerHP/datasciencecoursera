#Plot6

#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

Baltimore_Vehicle <-summarize(group_by(filter(df_NEI_Merged, fips=="24510", type=='ON-ROAD'), year), sum(Emissions)) 
LA_Vehicle        <-summarize(group_by(filter(df_NEI_Merged, fips=="06037", type=='ON-ROAD'), year), sum(Emissions)) 
##Names for the cities
LA_Vehicle<-mutate(LA_Vehicle, City = 'Los Angeles')
Baltimore_Vehicle<-mutate(Baltimore_Vehicle, City = 'Baltimore')
##combine tables
two_cities<-rbind(Baltimore_Vehicle,LA_Vehicle)
names(two_cities)<-c('year','Emissions','city')

png('plot6.png')
ggplot(two_cities,aes(factor(year),Emissions,fill=year))+
    geom_bar(stat="identity")+
    facet_grid(~city)+
    labs(x="Year",y="Total PM2.5 Emissions",title="Total Motor Vehicle Emissions in Baltimore & Los Angeles per year")
dev.off()

  



