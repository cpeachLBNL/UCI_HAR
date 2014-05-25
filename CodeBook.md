##Purpose:  Create 2 tidy data sets from the UCI HAR Dataset.

##Tidy Data Set 1:
The first tidy data set is:  <b>MeanStd.txt</b><br/>
This data set is 10299 rows and 89 columns.  The values in each column are various measures per subject and activity.  The values are obtained by combining all of the column s of data in train and test data (subject, y, and X) , and then combining the rows on train and test data to create 1 single data frame.  A column for activityLabels was then added by matching ID’s to labels from activity_labels.txt.

This dataset was then subsetted down to 89 columns by selecting only those those columns containing either the words: "mean" or "std", representing the mean and standard deviation of each measurement.  These columns were then renamed to enhance readability using the following rules:<br\>
1)  Syntactically valid R names were created using the make.names() function.<br\>
2)  Column names beginning with 't' were updated to 'time'.<br\>
3)  Column names beginning with 'f' were updated to 'frequency'.<br\>
4)  Column names containing 'std' were replaced with 'StdDev'.<br\>
5)  Column names containing 'mean' were replaced with 'Mean'.<br\>
6)  All periods were removed.<br\>
<br\>
The following lists all of the columns in <b>MeanStd.txt</b>.  
* subjectID - the subject ID (integer)
* activityID - the activity ID (integer)
* activityLabel - the activity label (character)
* timeBodyAccMeanX - measure (numeric)
* timeBodyAccMeanY - measure (numeric)
* timeBodyAccMeanZ - measure (numeric)
* timeGravityAccMeanX - measure (numeric)
* timeGravityAccMeanY - measure (numeric)
* timeGravityAccMeanZ - measure (numeric)
* timeBodyAccJerkMeanX - measure (numeric)
* timeBodyAccJerkMeanY - measure (numeric)
* timeBodyAccJerkMeanZ - measure (numeric)
* timeBodyGyroMeanX - measure (numeric)
* timeBodyGyroMeanY - measure (numeric)
* timeBodyGyroMeanZ - measure (numeric)
* timeBodyGyroJerkMeanX - measure (numeric)
* timeBodyGyroJerkMeanY - measure (numeric)
* timeBodyGyroJerkMeanZ - measure (numeric)
* timeBodyAccMagMean - measure (numeric)
* timeGravityAccMagMean - measure (numeric)
* timeBodyAccJerkMagMean - measure (numeric)
* timeBodyGyroMagMean - measure (numeric)
* timeBodyGyroJerkMagMean - measure (numeric)
* frequencyBodyAccMeanX - measure (numeric)
* frequencyBodyAccMeanY - measure (numeric)
* frequencyBodyAccMeanZ - measure (numeric)
* frequencyBodyAccMeanFreqX - measure (numeric)
* frequencyBodyAccMeanFreqY - measure (numeric)
* frequencyBodyAccMeanFreqZ - measure (numeric)
* frequencyBodyAccJerkMeanX - measure (numeric)
* frequencyBodyAccJerkMeanY - measure (numeric)
* frequencyBodyAccJerkMeanZ - measure (numeric)
* frequencyBodyAccJerkMeanFreqX - measure (numeric)
* frequencyBodyAccJerkMeanFreqY - measure (numeric)
* frequencyBodyAccJerkMeanFreqZ - measure (numeric)
* frequencyBodyGyroMeanX - measure (numeric)
* frequencyBodyGyroMeanY - measure (numeric)
* frequencyBodyGyroMeanZ - measure (numeric)
* frequencyBodyGyroMeanFreqX - measure (numeric)
* frequencyBodyGyroMeanFreqY - measure (numeric)
* frequencyBodyGyroMeanFreqZ - measure (numeric)
* frequencyBodyAccMagMean - measure (numeric)
* frequencyBodyAccMagMeanFreq - measure (numeric)
* frequencyBodyBodyAccJerkMagMean - measure (numeric)
* frequencyBodyBodyAccJerkMagMeanFreq - measure (numeric)
* frequencyBodyBodyGyroMagMean - measure (numeric)
* frequencyBodyBodyGyroMagMeanFreq - measure (numeric)
* frequencyBodyBodyGyroJerkMagMean - measure (numeric)
* frequencyBodyBodyGyroJerkMagMeanFreq - measure (numeric)
* angletBodyAccMeangravity - measure (numeric)
* angletBodyAccJerkMeangravityMean - measure (numeric)
* angletBodyGyroMeangravityMean - measure (numeric)
* angletBodyGyroJerkMeangravityMean - measure (numeric)
* angleXgravityMean - measure (numeric)
* angleYgravityMean - measure (numeric)
* angleZgravityMean - measure (numeric)
* timeBodyAccStdDevX - measure (numeric)
* timeBodyAccStdDevY - measure (numeric)
* timeBodyAccStdDevZ - measure (numeric)
* timeGravityAccStdDevX - measure (numeric)
* timeGravityAccStdDevY - measure (numeric)
* timeGravityAccStdDevZ - measure (numeric)
* timeBodyAccJerkStdDevX - measure (numeric)
* timeBodyAccJerkStdDevY - measure (numeric)
* timeBodyAccJerkStdDevZ - measure (numeric)
* timeBodyGyroStdDevX - measure (numeric)
* timeBodyGyroStdDevY - measure (numeric)
* timeBodyGyroStdDevZ - measure (numeric)
* timeBodyGyroJerkStdDevX - measure (numeric)
* timeBodyGyroJerkStdDevY - measure (numeric)
* timeBodyGyroJerkStdDevZ - measure (numeric)
* timeBodyAccMagStdDev - measure (numeric)
* timeGravityAccMagStdDev - measure (numeric)
* timeBodyAccJerkMagStdDev - measure (numeric)
* timeBodyGyroMagStdDev - measure (numeric)
* timeBodyGyroJerkMagStdDev - measure (numeric)
* frequencyBodyAccStdDevX - measure (numeric)
* frequencyBodyAccStdDevY - measure (numeric)
* frequencyBodyAccStdDevZ - measure (numeric)
* frequencyBodyAccJerkStdDevX - measure (numeric)
* frequencyBodyAccJerkStdDevY - measure (numeric)
* frequencyBodyAccJerkStdDevZ - measure (numeric)
* frequencyBodyGyroStdDevX - measure (numeric)
* frequencyBodyGyroStdDevY - measure (numeric)
* frequencyBodyGyroStdDevZ - measure (numeric)
* frequencyBodyAccMagStdDev - measure (numeric)
* frequencyBodyBodyAccJerkMagStdDev - measure (numeric)
* frequencyBodyBodyGyroMagStdDev - measure (numeric)
* frequencyBodyBodyGyroJerkMagStdDev - measure (numeric)

