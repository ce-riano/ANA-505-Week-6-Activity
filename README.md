# ANA-505-Week-6-Activity
Accuracy rate: 
		SVM accuracy: 2%
		K Means accuracy: 88%
		C50 accuracy: ?%  could not be carried out due to packages failure (see bellow)

———————————————————————————————————————————————————————————————————————————————————
Machine learning algorithms:
SVM algoritm results: 
#How did the model do?

# Actual
# Predicted    setosa versicolor virginica
# setosa         50          0         0
# versicolor      0         48         2
# virginica       0          2        48

#What is the accuracy rate?

# 0.02666667

K means algorithm results:

table(result$cluster,iris.class)
   iris.class
    setosa versicolor virginica
  1     50          0         0
  2      0          3        36
  3      0         47        14

#How did the model do? Good 88% accuracy 
#TASK: Accuracy = number of correctly classified/(total classified) = 133/150 = 0.8866666667

C50 algorithm results:

#How did the model do? 
#TASK: What percent of cases were correctly classified?
# I could not run this last model, I was unable to install several of the the packages required for it (e.g., caret and C50)
# R studio kept telling me (after installing such packages): 
# library(C50)
 # Error in library(C50) : there is no package called ‘C50’
# That happened with the caret package as well and the rest following that simply did not work. I tried lots of things and could not make it work.
# So, unfortunately I could not run this model successfully. I really hope this doesn't affect my grade, I really enjoyed the course and all the R activities. 
