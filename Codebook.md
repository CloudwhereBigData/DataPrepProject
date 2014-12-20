DataPrepProject

---
title: "Codebook.md"
output: html_document
---

Experiment Summary

The experment was done by SmarthLab on Human Activity Regonition using smartphones.
The intent of this effort was to summarize the data readings from the experiment into 
a tidy datset to easily see the results by the 30 participants by there activities.

The links below will give the base data used and a full project decription.
Project Description - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Project Data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Experiment Details
===============
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Data Dictionary of Tidy Data set below.  

The tidy data set was created by merging the the training and test data sets into a 
a consolidated sample, pulled out all the measurement means and standard deviations
and sumarized them by activity and subject.  There were 30 subjects in the study total
and 6 activities for each subject (example Walking, sitting, standing, etc.).  So there 
will be 180 rows covering the 30 subject for each of 6 activities with mean of the mean 
and standard deviation measurements, 66 summary values explained below.  Names were given
to the measurement summary variables to help better describe the value meaning.

Row Keys and data origination of measurement summarys
 activity : chr  "LAYING" "SITTING" "STANDING" "WALKING" "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS"
 subject  : int  (1 - 30 number of subject)
 
Measurements summary variables for each subject and activity.
Variables are all means of the detailed variables from the study.

Information to help with variable names below.  Should be self explanatory with the summary info above.
1. frequencies are measurements in HZ (Hertz)
2. Acc - accelerometer in cell phone - sensor signals
3. Gyro - gyroscope in cellphone - sensor signals
4. Time - measurement in time - seconds
5, Gravity - 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 

 TimeBodyAccMean-X                            : num  
 TimeBodyAccMean-Y                            : num 
 TimeBodyAccMean-Z                            : num  
 TimeBodyAccStandardDeviation-X               : num  
 TimeBodyAccStandardDeviation-Y               : num  
 TimeBodyAccStandardDeviation-Z               : num  
 TimeGravityAccMean-X                         : num  
 TimeGravityAccMean-Y                         : num  
 TimeGravityAccMean-Z                         : num  
 TimeGravityAccStandardDeviation-X            : num  
 TimeGravityAccStandardDeviation-Y            : num  
 TimeGravityAccStandardDeviation-Z            : num  
 TimeBodyAccJerkMean-X                        : num  
 TimeBodyAccJerkMean-Y                        : num  
 TimeBodyAccJerkMean-Z                        : num  
 TimeBodyAccJerkStandardDeviation-X           : num  
 TimeBodyAccJerkStandardDeviation-Y           : num  
 TimeBodyAccJerkStandardDeviation-Z           : num  
 TimeBodyGyroMean-X                           : num  
 TimeBodyGyroMean-Y                           : num  
 TimeBodyGyroMean-Z                           : num  
 TimeBodyGyroStandardDeviation-X              : num  
 TimeBodyGyroStandardDeviation-Y              : num  
 TimeBodyGyroStandardDeviation-Z              : num  
 TimeBodyGyroJerkMean-X                       : num  
 TimeBodyGyroJerkMean-Y                       : num  
 TimeBodyGyroJerkMean-Z                       : num  
 TimeBodyGyroJerkStandardDeviation-X          : num  
 TimeBodyGyroJerkStandardDeviation-Y          : num  
 TimeBodyGyroJerkStandardDeviation-Z          : num  
 TimeBodyAccMagMean                           : num  
 TimeBodyAccMagStandardDeviation              : num  
 TimeGravityAccMagMean                        : num  
 TimeGravityAccMagStandardDeviation           : num  
 TimeBodyAccJerkMagMean                       : num  
 TimeBodyAccJerkMagStandardDeviation          : num  
 TimeBodyGyroMagMean                          : num  
 TimeBodyGyroMagStandardDeviation             : num  
 TimeBodyGyroJerkMagMean                      : num  
 TimeBodyGyroJerkMagStandardDeviation         : num  
 FrequencyBodyAccMean-X                       : num  
 FrequencyBodyAccMean-Y                       : num  
 FrequencyBodyAccMean-Z                       : num  
 FrequencyBodyAccStandardDeviation-X          : num  
 FrequencyBodyAccStandardDeviation-Y          : num  
 FrequencyBodyAccStandardDeviation-Z          : num  
 FrequencyBodyAccJerkMean-X                   : num  
 FrequencyBodyAccJerkMean-Y                   : num  
 FrequencyBodyAccJerkMean-Z                   : num  
 FrequencyBodyAccJerkStandardDeviation-X      : num  
 FrequencyBodyAccJerkStandardDeviation-Y      : num  
 FrequencyBodyAccJerkStandardDeviation-Z      : num  
 FrequencyBodyGyroMean-X                      : num  
 FrequencyBodyGyroMean-Y                      : num  
 FrequencyBodyGyroMean-Z                      : num  
 FrequencyBodyGyroStandardDeviation-X         : num  
 FrequencyBodyGyroStandardDeviation-Y         : num  
 FrequencyBodyGyroStandardDeviation-Z         : num  
 FrequencyBodyAccMagMean                      : num  
 FrequencyBodyAccMagStandardDeviation         : num  
 FrequencyBodyBodyAccJerkMagMean              : num  
 FrequencyBodyBodyAccJerkMagStandardDeviation : num  
 FrequencyBodyBodyGyroMagMean                 : num  
 FrequencyBodyBodyGyroMagStandardDeviation    : num  
 FrequencyBodyBodyGyroJerkMagMean             : num  
 FrequencyBodyBodyGyroJerkMagStandardDeviation: num  

