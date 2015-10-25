setwd("C:/Users/zxu/Documents/Nov 15 2014 R")
library(plyr)
library(ggplot2)

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
set.seed(12345)
NEI.reduced <- NEI[sample(nrow(NEI), 500), ]

data <- with(NEI, aggregate(Emissions, by = list(year), sum))

plot(data, type = "o", ylab = "Total Emissions - million tons", 
     xlab = "Year", main = "Total Emissions in the US.")
polygon(data, col = "purple", border = "green")

