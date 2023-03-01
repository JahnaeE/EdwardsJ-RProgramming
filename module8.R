#Step 1 
library(plyr)
require(ISLR)
require(boot)
library(data.table)
#library(ISLR)
setwd("C:/Users/13212/OneDrive/Documents/College/USF/Spring 23/R Programming/Module 8 InputOutput, string manipulation and plyr package")
Student <- read.table("Assignment 6 Dataset.txt", sep=",", header = TRUE)

StudentAverage <- ddply(Student,"Sex",transform,Grade.Average=mean(Grade))

sex <- Student$Sex
mean(sex)

#Step 2
write.table(StudentAverage, "Students_Gendered_Mean")

i_students <- subset(Student, grepl("i", Student$Name, ignore.case=T))
#Step 3
write.table(i_students, "SubsetMeans.csv", sep=",")

