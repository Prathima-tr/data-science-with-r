# example 1.1 of section 1.2.4 
# (example 1.1 of section 1.2.4)  : The data science process : Stages of a data science project : Model evaluation and critique 
# Title: Calculating the confusion matrix 

library("rpart") 	# Note: 1 
load("F://Subjects Handled//DSR - AI&DS - 2022023//TB//PDSwR2-main//Statlog//loan_model_example.RData") 	# Note: 2 
conf_mat <- table(actual = d$Loan_status, pred = predict(model, type = 'class'))  	# Note: 3 

conf_mat
##           pred
## actual     BadLoan GoodLoan
##   BadLoan       41      259
##   GoodLoan      13      687

(accuracy <- sum(diag(conf_mat)) / sum(conf_mat))   	# Note: 4 
## [1] 0.728
(precision <- conf_mat["BadLoan", "BadLoan"] / sum(conf_mat[, "BadLoan"])) 	# Note: 5 
## [1] 0.7592593
(recall <- conf_mat["BadLoan", "BadLoan"] / sum(conf_mat["BadLoan", ])) 	# Note: 6 
## [1] 0.1366667
(fpr <- conf_mat["GoodLoan","BadLoan"] / sum(conf_mat["GoodLoan", ])) 	# Note: 7 
## [1] 0.01857143

# Note 1: 
#   How to install all of the packages needed to 
#   run examples in this book can be found here: 
#   https://github.com/WinVector/PDSwR2/blob/master/packages.R 

# Note 2: 
#   This file can be found at: https://github.com/WinVector/PDSwR2/tree/master/Statlog 

# Note 3: 
#   Create the confusion matrix. 

# Note 4: 
#   accuracy 
#   confusion matrix 
#   Overall model accuracy: 73% of the 
#   predictions were correct. 

# Note 5: 
#   precision 
#   confusion matrix 
#   Model precision: 76% of the 
#   applicants predicted as bad really did 
#   default. 

# Note 6: 
#   recall 
#   confusion matrix 
#   Model recall: the model found 14% of 
#   the defaulting loans. 

# Note 7: 
#   false positive rate 
#   confusion matrix 
#   False positive rate: 2% of the good 
#   applicants were mistakenly identified as 
#   bad. 

