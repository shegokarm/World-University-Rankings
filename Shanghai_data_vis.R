# Importing libraries
library(ggplot2)
library(ggmap)
library(dplyr)
library(readr)

# Changing directory
getwd()
setwd("E:/RStudio_Dataset/World University Rankings/world-university-ranking")

# Importing data file
data <- read_csv("shanghaiData.csv")

# Filtering on MIT university
MIT <- data[grep("MIT", data$university_name),]
MIT[,2] = 'MIT'
MIT

# Filtering on Harvard university
Harvard_Uni <- data[grep("Harvard University",data$university_name),] 
Harvard_Uni[,2] <- 'Harvard'

# Filtering on Stanford university
Stanford_Uni <- data[grep("Stanford University",data$university_name),]
Stanford_Uni[,2] <- 'Stanford'

# Filtering on UC university
UC <- data[grep("University of California, Berkeley",data$university_name),]
UC[,2] <- 'UCBerkeley'

# Filtering on Caltech university
CalTech <- data[grep("California Institute of Technology",data$university_name),]
CalTech[,2] <- 'CalTech'

total <- rbind(MIT,Harvard_Uni,Stanford_Uni,UC,CalTech)

# Plot
g <- ggplot(total,aes(year,world_rank,colour=university_name,group=university_name))+xlab("Year")+ylab("World Rank")+ggtitle("Ranking over the years")+geom_point(size=3)+geom_line(size=1)
g + theme(
  text = element_text(size = 12, colour = "Brown"),
  axis.text = element_text(size = 12),
  axis.text.x = element_text(size = 12,colour = "Black"),
  axis.text.y = element_text(size = 12,colour = "Black"),
  legend.key = element_rect(size = 12,colour = "white"),
  legend.position = "top",
  legend.background = element_rect(size = 12,colour = "white"),
  #panel.grid.minor = element_blank(),
  panel.background = element_rect(size = 12,colour="white")

)