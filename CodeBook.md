###Code Book - Course Project

The purpose of this project is to collect, work with, and clean the data set of the data collected from the
accelerometers from the Samsung Galaxy S smartphone. 

#Study design
This data is associated with the experiments of a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 
research captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly 
partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 
30% the test data. 

#Code Book
For this project, an independent tidy data set with the average of each variable for each activity and each subject 
was created. The name of the file is "tiny.data.txt" and for each record it is provided:

Subject : Subject Id
Activity : Name of the activities
Average-tBodyAcc-mean()-X : Mean of the 'tBodyAcc-mean()-X' measurement
Average-tBodyAcc-mean()-Y : Mean of the 'tBodyAcc-mean()-Y' measurement
Average-tBodyAcc-mean()-Z : Mean of the 'tBodyAcc-mean()-Z' measurement
Average-tGravityAcc-mean()-X : Mean of the 'tGravityAcc-mean()-X' measurement
Average-tGravityAcc-mean()-Y : Mean of the 'tGravityAcc-mean()-Y' measurement
Average-tGravityAcc-mean()-Z : Mean of the 'tGravityAcc-mean()-Z' measurement
Average-tBodyAccJerk-mean()-X : Mean of the 'tBodyAccJerk-mean()-X' measurement
Average-tBodyAccJerk-mean()-Y : Mean of the 'tBodyAccJerk-mean()-Y' measurement
Average-tBodyAccJerk-mean()-Z : Mean of the 'tBodyAccJerk-mean()-Z' measurement
Average-tBodyGyro-mean()-X : Mean of the 'tBodyGyro-mean()-X' measurement
Average-tBodyGyro-mean()-Y : Mean of the 'tBodyGyro-mean()-Y' measurement
Average-tBodyGyro-mean()-Z : Mean of the 'tBodyGyro-mean()-Z' measurement
Average-tBodyGyroJerk-mean()-X : Mean of the 'tBodyGyroJerk-mean()-X' measurement
Average-tBodyGyroJerk-mean()-Y : Mean of the 'tBodyGyroJerk-mean()-Y' measurement
Average-tBodyGyroJerk-mean()-Z : Mean of the 'tBodyGyroJerk-mean()-Z' measurement
Average-tBodyAccMag-mean() : Mean of the 'tBodyAccMag-mean()' measurement
Average-tGravityAccMag-mean() : Mean of the 'tGravityAccMag-mean()' measurement
Average-tBodyAccJerkMag-mean() : Mean of the 'tBodyAccJerkMag-mean()' measurement
Average-tBodyGyroMag-mean() : Mean of the 'tBodyGyroMag-mean()' measurement
Average-tBodyGyroJerkMag-mean() : Mean of the 'tBodyGyroJerkMag-mean()' measurement
Average-fBodyAcc-mean()-X : Mean of the 'fBodyAcc-mean()-X' measurement
Average-fBodyAcc-mean()-Y : Mean of the 'fBodyAcc-mean()-Y' measurement
Average-fBodyAcc-mean()-Z : Mean of the 'fBodyAcc-mean()-Z' measurement
Average-fBodyAcc-meanFreq()-X : Mean of the 'fBodyAcc-meanFreq()-X' measurement
Average-fBodyAcc-meanFreq()-Y : Mean of the 'fBodyAcc-meanFreq()-Y' measurement
Average-fBodyAcc-meanFreq()-Z : Mean of the 'fBodyAcc-meanFreq()-Z' measurement
Average-fBodyAccJerk-mean()-X : Mean of the 'fBodyAccJerk-mean()-X' measurement
Average-fBodyAccJerk-mean()-Y : Mean of the 'fBodyAccJerk-mean()-Y' measurement
Average-fBodyAccJerk-mean()-Z : Mean of the 'fBodyAccJerk-mean()-Z' measurement
Average-fBodyAccJerk-meanFreq()-X : Mean of the 'fBodyAccJerk-meanFreq()-X' measurement
Average-fBodyAccJerk-meanFreq()-Y : Mean of the 'fBodyAccJerk-meanFreq()-Y' measurement
Average-fBodyAccJerk-meanFreq()-Z : Mean of the 'fBodyAccJerk-meanFreq()-Z' measurement
Average-fBodyGyro-mean()-X : Mean of the 'fBodyGyro-mean()-X' measurement
Average-fBodyGyro-mean()-Y : Mean of the 'fBodyGyro-mean()-Y' measurement
Average-fBodyGyro-mean()-Z : Mean of the 'fBodyGyro-mean()-Z' measurement
Average-fBodyGyro-meanFreq()-X : Mean of the 'fBodyGyro-meanFreq()-X' measurement
Average-fBodyGyro-meanFreq()-Y : Mean of the 'fBodyGyro-meanFreq()-Y' measurement
Average-fBodyGyro-meanFreq()-Z : Mean of the 'fBodyGyro-meanFreq()-Z' measurement
Average-fBodyAccMag-mean() : Mean of the 'fBodyAccMag-mean()' measurement
Average-fBodyAccMag-meanFreq() : Mean of the 'fBodyAccMag-meanFreq()' measurement
Average-fBodyBodyAccJerkMag-mean() : Mean of the 'fBodyBodyAccJerkMag-mean()' measurement
Average-fBodyBodyAccJerkMag-meanFreq() : Mean of the 'fBodyBodyAccJerkMag-meanFreq()' measurement
Average-fBodyBodyGyroMag-mean() : Mean of the 'fBodyBodyGyroMag-mean()' measurement
Average-fBodyBodyGyroMag-meanFreq() : Mean of the 'fBodyBodyGyroMag-meanFreq()' measurement
Average-fBodyBodyGyroJerkMag-mean() : Mean of the 'fBodyBodyGyroJerkMag-mean()' measurement
Average-fBodyBodyGyroJerkMag-meanFreq() : Mean of the 'fBodyBodyGyroJerkMag-meanFreq()' measurement
Average-tBodyAcc-std()-X : Mean of the 'tBodyAcc-std()-X' measurement
Average-tBodyAcc-std()-Y : Mean of the 'tBodyAcc-std()-Y' measurement
Average-tBodyAcc-std()-Z : Mean of the 'tBodyAcc-std()-Z' measurement
Average-tGravityAcc-std()-X : Mean of the 'tGravityAcc-std()-X' measurement
Average-tGravityAcc-std()-Y : Mean of the 'tGravityAcc-std()-Y' measurement
Average-tGravityAcc-std()-Z : Mean of the 'tGravityAcc-std()-Z' measurement
Average-tBodyAccJerk-std()-X : Mean of the 'tBodyAccJerk-std()-X' measurement
Average-tBodyAccJerk-std()-Y : Mean of the 'tBodyAccJerk-std()-Y' measurement
Average-tBodyAccJerk-std()-Z : Mean of the 'tBodyAccJerk-std()-Z' measurement
Average-tBodyGyro-std()-X : Mean of the 'tBodyGyro-std()-X' measurement
Average-tBodyGyro-std()-Y : Mean of the 'tBodyGyro-std()-Y' measurement
Average-tBodyGyro-std()-Z : Mean of the 'tBodyGyro-std()-Z' measurement
Average-tBodyGyroJerk-std()-X : Mean of the 'tBodyGyroJerk-std()-X' measurement
Average-tBodyGyroJerk-std()-Y : Mean of the 'tBodyGyroJerk-std()-Y' measurement
Average-tBodyGyroJerk-std()-Z : Mean of the 'tBodyGyroJerk-std()-Z' measurement
Average-tBodyAccMag-std() : Mean of the 'tBodyAccMag-std()' measurement
Average-tGravityAccMag-std() : Mean of the 'tGravityAccMag-std()' measurement
Average-tBodyAccJerkMag-std() : Mean of the 'tBodyAccJerkMag-std()' measurement
Average-tBodyGyroMag-std() : Mean of the 'tBodyGyroMag-std()' measurement
Average-tBodyGyroJerkMag-std() : Mean of the 'tBodyGyroJerkMag-std()' measurement
Average-fBodyAcc-std()-X : Mean of the 'fBodyAcc-std()-X' measurement
Average-fBodyAcc-std()-Y : Mean of the 'fBodyAcc-std()-Y' measurement
Average-fBodyAcc-std()-Z : Mean of the 'fBodyAcc-std()-Z' measurement
Average-fBodyAccJerk-std()-X : Mean of the 'fBodyAccJerk-std()-X' measurement
Average-fBodyAccJerk-std()-Y : Mean of the 'fBodyAccJerk-std()-Y' measurement
Average-fBodyAccJerk-std()-Z : Mean of the 'fBodyAccJerk-std()-Z' measurement
Average-fBodyGyro-std()-X : Mean of the 'fBodyGyro-std()-X' measurement
Average-fBodyGyro-std()-Y : Mean of the 'fBodyGyro-std()-Y' measurement
Average-fBodyGyro-std()-Z : Mean of the 'fBodyGyro-std()-Z' measurement
Average-fBodyAccMag-std() : Mean of the 'fBodyAccMag-std()' measurement
Average-fBodyBodyAccJerkMag-std() : Mean of the 'fBodyBodyAccJerkMag-std()' measurement
Average-fBodyBodyGyroMag-std() : Mean of the 'fBodyBodyGyroMag-std()' measurement
Average-fBodyBodyGyroJerkMag-std() : Mean of the 'fBodyBodyGyroJerkMag-std()' measurement

