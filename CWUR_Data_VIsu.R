# Importing libraries
library(dplyr)
library(ggplot2)
library(readr)

# Changing directory
getwd()
setwd("E:/RStudio_Dataset/World University Rankings/world-university-ranking")

# Importing data file
data <- read_csv("cwurData.csv")

# Filtering on Harvard university
harvard <- data[grep("Harvard",data$institution),]

# Filtering on MIT university
mit <- data[grep("Massachusetts Institute of Technology",data$institution),]

# Filtering on Stanford university
stanford <- data[grep("Stanford University",data$institution),]

All <- rbind(harvard, mit, stanford)

# Plot
g <- ggplot(All,aes(year,world_rank,colour=institution)) + xlab("Year") + ylab("World Rank") + ggtitle("CWUR World Rankings") + geom_point(size=2) + geom_line(size=1)
 g+theme(
   text = element_text(size = 16,colour = "Black"),
   axis.text = element_text(size = 16),
   axis.text.x = element_text(size = 16),
   axis.text.y = element_text(size = 16),
   legend.key = element_rect(size = 16,fill = "white"),
   legend.position = "top",
   legend.background = element_rect(size = 16,fill = "white"),
   legend.text = element_text(size = 16),
   panel.background = element_rect(fill= "white",colour = "white")
   
 )

###Version2
d <- data[,c(2,13)]

# Filtering on Harvard university
harvard <- data[grep("Harvard",data$institution),]

# Filtering on MIT university
mit <- data[grep("Massachusetts Institute of Technology",data$institution),]

# Filtering on Stanford university
stanford <- data[grep("Stanford University",data$institution),]

All <- rbind(harvard, mit, stanford)

# Plot
g <- ggplot(All,aes(year,score,fill=institution, colour=institution, group= institution)) + xlab("Year") + ylab("Score") + ggtitle("Overall Score of Top 3 CWUR Universities ") + geom_bar(stat = "identity", position="dodge")
 g + theme(
   text = element_text(size = 16),
   axis.text = element_text(size = 16),
   axis.text.x = element_text(size = 16),
   axis.text.y = element_text(size = 16),
   legend.key = element_rect(fill = "white"),
   legend.position = "top",
   legend.background = element_rect(color = "white"),
   legend.text = element_text(size = 16),
   panel.background = element_rect(fill = "white", size = 16)
   
 )