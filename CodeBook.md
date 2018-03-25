# Code Book

This code book describes the variables, the data, and any transformations or work performed to clean up the data as seen in the tidy_data.txt file.

## Tasks and Procedures
1. Merge the training and test data sets to create one data set.
   
   a. Read the data into R
         
   b. Merged the training and test sets
   
2. Extract only the measurements on the mean and standard deviation for each measurement.

   a. Created a vector to identify the columns that had mean and std (for standard deviation) in their names.
   
   b. Established a subset of the combined data set created in the first step.
   
3. Use descriptive activity names to name the activities in the data set.

   Merged the activity names from the activity_labels.txt file with the data set.
   
4. Appropriately label the data set with descriptive variable names.
   
   Read the features_info.txt file to gain a better understanding of the variable names from the given data set to change some of the names to ones that were more understandable.
   
5. Create a second, independent tidy data set with the average of each variable for activity and each subject.

   Use the aggregate function to complete this task.
   
## Variables
