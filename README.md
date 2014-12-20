DataPrepProject
===============

This is the Data Science Coursera course 3 on Data Prep Project

Script - run_analysis.R

Summary - The tidy data set was created by merging the the training and test data sets into a 
a consolidated sample, pulled out all the measurement means and standard deviations
and sumarized them by activity and subject.  There were 30 subjects in the study total
and 6 activities for each subject (example Walking, sitting, standing, etc.).  So there 
will be 180 rows covering the 30 subject for each of 6 activities with mean of the mean 
and standard deviation measurements, 66 summary values explained below.  Names were given
to the measurement summary variables to help better describe the value meaning.

Data Basis - he experment was done by SmarthLab on Human Activity Regonition using smartphones.
The intent of this effort was to summarize the data readings from the experiment into 
a tidy datset to easily see the results by the 30 participants by there activities.

The links below will give the base data used and a full project decription.
Project Description - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Project Data - https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Details of Script are covered well in comments in the script and shown below summarized
The data provided was three test sets that needed to be merged, three training sets that needed
to be merged and a list of activity labels and feature labels.

The script does below and will align with comments in the script
1. Read into dataframes the test set from Samsung Smartphone data - link below
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
2. Add the subject and activity columns to the main test data
3. Read into dataframes the training set
4. Add the subject and activity columns to the main training data
5. Merge data from Training and Test based on subject and activity, 
6. Get names for features in the features file to be used for col names for merged data
7. Subset feature names cols for just mean and std deviation columns.  
only included measurements which meant it had a std and mean pair, and not just mean, so eliminate the meanFreq cols
8. Subset out the mean and standard deviation cols from merged data
tidydata <- subset(mergedData, select=meanStdColNames)
9. Pull activity labels into vector to be used to replace the values with labels
10.Filter out the number col of activity vector
11.Change activity number to value in dataset
12.Clean up the column names a little so they are self explantory in tidy dataset
13.Summarize data by grouping by activity and subject and also computes means for all columns
14.Order tidy dataset by subject
15.Write out tidydata