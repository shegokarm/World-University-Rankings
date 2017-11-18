# Importing libraries
library(ggplot2)
library(ggmap)
library(dplyr)
library(readr)

# Changing directory
getwd()
setwd("E:/RStudio_Dataset/World University Rankings/world-university-ranking")

# Importing data file
data <- read_csv("timesData.csv")

######basic plotting######
qplot(p$Country,data=p,fill=Country)

d <- data[,c(1,2,3,4)]

# Plot
g <- ggplot(d,aes(world_rank,teaching,color= country,label=university_name)) + xlab("University Name") + ylab("Teaching Scores") + ggtitle("Teachingwise Distribution") + geom_text(check_overlap = TRUE, size=3, hjust = 0, nudge_x = 0.01, vjust = 0, nudge_y = 0.1, angle = 1, fontface = "bold")
g + theme(
  text = element_text(colour = "Maroon", size = 10),
  axis.text = element_text(size = 10),
  axis.text.x = element_text(size = 10),
  axis.text.y = element_text(size = 10),
  legend.key = element_rect(fill = "white"),
  legend.background = element_rect(size = 10),
  legend.position = "top",
  legend.text = element_text(size = 10),
  #panel.grid.minor = element_blank(),
  panel.background = element_rect(fill = "white",colour = "white", size = 10)
  
)

# Plot
f <- data[1:100,c(3,4,6)]
j <- ggplot(f,aes(teaching,research, color=country))+xlab("Teaching")+ylab("Research")+ggtitle("Random")+geom_point()+ geom_smooth(method=lm,se=FALSE,fullrange=TRUE)
j + theme(
  text = element_text(colour = "Maroon",size = 12),
  axis.text = element_text(size = 12),
  axis.text.x = element_text(size = 12),
  axis.text.y = element_text(size = 12),
  legend.key = element_rect(fill = "white"),
  legend.position = "top",
  legend.background = element_rect(colour = "white",size = 12),
  legend.text = element_text(size = 12),
  panel.grid.minor = element_blank(),
  panel.background = element_rect(size = 12)
  
)