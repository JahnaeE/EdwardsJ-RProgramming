library(lattice)
library(ggplot2)
#set working directory
setwd("C:/Users/13212/OneDrive/Documents/College/USF/Spring 23/R Programming/Module 9 visualization")
#load dataset
fishing <- read.csv("fishing.csv")
#clean
fishing <- fishing[,-1]
#basic plot
plot(fishing$totabund, fishing$sweptarea)
#lattice
xyplot(data = fishing, sweptarea  ~ totabund)
#ggplot
ggplot(fishing, aes(x = totabund, y = sweptarea)) + geom_point() 

