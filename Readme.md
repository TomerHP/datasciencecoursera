##General notes about Run_Analysis.R script

This scrypt does the following manipulations on the data:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	
Make sure you have extracted the content of the zipped file "getdata_projectfiles_UCI HAR Dataset.zip" into your working directory 
so that you have a folder named UCI HAR Dataset with all subfolders and files. 

##Code book
	
###variables names and descriptions
		
Name|Description|Type
----|-----------|----
Activity|Name of activity|Factor
Subject|Number of Subject (1:30)|Num
tBodyAcc-mean()-X|the average value for this feature (range: -1:1)|Int
tBodyAcc-mean()-Y|the average value for this feature (range: -1:1)|Int
tBodyAcc-mean()-Z|the average value for this feature (range: -1:1)|Int
tBodyAcc-std()-X|the average value for this feature (range: -1:1)|Int
tBodyAcc-std()-Y|the average value for this feature (range: -1:1)|Int
tBodyAcc-std()-Z|the average value for this feature (range: -1:1)|Int
tGravityAcc-mean()-X|the average value for this feature (range: -1:1)|Int
tGravityAcc-mean()-Y|the average value for this feature (range: -1:1)|Int
tGravityAcc-mean()-Z|the average value for this feature (range: -1:1)|Int
tGravityAcc-std()-X|the average value for this feature (range: -1:1)|Int
tGravityAcc-std()-Y|the average value for this feature (range: -1:1)|Int
tGravityAcc-std()-Z|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-mean()-X|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-mean()-Y|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-mean()-Z|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-std()-X|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-std()-Y|the average value for this feature (range: -1:1)|Int
tBodyAccJerk-std()-Z|the average value for this feature (range: -1:1)|Int
tBodyGyro-mean()-X|the average value for this feature (range: -1:1)|Int
tBodyGyro-mean()-Y|the average value for this feature (range: -1:1)|Int
tBodyGyro-mean()-Z|the average value for this feature (range: -1:1)|Int
tBodyGyro-std()-X|the average value for this feature (range: -1:1)|Int
tBodyGyro-std()-Y|the average value for this feature (range: -1:1)|Int
tBodyGyro-std()-Z|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-mean()-X|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-mean()-Y|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-mean()-Z|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-std()-X|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-std()-Y|the average value for this feature (range: -1:1)|Int
tBodyGyroJerk-std()-Z|the average value for this feature (range: -1:1)|Int
tBodyAccMag-mean()|the average value for this feature (range: -1:1)|Int
tBodyAccMag-std()|the average value for this feature (range: -1:1)|Int
tGravityAccMag-mean()|the average value for this feature (range: -1:1)|Int
tGravityAccMag-std()|the average value for this feature (range: -1:1)|Int
tBodyAccJerkMag-mean()|the average value for this feature (range: -1:1)|Int
tBodyAccJerkMag-std()|the average value for this feature (range: -1:1)|Int
tBodyGyroMag-mean()|the average value for this feature (range: -1:1)|Int
tBodyGyroMag-std()|the average value for this feature (range: -1:1)|Int
tBodyGyroJerkMag-mean()|the average value for this feature (range: -1:1)|Int
tBodyGyroJerkMag-std()|the average value for this feature (range: -1:1)|Int
fBodyAcc-mean()-X|the average value for this feature (range: -1:1)|Int
fBodyAcc-mean()-Y|the average value for this feature (range: -1:1)|Int
fBodyAcc-mean()-Z|the average value for this feature (range: -1:1)|Int
fBodyAcc-std()-X|the average value for this feature (range: -1:1)|Int
fBodyAcc-std()-Y|the average value for this feature (range: -1:1)|Int
fBodyAcc-std()-Z|the average value for this feature (range: -1:1)|Int
fBodyAcc-meanFreq()-X|the average value for this feature (range: -1:1)|Int
fBodyAcc-meanFreq()-Y|the average value for this feature (range: -1:1)|Int
fBodyAcc-meanFreq()-Z|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-mean()-X|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-mean()-Y|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-mean()-Z|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-std()-X|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-std()-Y|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-std()-Z|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-meanFreq()-X|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-meanFreq()-Y|the average value for this feature (range: -1:1)|Int
fBodyAccJerk-meanFreq()-Z|the average value for this feature (range: -1:1)|Int
fBodyGyro-mean()-X|the average value for this feature (range: -1:1)|Int
fBodyGyro-mean()-Y|the average value for this feature (range: -1:1)|Int
fBodyGyro-mean()-Z|the average value for this feature (range: -1:1)|Int
fBodyGyro-std()-X|the average value for this feature (range: -1:1)|Int
fBodyGyro-std()-Y|the average value for this feature (range: -1:1)|Int
fBodyGyro-std()-Z|the average value for this feature (range: -1:1)|Int
fBodyGyro-meanFreq()-X|the average value for this feature (range: -1:1)|Int
fBodyGyro-meanFreq()-Y|the average value for this feature (range: -1:1)|Int
fBodyGyro-meanFreq()-Z|the average value for this feature (range: -1:1)|Int
fBodyAccMag-mean()|the average value for this feature (range: -1:1)|Int
fBodyAccMag-std()|the average value for this feature (range: -1:1)|Int
fBodyAccMag-meanFreq()|the average value for this feature (range: -1:1)|Int
fBodyBodyAccJerkMag-mean()|the average value for this feature (range: -1:1)|Int
fBodyBodyAccJerkMag-std()|the average value for this feature (range: -1:1)|Int
fBodyBodyAccJerkMag-meanFreq()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroMag-mean()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroMag-std()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroMag-meanFreq()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroJerkMag-mean()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroJerkMag-std()|the average value for this feature (range: -1:1)|Int
fBodyBodyGyroJerkMag-meanFreq()|the average value for this feature (range: -1:1)|Int

