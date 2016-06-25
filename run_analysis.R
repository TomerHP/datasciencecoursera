##Merges the training and the test sets to create one data set.

  ## Import train/X_train.txt (training) AND  test/X_test.txt (test)
  train<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
  ##7351 observations of  561 variables
  test<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
  ##2946 observations of  561 variables
  
  ##Merging into one big table with 10299 observations and 561 variables
  All<-rbind(train,test)
  
##Extracts only the measurements on the mean and standard deviation for each measurement.
  Lables<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",colClasses = c("NULL","character"))
  Lables_V<-sapply(Lables,as.character)
  names(All)<-Lables_V
  only_mean_and_std<-All[Lables_V[grep("mean\\(\\)|std\\(\\)",Lables_V)]]
  
##Uses descriptive activity names to name the activities in the data set
  Activities<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt",col.names = c("Activity_code","Acitivity"))
  Y_test<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt",col.names="Activity_code")
  Y_train<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt",col.names="Activity_code")
  Y_all<-rbind(Y_train,Y_test)
  Y_merged<-merge(Y_all,Activities)
  
##Appropriately labels the data set with descriptive variable names.
  only_mean_and_std<-cbind(only_mean_and_std[1],Y_merged[2],only_mean_and_std[2:length(names(only_mean_and_std))])
  test_subjects<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt",col.names=c("ID"))
  train_subjects<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt",col.names=c("ID"))
  All_subjects<-rbind(train_subjects, test_subjects) 
  All<-cbind(All_subjects,All)
  
##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
  Lables<-read.table(header = FALSE,file = "getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt",colClasses = c("NULL","character"))
  Lables_V<-sapply(Lables,as.character)
  names(All)<-Lables_V
  only_mean_and_std<-All[Lables_V[grep("mean\\(\\)|std\\(\\)",Lables_V)]]
  
  