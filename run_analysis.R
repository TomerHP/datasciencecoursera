##Merges the training and the test sets to create one data set.

  ## Import train/X_train.txt (training) AND  test/X_test.txt (test)
  train<-read.table(header = TRUE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
  ##7351 observations of  561 variables
  test<-read.table(header = TRUE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
  ##2946 observations of  561 variables
  
  



##Extracts only the measurements on the mean and standard deviation for each measurement.


##Uses descriptive activity names to name the activities in the data set


##Appropriately labels the data set with descriptive variable names.


##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

