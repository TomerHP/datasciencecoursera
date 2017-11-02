#Import tables 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#merge
NEI_Merged <- merge(NEI, SCC, by="SCC")
df_NEI_Merged <- tbl_df(NEI_Merged)
#Find and replace
coal_related = grepl("coal", df_NEI_Merged$Short.Name, ignore.case=TRUE)
#for mutate function
install.packages("dplyr")
library(dplyr) 
df_NEI_Merged <- mutate(df_NEI_Merged,coal_related)
#Summarize
EmissionsCoalYear <- summarize(group_by(filter(df_NEI_Merged, coal_related==TRUE),year),sum(Emissions))
colnames(EmissionsCoalYear) <- c("Year", "Emissions")
#Transpose data frame
Emissions<-t(EmissionsCoalYear)
colnames(Emissions)<-Emissions[1,]
Emissions<-Emissions[-1,]
#Plot 
png('plot4.png')
barplot(
  Emissions,xlab = "Years",
  ylab = "Total PM2.5 Emissions",
  main = "Total coal combustion-related emissions in US per year")
dev.off()