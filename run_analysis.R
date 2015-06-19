library(dplyr)
# Read Variable Names
features <- read.table("features.txt")
# Read Data
X_train <- read.table("X_train.txt")
X_test <- read.table("X_test.txt")
# Read Subjects
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")
# Read Activities
y_train <- read.table("y_train.txt")
y_test <- read.table("y_test.txt")
# Read Activity Labels
activity_labels <- read.table("activity_labels.txt")
# Merge training and the test sets to create one data set
joined_data <- rbind(X_train, X_test)
# Assign raw variable names columns
column_names <- make.names(names=as.character(features$V2), unique=TRUE, allow_ = TRUE)
# Remove extra "." from variable names to make them more descriptive
x <- gsub("\\.\\.\\.|\\.\\.", ".", column_names)
y <- gsub("\\.$", "", x)
colnames(joined_data) <- y
# Extract only the measurements on the mean and standard deviation for each measurement.
HAR <- select(joined_data, contains("mean"), contains("std")) #HAR(Human Activity Measurement)
#Join subject training and test data
joined_subject <- rbind(subject_train, subject_test)
# Make "Subject" column name
colnames(joined_subject) <- "Subject"
#Join activity training and test data
joined_activity <- rbind(y_train, y_test)
# Make "Activity" column name
colnames(joined_activity) <- "Activity"
# Join all data into one data frame
HAR <- cbind(joined_subject, joined_activity, HAR)
# Use descriptive activity names to name the activities in the data set
HAR[HAR$Activity==1,2]  <- "WALKING"
HAR[HAR$Activity==2,2]  <- "WALKING_UPSTAIRS"
HAR[HAR$Activity==3,2]  <- "WALKING_DOWNSTAIRS"
HAR[HAR$Activity==4,2]  <- "SITTING"
HAR[HAR$Activity==5,2]  <- "STANDING"
HAR[HAR$Activity==6,2]  <- "LAYING"
# creates a second, independent tidy data set with the average of each variable
# for each activity and each subject
averages <- HAR %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
# write txt file for uploading
write.table(averages,"step5.txt", row.names=FALSE)
