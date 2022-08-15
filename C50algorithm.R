#The C5.0 algorithm
#First install these packages
install.packages("C50")
install.packages("dplyr")
library(dplyr)

#get the iris dataset (for more info https://en.wikipedia.org/wiki/Iris_flower_data_set)
iris

head(iris,4)
dim(iris)

#we need to divide our data into training data and test data. 
#C5.0 is a classifier, so you’ll be teaching it how to classify the different species of irises using the training data.
library(C50)

#Splitting data set into traing and testing.
#Splitting data based on the species
iris_setosa <- iris[iris$Species == "setosa", ]
iris_versicolor <- iris[iris$Species == "versicolor",]
iris_virginica <- iris[iris$Species == "virginica",]

#splitting data sequentially *optional
iris_train <- rbind(iris_setosa[1:35,], iris_versicolor[1:35,], iris_virginica[1:35,])
iris_test <- rbind(iris_setosa[36:50,], iris_versicolor[36:50,], iris_virginica[36:50,])

#spliting randomly
#install caret lib which is used to split the dataset
install.packages("caret")
library(caret)

install.packages("lattice")
install.packages("ggplot2")

library(lattice)
library(ggplot2)

attach(iris)
inTrainingData <- createDataPartition(y= Species, p=0.70, list = FALSE)
trainData <- iris[inTrainingData,]
testData <- iris[-inTrainingData,]

#Build the model on the training data
dtModel <- C5.0(trainData[,-5], trainData$Species)
plot(dtModel)

#Checking accuracy of the training data model
#The predict() function takes your model, the test data 
#and one parameter that tells it to guess the class 
#(in this case, the model indicates species).
predict(dtModel, testData)

summary(testData)

(testData$Species == predict(dtModel, testData))

mean(testData$Species == predict(dtModel, testData))

#cross table
install.packages("gmodels")
library(gmodels)
CrossTable(testData$Species,predict(dtModel, testData))

CrossTable(testData$Species == predict(dtModel, testData))

#How did the model do? 
#TASK: What percent of cases were correctly classified?
# I could not run this last model, I was unable to install several of the the packages required for it (e.g., caret and C50)
# R studio kept telling me (after installing such packages): 
# library(C50)
 # Error in library(C50) : there is no package called ‘C50’
# That happened with the caret package as well and the rest following that simply did not work. I tried lots of things and could not make it work.
# So, unfortunately I could not run this model successfully. I really hope this doesn't affect my grade, I really enjoyed the course and all the R activities. 



