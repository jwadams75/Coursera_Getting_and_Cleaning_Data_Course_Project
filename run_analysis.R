####Overview####
#Uses data collected from the accelerometer and gyroscope from a Samsung Galaxy S II smartphone from 30 volunteers, work with and clean a data set to use for later analysis. The tidy data set will be titled, "tidy_data.txt."

library(data.table)

##1. Merge the training and the test sets to create one data set##

#Check to see if file exists, and if not, obtain the data set -
zip_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file <- "UCI HAR Dataset.zip"

if(!file.exists(zip_file)) {
        download.file(zip_url, zip_file, method = "curl")
}

#Unzip file, if necessary - 
project_file <- "UCI HAR Dataset"

if (!file.exists(project_file)) {
        unzip(zipfile = "UCI HAR Dataset.zip")
}

##Read data##

#Training data -
tng_subjects <- fread(file.path(project_file, "train", "subject_train.txt"))
tng_values <- fread(file.path(project_file, "train", "X_train.txt"))
tng_activities <- fread(file.path(project_file, "train", "y_train.txt"))

#Test data -
test_subjects <- fread(file.path(project_file, "test", "subject_test.txt"))
test_values <- fread(file.path(project_file, "test", "X_test.txt"))
test_activities <- fread(file.path(project_file, "test", "y_test.txt"))

#Activity labels -
activity_type <- fread(file.path(project_file, "activity_labels.txt"))
colnames(activity_type) <- c("activityID", "activityName")

#Features -
features <- read.table(file.path(project_file, "features.txt"), as.is = TRUE)
colnames(features) <- c("featureID", "featureName")

##Merge training and test sets##

#Establish combined training data
tng_data <- cbind(tng_subjects, tng_activities, tng_values)

#Establish combined test data
test_data <- cbind(test_subjects, test_activities, test_values)

#Merge training and test data
all_data <- rbind(tng_data, test_data)

#Assign column names
names(all_data) <- c("subject", "activityID",features[,2])

##2. Extracts only the measurements on the mean and standard deviation for each measurement.##

#Create a vector to identify the following columns in all_data: subject; activity; and mean and std in their names
feature_vector <- grep("(subject|activity|mean|std)", colnames(all_data), value = TRUE)

#Establishes a subset of all_data with the following columns: subject; activity; and mean and std in their names
all_data_mean_std <- all_data [,feature_vector, with = FALSE]


##3. Uses descriptive activity names to name the activities in the data set.##
#Puts the activity names in the last column of the data set
all_data_mean_std <- merge(all_data_mean_std, activity_type, by = "activityID", all.x = TRUE)

##4. Appropriately labels the data set with descriptive variable names##
names(all_data_mean_std) <- gsub ("^t", "TimeDomain_", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("^f", "FrequencyDomain_", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("BodyAcc-", "BodyAcceleration-", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("GravityAcc-", "GravityAcceleration-", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("BodyAccJerk", "BodyLinearAccelerationJerk", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("BodyGyroJerk", "BodyAngularVelocityJerk", names(all_data_mean_std))
names(all_data_mean_std) <- gsub ("Mag", "Magnitude", names(all_data_mean_std))

##5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject##

tidy_data <- aggregate (. ~ subject + activityName, data = all_data_mean_std, mean)

#Re-arranges the data in the following order: subject; activityID; activityName; and rest of data in the same order as before
tidy_data <- setcolorder(tidy_data, c(1,3, 2, 4:82))

#Writes the data set to a text file
write.table(tidy_data, file = "tidy_data.txt", row.names = FALSE, quote = FALSE)
