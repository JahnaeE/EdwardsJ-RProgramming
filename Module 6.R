setwd("C:/Users/13212/OneDrive/Documents/College/USF/Spring 23/Visual analytics/Module 6 - Visual differences")
novice <- read.csv("novice_players.csv")
library(ggplot2)
libra
#what are the most common time control
ggplot(novice, aes(x=time_class)) + geom_bar() + ggtitle("Most Common Time Control") + xlab("Time Control") + ylab("Frequency")


