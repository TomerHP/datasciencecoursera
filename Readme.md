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
	
variables names and descriptions
		
Name|Description
----|-----------
Activity|Factor
Subject|Num
tBodyAcc-mean()-X|Int
tBodyAcc-mean()-Y|Int
		
	First Header | Second Header
	------------ | -------------
	Content from cell 1 | Content from cell 2
	Content in the first column | Content in the second column
		
		
		
		tBodyAcc-mean()-Z	|	Int
		tBodyAcc-std()-X	|	Int
		tBodyAcc-std()-Y	|	Int
		tBodyAcc-std()-Z	|	Int
		tGravityAcc-mean()-X	|	Int
		tGravityAcc-mean()-Y	|	Int
		tGravityAcc-mean()-Z	|	Int
		tGravityAcc-std()-X	|	Int
		tGravityAcc-std()-Y	|	Int
		tGravityAcc-std()-Z	|	Int
		tBodyAccJerk-mean()-X	|	Int
		tBodyAccJerk-mean()-Y	|	Int
		tBodyAccJerk-mean()-Z	|	Int
		tBodyAccJerk-std()-X	|	Int
		tBodyAccJerk-std()-Y	|	Int
		tBodyAccJerk-std()-Z	|	Int
		tBodyGyro-mean()-X	|	Int
		tBodyGyro-mean()-Y	|	Int
		tBodyGyro-mean()-Z	|	Int
		tBodyGyro-std()-X	|	Int
		tBodyGyro-std()-Y	|	Int
		tBodyGyro-std()-Z	|	Int
		tBodyGyroJerk-mean()-X	|	Int
		tBodyGyroJerk-mean()-Y	|	Int
		tBodyGyroJerk-mean()-Z	|	Int
		tBodyGyroJerk-std()-X	|	Int
		tBodyGyroJerk-std()-Y	|	Int
		tBodyGyroJerk-std()-Z	|	Int
		tBodyAccMag-mean()	|	Int
		tBodyAccMag-std()	|	Int
		tGravityAccMag-mean()	|	Int
		tGravityAccMag-std()	|	Int
		tBodyAccJerkMag-mean()	|	Int
		tBodyAccJerkMag-std()	|	Int
		tBodyGyroMag-mean()	|	Int
		tBodyGyroMag-std()	|	Int
		tBodyGyroJerkMag-mean()	|	Int
		tBodyGyroJerkMag-std()	|	Int
		fBodyAcc-mean()-X	|	Int
		fBodyAcc-mean()-Y	|	Int
		fBodyAcc-mean()-Z	|	Int
		fBodyAcc-std()-X	|	Int
		fBodyAcc-std()-Y	|	Int
		fBodyAcc-std()-Z	|	Int
		fBodyAcc-meanFreq()-X	|	Int
		fBodyAcc-meanFreq()-Y	|	Int
		fBodyAcc-meanFreq()-Z	|	Int
		fBodyAccJerk-mean()-X	|	Int
		fBodyAccJerk-mean()-Y	|	Int
		fBodyAccJerk-mean()-Z	|	Int
		fBodyAccJerk-std()-X	|	Int
		fBodyAccJerk-std()-Y	|	Int
		fBodyAccJerk-std()-Z	|	Int
		fBodyAccJerk-meanFreq()-X	|	Int
		fBodyAccJerk-meanFreq()-Y	|	Int
		fBodyAccJerk-meanFreq()-Z	|	Int
		fBodyGyro-mean()-X	|	Int
		fBodyGyro-mean()-Y	|	Int
		fBodyGyro-mean()-Z	|	Int
		fBodyGyro-std()-X	|	Int
		fBodyGyro-std()-Y	|	Int
		fBodyGyro-std()-Z	|	Int
		fBodyGyro-meanFreq()-X	|	Int
		fBodyGyro-meanFreq()-Y	|	Int
		fBodyGyro-meanFreq()-Z	|	Int
		fBodyAccMag-mean()	|	Int
		fBodyAccMag-std()	|	Int
		fBodyAccMag-meanFreq()	|	Int
		fBodyBodyAccJerkMag-mean()	|	Int
		fBodyBodyAccJerkMag-std()	|	Int
		fBodyBodyAccJerkMag-meanFreq()	|	Int
		fBodyBodyGyroMag-mean()	|	Int
		fBodyBodyGyroMag-std()	|	Int
		fBodyBodyGyroMag-meanFreq()	|	Int
		fBodyBodyGyroJerkMag-mean()	|	Int
		fBodyBodyGyroJerkMag-std()	|	Int
		fBodyBodyGyroJerkMag-meanFreq()	|	Int
