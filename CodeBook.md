# Code Book

This code book describes the variables, the data, and any transformations or work performed to clean up the data as seen in the tidy_data.txt file.

## Tasks and Procedures
1. Merge the training and test data sets to create one data set.
   
   a. Imported the data into R.
         
   b. Merged the training and test sets.
   
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

o subject: Each row identifies the subject who performed the activity for each window sample. The range is from 1 to 30.

o activityID: Label ID for each type of activity.

o activityName: Name of each type of activity.

o Time Domain variables:

  - TimeDomain_BodyAcceleration-mean()-X
  - TimeDomain_BodyAcceleration-mean()-Y                 
  - TimeDomain_BodyAcceleration-mean()-Z                 
  - TimeDomain_BodyAcceleration-std()-X                  
  - TimeDomain_BodyAcceleration-std()-Y                  
  - TimeDomain_BodyAcceleration-std()-Z                  
  - TimeDomain_GravityAcceleration-mean()-X              
  - TimeDomain_GravityAcceleration-mean()-Y              
  - TimeDomain_GravityAcceleration-mean()-Z              
  - TimeDomain_GravityAcceleration-std()-X               
  - TimeDomain_GravityAcceleration-std()-Y               
  - TimeDomain_GravityAcceleration-std()-Z               
  - TimeDomain_BodyLinearAccelerationJerk-mean()-X       
  - TimeDomain_BodyLinearAccelerationJerk-mean()-Y       
  - TimeDomain_BodyLinearAccelerationJerk-mean()-Z       
  - TimeDomain_BodyLinearAccelerationJerk-std()-X        
  - TimeDomain_BodyLinearAccelerationJerk-std()-Y        
  - TimeDomain_BodyLinearAccelerationJerk-std()-Z        
  - TimeDomain_BodyGyro-mean()-X         
  - TimeDomain_BodyGyro-mean()-Y                         
  - TimeDomain_BodyGyro-mean()-Z                         
  - TimeDomain_BodyGyro-std()-X                          
  - TimeDomain_BodyGyro-std()-Y                          
  - TimeDomain_BodyGyro-std()-Z                          
  - TimeDomain_BodyAngularVelocityJerk-mean()-X
  - TimeDomain_BodyAngularVelocityJerk-mean()-Y          
  - TimeDomain_BodyAngularVelocityJerk-mean()-Z          
  - TimeDomain_BodyAngularVelocityJerk-std()-X           
  - TimeDomain_BodyAngularVelocityJerk-std()-Y           
  - TimeDomain_BodyAngularVelocityJerk-std()-Z           
  - TimeDomain_BodyAccMagnitude-mean()            
  - TimeDomain_BodyAccMagnitude-std()                    
  - TimeDomain_GravityAccMagnitude-mean()                
  - TimeDomain_GravityAccMagnitude-std()                
  - TimeDomain_BodyLinearAccelerationJerkMagnitude-mean()
  - TimeDomain_BodyLinearAccelerationJerkMagnitude-std() 
  - TimeDomain_BodyGyroMagnitude-mean()  
  - TimeDomain_BodyGyroMagnitude-std()                   
  - TimeDomain_BodyAngularVelocityJerkMagnitude-mean()
  - TimeDomain_BodyAngularVelocityJerkMagnitude-std()
  
o Frequency Domain variables
  - FrequencyDomain_BodyAcceleration-mean()-X                          
  - FrequencyDomain_BodyAcceleration-mean()-Y                          
  - FrequencyDomain_BodyAcceleration-mean()-Z                          
  - FrequencyDomain_BodyAcceleration-std()-X                           
  - FrequencyDomain_BodyAcceleration-std()-Y                           
  - FrequencyDomain_BodyAcceleration-std()-Z                           
  - FrequencyDomain_BodyAcceleration-meanFreq()-X                      
  - FrequencyDomain_BodyAcceleration-meanFreq()-Y                      
  - FrequencyDomain_BodyAcceleration-meanFreq()-Z                      
  - FrequencyDomain_BodyLinearAccelerationJerk-mean()-X                
  - FrequencyDomain_BodyLinearAccelerationJerk-mean()-Y                
  - FrequencyDomain_BodyLinearAccelerationJerk-mean()-Z                
  - FrequencyDomain_BodyLinearAccelerationJerk-std()-X                 
  - FrequencyDomain_BodyLinearAccelerationJerk-std()-Y                 
  - FrequencyDomain_BodyLinearAccelerationJerk-std()-Z                 
  - FrequencyDomain_BodyLinearAccelerationJerk-meanFreq()-X            
  - FrequencyDomain_BodyLinearAccelerationJerk-meanFreq()-Y            
  - FrequencyDomain_BodyLinearAccelerationJerk-meanFreq()-Z            
  - FrequencyDomain_BodyGyro-mean()-X                                  
  - FrequencyDomain_BodyGyro-mean()-Y                                  
  - FrequencyDomain_BodyGyro-mean()-Z                                  
  - FrequencyDomain_BodyGyro-std()-X                                   
  - FrequencyDomain_BodyGyro-std()-Y                                   
  - FrequencyDomain_BodyGyro-std()-Z                                   
  - FrequencyDomain_BodyGyro-meanFreq()-X                              
  - FrequencyDomain_BodyGyro-meanFreq()-Y                              
  - FrequencyDomain_BodyGyro-meanFreq()-Z                              
  - FrequencyDomain_BodyAccMagnitude-mean()                            
  - FrequencyDomain_BodyAccMagnitude-std()                             
  - FrequencyDomain_BodyAccMagnitude-meanFreq()                        
  - FrequencyDomain_BodyBodyLinearAccelerationJerkMagnitude-mean()     
  - FrequencyDomain_BodyBodyLinearAccelerationJerkMagnitude-std()      
  - FrequencyDomain_BodyBodyLinearAccelerationJerkMagnitude-meanFreq() 
  - FrequencyDomain_BodyBodyGyroMagnitude-mean()                       
  - FrequencyDomain_BodyBodyGyroMagnitude-std()                        
  - FrequencyDomain_BodyBodyGyroMagnitude-meanFreq()                   
  - FrequencyDomain_BodyBodyAngularVelocityJerkMagnitude-mean()        
  - FrequencyDomain_BodyBodyAngularVelocityJerkMagnitude-std()         
  - FrequencyDomain_BodyBodyAngularVelocityJerkMagnitude-meanFreq() 
