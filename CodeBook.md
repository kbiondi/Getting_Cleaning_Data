a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

The raw data was provided in eight text files:

* features.txt contained the variable names
* X_train.txt contained the training data
* X_test.txt contained the test data
* subject_train.txt contained the list of training subjects
* subject_test.txt contained the list of test subjects
* Y_train.txt contained a numeric list of training activities
* Y_test.txt contained a numeric list of test activities
* activity_labels.txt is a character list of test activities

I combined the above text files into one organized data set. The activitiy_labels.txt character descriptions of activities replaced the numeric activity codes in Y_train.txt and Y_test.txt.

Only data with variable names containing "mean" and "std" were selected for the final data set.

A description of the variables follows:

Subject - A number representing the person performing the activity

Activity - A character value for physical the activities WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING

The following list of variables are the numeric data readings.  X, Y, and Z stand for 3-axial signals in the X, Y and Z directions. Prefix "t" stands for time. Prefix "f" stands for frequency domain signals. "Acc" stands for accelerometer and "Gyro" stands for gyroscope. "Mean" is the mean value. "std" is the standard deviation.

tBodyAcc.mean.X

tBodyAcc.mean.Y

tBodyAcc.mean.Z

tGravityAcc.mean.X

tGravityAcc.mean.Y

tGravityAcc.mean.Z

tBodyAccJerk.mean.X

tBodyAccJerk.mean.Y

tBodyAccJerk.mean.Z

tBodyGyro.mean.X

tBodyGyro.mean.Y

tBodyGyro.mean.Z

tBodyGyroJerk.mean.X

tBodyGyroJerk.mean.Y

tBodyGyroJerk.mean.Z

tBodyAccMag.mean

tGravityAccMag.mean

tBodyAccJerkMag.mean

tBodyGyroMag.mean

tBodyGyroJerkMag.mean

fBodyAcc.mean.X

fBodyAcc.mean.Y

fBodyAcc.mean.Z

fBodyAcc.meanFreq.X

fBodyAcc.meanFreq.Y

fBodyAcc.meanFreq.Z

fBodyAccJerk.mean.X

fBodyAccJerk.mean.Y

fBodyAccJerk.mean.Z

fBodyAccJerk.meanFreq.X

fBodyAccJerk.meanFreq.Y

fBodyAccJerk.meanFreq.Z

fBodyGyro.mean.X

fBodyGyro.mean.Y

fBodyGyro.mean.Z

fBodyGyro.meanFreq.X

fBodyGyro.meanFreq.Y

fBodyGyro.meanFreq.Z

fBodyAccMag.mean

fBodyAccMag.meanFreq

fBodyBodyAccJerkMag.mean

fBodyBodyAccJerkMag.meanFreq

fBodyBodyGyroMag.mean

fBodyBodyGyroMag.meanFreq

fBodyBodyGyroJerkMag.mean

fBodyBodyGyroJerkMag.meanFreq

angle.tBodyAccMean.gravity

angle.tBodyAccJerkMean.gravityMean

angle.tBodyGyroMean.gravityMean

angle.tBodyGyroJerkMean.gravityMean

angle.X.gravityMean

angle.Y.gravityMean

angle.Z.gravityMean

tBodyAcc.std.X

tBodyAcc.std.Y

tBodyAcc.std.Z

tGravityAcc.std.X

tGravityAcc.std.Y

tGravityAcc.std.Z

tBodyAccJerk.std.X

tBodyAccJerk.std.Y

tBodyAccJerk.std.Z

tBodyGyro.std.X

tBodyGyro.std.Y

tBodyGyro.std.Z

tBodyGyroJerk.std.X

tBodyGyroJerk.std.Y

tBodyGyroJerk.std.Z

tBodyAccMag.std

tGravityAccMag.std

tBodyAccJerkMag.std

tBodyGyroMag.std

tBodyGyroJerkMag.std

fBodyAcc.std.X

fBodyAcc.std.Y

fBodyAcc.std.Z

fBodyAccJerk.std.X

fBodyAccJerk.std.Y

fBodyAccJerk.std.Z

fBodyGyro.std.X

fBodyGyro.std.Y

fBodyGyro.std.Z

fBodyAccMag.std

fBodyBodyAccJerkMag.std

fBodyBodyGyroMag.std

fBodyBodyGyroJerkMag.std
