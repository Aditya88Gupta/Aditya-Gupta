# ***Getting and Cleaning Data, Course Project***

## *CodeBook*

### *Transformations*

The modifications made in the original dataset :-

* Merging the components of train and test datasets
* Subsetting the dataset so that it contains only the measurements on the mean and standard deviation for each  
  measurement
* Assigning descriptive activity names from activity.txt file
* Appropriately labeling the data set with descriptive variable names
* Creating an independent tidy data set with the average of each variable for each activity and subject

### *Variable Description* 

Following are the variables in the final dataset

* Subject
    + Subject ID
    + Class - Factor 
   
* Activity
    + Type of Activity performed by Subject at the time of measurement
    + Class - Factor

* Measurements
    + Contains the mean of each type of measurement for each activity and subject
    + Class - numeric
    + Following are the different type of measurements taken corresponding to each activity and subject
        -  tBodyAccMeanY
        -  tBodyAccMeanZ
        -  tBodyAccStdX
        -  tBodyAccStdY
        -  tBodyAccStdZ
        -  tGravityAccMeanX
        -  tGravityAccMeanY
        -  tGravityAccMeanZ
        -  tGravityAccStdX
        -  tGravityAccStdY
        -  tGravityAccStdZ
        -  tBodyAccJerkMeanX
        -  tBodyAccJerkMeanY
        -  tBodyAccJerkMeanZ
        -  tBodyAccJerkStdX
        -  tBodyAccJerkStdY
        -  tBodyAccJerkStdZ
        -  tBodyGyroMeanX
        -  tBodyGyroMeanY
        -  tBodyGyroMeanZ
        -  tBodyGyroStdX
        -  tBodyGyroStdY
        -  tBodyGyroStdZ
        -  tBodyGyroJerkMeanX
        -  tBodyGyroJerkMeanY
        -  tBodyGyroJerkMeanZ
        -  tBodyGyroJerkStdX
        -  tBodyGyroJerkStdY
        -  tBodyGyroJerkStdZ
        -  tBodyAccMagMean
        -  tBodyAccMagStd
        -  tGravityAccMagMean
        -  tGravityAccMagStd
        -  tBodyAccJerkMagMean
        -  tBodyAccJerkMagStd
        -  tBodyGyroMagMean
        -  tBodyGyroMagStd
        -  tBodyGyroJerkMagMean
        -  tBodyGyroJerkMagStd
        -  fBodyAccMeanX
        -  fBodyAccMeanY
        -  fBodyAccMeanZ
        -  fBodyAccStdX
        -  fBodyAccStdY
        -  fBodyAccStdZ
        -  fBodyAccMeanFreqX
        -  fBodyAccMeanFreqY
        -  fBodyAccMeanFreqZ
        -  fBodyAccJerkMeanX
        -  fBodyAccJerkMeanY
        -  fBodyAccJerkMeanZ
        -  fBodyAccJerkStdX
        -  fBodyAccJerkStdY
        -  fBodyAccJerkStdZ
        -  fBodyAccJerkMeanFreqX
        -  fBodyAccJerkMeanFreqY
        -  fBodyAccJerkMeanFreqZ
        -  fBodyGyroMeanX
        -  fBodyGyroMeanY
        -  fBodyGyroMeanZ
        -  fBodyGyroStdX
        -  fBodyGyroStdY
        -  fBodyGyroStdZ
        -  fBodyGyroMeanFreqX
        -  fBodyGyroMeanFreqY
        -  fBodyGyroMeanFreqZ
        -  fBodyAccMagMean
        -  fBodyAccMagStd
        -  fBodyAccMagMeanFreq
        -  fBodyBodyAccJerkMagMean
        -  fBodyBodyAccJerkMagStd
        -  fBodyBodyAccJerkMagMeanFreq
        -  fBodyBodyGyroMagMean
        -  fBodyBodyGyroMagStd
        -  fBodyBodyGyroMagMeanFreq
        -  fBodyBodyGyroJerkMagMean
        -  fBodyBodyGyroJerkMagStd
        -  fBodyBodyGyroJerkMagMeanFreq
