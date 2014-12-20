## Required Libraries
library("reshape2")
library("plyr")

##Read into dataframes the test set from Samsung Smartphone data - link below
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
## Eliminated all the subdirectories where data was stored locally so it can be run if data
## is placed in working directory (3 test files, 3 train files, features and labels )
##xtest <- read.table(file="data/UCI/test/X_test.txt", sep="")  ##main data
xtest <- read.table(file="X_test.txt", sep="")  ##main data
ytest <- read.table(file="y_test.txt", sep="", col.names = "activity")  ##activity
stest <- read.table(file="subject_test.txt", sep="", col.names = "subject")  ## subject
## add the subject and activity columns to the main test data
completeTest <- cbind(stest, ytest, xtest)

##Read into dataframes the training set
xtrain <- read.table(file="X_train.txt", sep="")  ##main data
ytrain <- read.table(file="y_train.txt", sep="", col.names = "activity")  ##activity
strain <- read.table(file="subject_train.txt", sep="", col.names = "subject")  ## subject
## add the subject and activity columns to the main training data
completeTrain <- cbind(strain, ytrain, xtrain)

## Merge data from Training and Test based on subject and activity, 
## will be no duplicates because different subjects in each study
##Bugs me this first merge did not work, right rows and cols but no values for second DF
##mergedData <- merge(completeTrain, completeTest, 
##                    by.x= c("subject", "activity"), 
##                    by.y=c("subject", "activity"), all=TRUE)
mergedData <- merge(completeTrain, completeTest, all=TRUE)

##Get names for features in the data set
xnames <- read.table(file="features.txt", sep="")  ##feature names
xnamesvec <- as.vector(xnames[,2])   ## pull out just names col
allnames <- c("subject", "activity", xnamesvec)  ## add first two col names
colnames(mergedData) <- allnames  ## change names in merged data

##subset cols for just mean and std deviation columns.  only included measurements which 
## meant it had a std and mean pair, and not just mean, so eliminate the meanFreq cols
meanStdColNames <- allnames[grep(("mean()|std()"),allnames)]
meanStdColNames <- meanStdColNames[-(grep("meanFreq()",meanStdColNames))]
meanStdColNames <- c("subject", "activity", meanStdColNames)  ## add first two col names

##Subset out the mean and standard deviation cols from merged data
tidydata <- subset(mergedData, select=meanStdColNames)

##Get data is a good order - activties within subjects - Not really needed
tidydata <- tidydata[order(tidydata$subject, tidydata$activty),]

##Pull activity labels into vector
##and filter out the number col
actlabels <- read.table(file="activity_labels.txt", sep="")  ##activity lables
actlabelsvec <- as.vector(actlabels[,2])   ## pull out just label col
## change activity number to value in tidy dataset
tidydata <- within(tidydata, activity <- actlabelsvec[activity])
##Clean up the column names a little
names(tidydata) <- gsub("-mean()", "Mean", names(tidydata), fixed="TRUE")
names(tidydata) <- gsub("-std()", "StandardDeviation", names(tidydata), fixed="TRUE")
names(tidydata) <- gsub("tBody", "TimeBody", names(tidydata), fixed="TRUE")
names(tidydata) <- gsub("tGrav", "TimeGrav", names(tidydata), fixed="TRUE")
names(tidydata) <- gsub("fBody", "FrequencyBody", names(tidydata), fixed="TRUE")
## Group by activity and subject ans computes means for all columns
tidydata <- ddply(tidydata, .(activity, subject), numcolwise(mean))
##order by subject
tidydata <- tidydata[order(tidydata$subject),]

##write out tidydata 
write.table(tidydata, file="tidydata.txt", row.name=FALSE)
