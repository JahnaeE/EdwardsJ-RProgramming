#Step 1
#High School students SAT scores
#Name, grade, score 
library(randomNames)
setwd("C:/Users/13212/OneDrive/Documents/College/USF/Spring 23/R Programming/Module 7 S3 vs S4")

#create data set with students name, gpa, and sat
grades <- read.csv("grades.csv")
Names <- randomNames(84, which.names="first")

grades <- cbind(grades, Names)

#Step 2 
head(grades)
summary(grades)

#step 3
#S3
typeof(grades)

#S4
isS4(grades)

#Creating S3 and S4
S <- list(Name = "Anna", GPA=3.4, SAT = 1220)
class(S) = 'student'

#S4
setGeneric("student", function(x) standardGeneric("student"))
#define
setMethod("show",
          "student",
          function(object) {
            cat(object@name, "\n")
            cat(object@GPA, "\n")
            cat("GPA:", object@SAT, "\n")
          }
)
#add
S4 <- new("student", name="Anna", GPA=3.4, SAT=1220)
#confirm S4
isS4(S4)
