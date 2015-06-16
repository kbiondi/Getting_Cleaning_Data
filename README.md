# Getting_Cleaning_Data
Repo for Getting and Cleaning Data Course Project.  This is the third class in the Coursera data science specialization. analysis.R creates a tidy data set from the accelerometer data from the Samsung Galaxy S smartphone.

analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

analysis.R does not necessarily do the above steps in order as this was not a requirement.

A line by line explanation of analysis.R follows:

* Line 3 reads the variable names.
* Lines 5-6 read the observation training and test data
* Lines 7-8 read the subject training and test data
* Lines 11-12 read the activity training and test data
* Line 14 reads the activity labels
* Line 16 joins the observation training and test data
* Line 18 makes valid column names since the provided variable names are not valid R names.  The supplied names are descriptive even though they contain invalid column name characters.
* Lines 20-21 remove the extra "." created by the make.names function 
* Line 22 assigns valid column names
* Line 24 extracts all variables containing "mean" and "std" (standard deviation)
* Line 26 joins subject training and test data
* Line 28 makes a "Subject" column name
* Line 30 joins activity training and test data
* Line 32 makes an "Activity" column name
* Line 34 joins all of the sub data sets
* Lines 36-41 assign descriptive activity names to name the activities
* Line 44 creates a second, independent tidy data set with the average of each variable for each activity and each subject
* Line 46 writes the second, independent tidy data set to a .txt file
