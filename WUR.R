library(data.table)
library(ggplot2)
library(readr)

getwd()
setwd("E:/RStudio_Dataset/World University Rankings/world-university-ranking")
data <- read_csv("timesData.csv")

which(data$country=='')
