##Please make sure /UCI HAR Dataset folder is located in WD

##1. Merges the training and the test sets to create one data set.
	## Import train/X_train.txt (training) AND  test/X_test.txt (test)
	train<-read.table(header = FALSE,file = "./UCI HAR Dataset/train/X_train.txt")
	##7351 observations of  561 variables
	test<-read.table(header = FALSE,file = "./UCI HAR Dataset/test/X_test.txt")
	##2946 observations of  561 variables

	##Merging into one big table with 10299 observations and 561 variables
	All<-rbind(train,test)

##2. Extracts only the measurements on the mean and standard deviation for each measurement.
	features<-read.table(header = FALSE,file = "./UCI HAR Dataset/features.txt",colClasses = c("NULL","character"))
	features_v<-sapply(features,as.character)
	names(All)<-features_v #setting features as column names
	extracted<-All[features_v[grep("mean|std",features_v)]]

##3. Uses descriptive activity names to name the activities in the data set
	activities<-read.table(header = FALSE,file = "./UCI HAR Dataset/activity_labels.txt")[,2]
	y_test<-read.table(header = FALSE,file = "./UCI HAR Dataset/test/y_test.txt",col.names="ActivityId")
	y_train<-read.table(header = FALSE,file = "./UCI HAR Dataset/train/y_train.txt",col.names="ActivityId")
	y_all<-rbind(y_train,y_test)
	y_all<-activities[y_all[,1]]

##4. Appropriately labels the data set with descriptive variable names.
	test_subjects<-read.table(header = FALSE,file = "UCI HAR Dataset/test/subject_test.txt",col.names=c("Subject"))
	train_subjects<-read.table(header = FALSE,file = "UCI HAR Dataset/train/subject_train.txt",col.names=c("Subject"))
	All_subjects<-rbind(train_subjects, test_subjects) 
	activities<-data.frame(y_all)
	names(activities)<-c("Activity")
	tidy<-cbind(All_subjects,activities,extracted)

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  grouped<-aggregate(. ~Subject+Activity, data = tidy, mean)
  write.table(grouped,"tidy_data.txt",row.names=FALSE)