##Tidy Data Set 2 :
The second tidy data set is:  <b>TidyData.txt</b><br\>  
This data set is 180 rows and 89 columns.  The values in each column are the mean measures per subject and activity.  The column names are identical to those described above (see Tidy Data Set 1).  The data from Tidy Set 1 was transformed by grouping on subject ID and activity, and then the mean value for each measure was calculated.  


## Program PsuedoCode:

1. Merge the training and test sets to create one data set.
a) Determine column names by loading features.txt
*    use make.names() function to make syntactically valid column names
b) Load the Y, X, and Subject data
*   Load Train Data:
*   Load Test Data:
c) Merge all 6 of the datasets:
*    Combine columns of all 3 Train datasets
*    Combine columns of all 3 Train datasets
*    Combine rows of Train and Test datasets

2. Extract only the measurements involving mean or standard deviation for each measurement
*    Create subset of column names
*    Create subset of data.frame

3. Use descriptive activity names to name the activities
*    Load Activity Labels:
*    Join dfActivityLabels with dfMeanStd

4  Appropriately label the data set (columns) with descriptive activity names
*    Create list of column names to be re-labelled
*    If first character is 't', replace with 'time'
*    If first character is 'f', replace with 'frequency'
*    Replace 'std' with 'StdDev'
*    Replace 'mean' with 'Mean'
*    Remove all periods
*    Assign the new column names back to dfMeanStd
*    Save this first tidy data set to file:  MeanStd.txt

5  Create a second, independent tidy data set:
*    average of each combination of variable, activity and subject
*    Determine 'measure' columns (i.e. remove "subjectID", "activityID", "activityLabel")
*    Melt 'measure' columns into new dataframe     
*    Create a list of groups 
*    Check:  length(lstGroups) = 20 subjects x 6 activities x 86 variables = 15480
*    Join back subjectID, activityLabel, and variable columns
*    Reshape for better appearance
*    Cols:  subjectID, activityID, activityLabel, <names of 86 variables>
*    Save this dataframe to file:  TidyData.csv


