##Merges the training and the test sets to create one data set.

  ## Import train/X_train.txt (training) AND  test/X_test.txt (test)
  train<-read.table(header = TRUE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
  ##7351 observations of  561 variables
  test<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
  ##2946 observations of  561 variables
  
  ##Merging into one big table with 10299 observations and 561 variables
  All<-rbind(train,test)

   
##Extracts only the measurements on the mean and staandard deviation for each measurement.
  All_sum<-rbind(apply(All,2,mean),apply(All,2,sd))

  
##Uses descriptive activity names to name the activities in the data set
  Activities<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",colClasses = c("NULL","character"))
  test_subjects<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
  train_subjects<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
  All_subjects<-rbind(train_subjects, test_subjects)
  names(All_subjects)<-c("ID")
  Y_test<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
  
##Appropriately labels the data set with descriptive variable names.
  Lables<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",colClasses = c("NULL","character"))
  Lables_V<-sapply(Lables,as.character)
  names(All)<-Lables_V
  
  
  
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

