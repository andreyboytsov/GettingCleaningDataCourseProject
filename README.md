Getting And Cleaning Data - Course Project
================================

The task is formulated as follows (quoted from the task definition):  

> You should create one R script called run_analysis.R that does the following.  
> 1. Merges the training and the test sets to create one data set.  
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.   
> 3. Uses descriptive activity names to name the activities in the data set  
> 4. Appropriately labels the data set with descriptive variable names.  
> 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

This repository contains the script for data analysis of UCI HAR dataset, along with the
resulting dataset, produced by the script. The script filename is "run_analysis.R", and it should be run in the directory with the dataset (i.e. same directory with "features.txt" and "activity_labels.txt"). The run command in R is just *source("run_analysis.R")*. As a result, in the same directory two files will appear as the output.  
 - UCI_HAR_dataset.txt - merged training and test dataset, created on step 1-4   
 - UCI_HAR_dataset_aggregated.txt - dataset with averages, created on step 5.  

The file UCI_HAR_dataset_aggregated.txt, produced by run_analysis.R script, is also contained in the repository. This file can be read in the dataset by the following R command: *read.table("UCI_HAR_dataset_aggregated.txt", header = T)*

### Codebook - UCI HAR Aggregated Dataset

The dataset in the file UCI_HAR_dataset_aggregated.txt contains the following columns:

- Activity - (character string) name of the the performed activity. The analyzed activities were laying, standing, sitting, walking, walking upstairs, walking downstairs. Activity was one of the aggregation variables.
- Subject - (integer from 1 to 30) identifies the person, who was performing activities while wearing the sensors. Persons were anonymized and numbered from 1 to 30.

The subsequent columns frequently mention mean and standard deviation over some sliding window. Here is how the preprocessing was performed (quote from README.txt for UCI HAR dataset):

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Also it has to be mentioned that all the features were normalized and bounded within [-1;1] (see README.txt for UCI HAR dataset)). Therefore, the remaning columns are dimensionless due to normalization.

See README.txt and feature_info.txt for more information about data collection and preprocessing procedures.

The remaining columns are following:  

- Average-tBodyAcc-mean()-X - (dimensionless, normalized [-1,1]) normalized mean for X-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAcc-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean for Y-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAcc-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean for Z-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAcc-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation for X-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAcc-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation for Y-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAcc-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation for Z-axis  measurement of body acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-mean()-X - (dimensionless, normalized [-1,1]) normalized mean for X-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean for Y-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean for Z-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation for X-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation for Y-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tGravityAcc-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation for Z-axis  measurement of gravity acceleration. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-mean()-X - (dimensionless, normalized [-1,1]) normalized mean for X-axis  measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean for Y-axis measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean for Z-axis  measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation for X-axis normalized measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation for Y-axis normalized measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerk-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation for Z-axis normalized measurement of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyGyro-mean()-X - (dimensionless, normalized [-1,1]) normalized mean for X-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyro-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean for Y-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyro-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean for Z-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyro-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation for X-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyro-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation for Y-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyro-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation for Z-axis  measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-mean()-X - (dimensionless, normalized [-1,1]) normalized mean for X-axis  measurement of body jerk signal angle. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean for Y-axis  measurement of body jerk signal angle. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean for Z-axis  measurement of body jerk signal angle. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation for X-axis  measurement of body angle Jerk. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation for Y-axis  measurement of body angle Jerk. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerk-std()-Z - (dimensionless, normalized [-1,1])  normalized standard deviation for Z-axis  measurement of body angle Jerk. Averaged for certain subject and certain activity. 

- Average-tBodyAccMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for measurement of absolute body acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-tBodyAccMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for measurement of absolute body acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-tGravityAccMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for measurement of absolute gravity acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-tGravityAccMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for measurement of absolute gravity acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-tBodyAccJerkMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for measurement of absolute body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyAccJerkMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for measurement of absolute body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-tBodyGyroMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for magnitude of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyroMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for magnitude of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerkMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for magnitude of Jerk of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-tBodyGyroJerkMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for magnitude of Jerk of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyAcc-mean()-X - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to X-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to Y-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-mean()-Z - (dimensionless, normalized [-1,1])  normalized mean result of applying FFT on Z-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT on X-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT on Y-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT on Z-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-meanFreq()-X - (dimensionless, normalized [-1,1]) normalized mean frequency of X-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-meanFreq()-Y - (dimensionless, normalized [-1,1]) normalized mean frequency of Y-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAcc-meanFreq()-Z - (dimensionless, normalized [-1,1]) normalized mean frequency of Z-component of body acceleration. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-mean()-X - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to X-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to Y-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to Z-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to X-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to Y-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to Z-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-meanFreq()-X - (dimensionless, normalized [-1,1]) normalized mean frequency of X-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-meanFreq()-Y - (dimensionless, normalized [-1,1]) normalized mean frequency of Y-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyAccJerk-meanFreq()-Z - (dimensionless, normalized [-1,1]) normalized mean frequency of Z-component of body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyGyro-mean()-X - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to X-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-mean()-Y - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to Y-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-mean()-Z - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to Z-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-std()-X - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to X-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-std()-Y - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to Y-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-std()-Z - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to Z-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-meanFreq()-X - (dimensionless, normalized [-1,1]) normalized mean frequency of X-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-meanFreq()-Y - (dimensionless, normalized [-1,1]) normalized mean frequency of Y-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyGyro-meanFreq()-Z - (dimensionless, normalized [-1,1]) normalized mean frequency of Z-axis measurement of body-mounted gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyAccMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for the result of applying FFT to measurement of absolute body acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-fBodyAccMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for the result of applying FFT to measurement of absolute body acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-fBodyAccMag-meanFreq() - (dimensionless, normalized [-1,1]) normalized mean frequency for measurement of absolute body acceleration (acceleration magintude). Averaged for certain subject and certain activity.

- Average-fBodyBodyAccJerkMag-mean() - (dimensionless, normalized [-1,1]) normalized mean for the result of applying FFT to measurement of absolute body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyBodyAccJerkMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation for the result of applying FFT to measurement of absolute body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyBodyAccJerkMag-meanFreq() - (dimensionless, normalized [-1,1]) normalized mean frequency of measurement of absolute body acceleration Jerk. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroMag-mean() - (dimensionless, normalized [-1,1]) normalized mean result of applying FFT to magnitude of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of applying FFT to magnitude of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroMag-meanFreq() - (dimensionless, normalized [-1,1]) normalized mean frequency for magnitude of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroJerkMag-mean() - (dimensionless, normalized [-1,1]) normalized mean result of appying FFT to the magnitude of Jerk of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroJerkMag-std() - (dimensionless, normalized [-1,1]) normalized standard deviation of the result of appying FFT to the magnitude of Jerk of measurement of body gyroscope. Averaged for certain subject and certain activity.

- Average-fBodyBodyGyroJerkMag-meanFreq() - (dimensionless, normalized [-1,1]) normalized mean frequency of magnitude of Jerk of measurement of body gyroscope. Averaged for certain subject and certain activity.