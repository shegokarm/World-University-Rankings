# Importing libraries
library(dplyr)
library(ggplot2)
library(readr)

# Changing directory
getwd()
setwd("/Users/manishshegokar/Documents/Manish_documents/My independent projects/RStudio_Dataset/World University Rankings/world-university-ranking")

#Importing data
data <- read_csv("shanghaiData.csv")

# Filtering on Harvard university
Harvard <- data[grep("Harvard University",data$university_name),]
Harvard[,2] = 'Harvard'

# Filtering on Stanford university
Stanford <- data[grep("Stanford University",data$university_name),]
Stanford[,2] = 'Stanford'

# Filtering on Brown university
Brown <- data[grep("Brown",data$university_name),]
Brown[,2] = 'Brown'

#In grep command put 'Columbia University' instead of 'Columbia' because it will give you more universitites that are having Columbia in their name
Columbia <- data[grep("Columbia University",data$university_name),]
Columbia[,2] <- 'Columbia'

# Filtering on Cornell university
Cornell <- data[grep("Cornell",data$university_name),]
Cornell[,2] <- 'Cornell'

# Filtering on Darthmouth university
Dartmouth <- data[grep("Dartmouth",data$university_name),]
Dartmouth[,2] <- 'Dartmouth'

# Filtering on Princeton university
Princeton <- data[grep("Princeton",data$university_name),]
Princeton[,2] <- 'Princeton'

# Filtering on Yale university
Yale <- data[grep("Yale",data$university_name),]
Yale[,2] <- 'Yale'

#In grep command put 'University of Pennsylvania' instead of 'Penn' because it will give you 2 universitites that are having Penn in their name
Penn <- data[grep("University of Pennsylvania",data$university_name),]
Penn[,2] <- 'Penn'

All <- rbind(Harvard,Stanford,Princeton,Columbia,Cornell,Dartmouth,Yale)

# Plot
g <- ggplot(All,aes(year,world_rank,color = university_name,group = university_name)) + xlab("Year") + ylab("World Ranking") + ggtitle("Ivy League Ranking") + geom_point(size=2) + geom_line(size=1)
g + theme(
    text = element_text(size = 16, colour = "Maroon"),
    axis.text = element_text(size = 16),
    axis.text.x = element_text(size = 16),
    axis.text.y = element_text(size = 16),
    legend.key = element_rect(fill = "white"),
    legend.background = element_rect(fill="white"),
    legend.text = element_text(size = 16),
    legend.position = "top",
    panel.grid.minor = element_blank(),
    panel.background = element_rect(size = 16)
       
 )                                                                              