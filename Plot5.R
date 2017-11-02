#Plot5

#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#merge
NEI_Merged <- merge(NEI, SCC, by="SCC")
df_NEI_Merged <- tbl_df(NEI_Merged)
#Summarize
Baltimora_Vehicle <-summarize(group_by(filter(df_NEI_Merged, fips=="24510", type=='ON-ROAD'), year), sum(Emissions)) 
filter(df_NEI_Merged)
colnames(Baltimora_Vehicle) <- c("Year", "Emissions")
#Transpose data frame
Emissions<-t(Baltimora_Vehicle)
colnames(Emissions)<-Emissions[1,]
Emissions<-Emissions[-1,]
#Plot 
png('plot5.png')
barplot(
  Emissions,xlab = "Years",
  ylab = "Total PM2.5 Emissions",
  main = "Total motor vehicle emissions in Batlimore per year")
dev.off()