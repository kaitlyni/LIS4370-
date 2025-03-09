install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)

Student <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
Student

StudentAverage = ddply(Student,"Sex",transform,Grade.Average=mean(Grade))
StudentAverage

letterI <- subset(Student, grepl("[iI]", Student$Name))
letterI
write.table(letterI, "DataSubset", sep = ",")