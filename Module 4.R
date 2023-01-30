#creating the variables
Freq <- c(0.6,0.3,0.4,0.4,0.2,0.6,0.3,0.4,0.9,0.2)
bloodp <- c(103,87,32,42,59,109,78,205,135,176)
first <- c(1,1,1,1,0,0,0,0,NA,1)
second <- c(0,0,1,1,0,0,1,1,1,1)
finaldecision <- c(0,1,0,1,0,1,0,1,1,1)

#combine the variables into a dataframe
data <- data.frame(Freq, bloodp, first, second, finaldecision)

#check for NA values
is.na(data)

#remove NA values
na.omit(data)

#create boxplot comparing blood pressure to final decision
boxplot(data$bloodp ~ data$finaldecision, xlab = "final decision", ylab = "blood pressure")

#create histogram
hist(data$bloodp)
hist(data$finaldecision)
