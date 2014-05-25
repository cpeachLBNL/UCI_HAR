##Purpose:  Create a tidy data set from the UCI HAR Dataset.

##Raw Data:
The raw data used to construct the tidy data can be found in the following folder:  /UCI HAR Dataset.  

Specifically, the following files were used:

* <b>activity_labels.txt</b>  a list of activity ID <integer> and corresponding activity label <character>.

The training dataset:
* train/<b>subject_train.txt</b>  the subject ID <integer>
* train/<b>y_train.txt</b>  the activity ID <integer>
* train/<b>X_train.txt</b> - a set of 561 measurements <numeric>.  Each row corresponds to row in subject_train.txt and y_train.txt

The test dataset:
* test/<b>subject_test.txt</b> - the subject ID <integer> 
* test/<b>y_test.txt</b> - the activity ID <integer>
* test/<b>X_test.txt</b> - a set of 561 measurements <numeric>.  Each row corresponds to a row in subject_test.txt and y_est.txt

More information about the raw data set can be found in:
/UCI HAR Dataset/<b>README.txt</b>
/UCI HAR Dataset/<b>features.txt</b>
/UCI HAR Dataset/<b>feastures_info.txt</b>

##Tidy Data Set 1:
The first tidy data set consist of 1 file:  <b>MeanStd.txt</b>
This data set consists of 10299 rows and 89 columns as described below.
The values in each column are various measures per subject and activity.

The orginal dataset was subsetted down to 89 columns by selecting only those those columns containing either the words: "mean" or "std".
These columns were then renamed to enhance readbility using the following rules:
1)  Syntactically valid R names were created using the make.names() function.
2)  Column names beginning with 't' were updated to 'time'
3)  Column names beginning with 'f' were updated to 'frequency'
4)  Column names containing 'std' were replaced with 'StdDev'
5)  Column names containing 'mean' were replaced with 'Mean'
6)  All periods were removed.

The following lists all of the columns in <b>MeanStd.txt</b>.  
* subjectID - the subject ID <integer>
* activityID - the activity ID <integer>
* activityLabel - the activity label <character>
* timeBodyAccMeanX - measure <numeric>
* timeBodyAccMeanY - measure <numeric>
* timeBodyAccMeanZ - measure <numeric>
* timeGravityAccMeanX - measure <numeric>
* timeGravityAccMeanY - measure <numeric>
* timeGravityAccMeanZ - measure <numeric>
* timeBodyAccJerkMeanX - measure <numeric>
* timeBodyAccJerkMeanY - measure <numeric>
* timeBodyAccJerkMeanZ - measure <numeric>
* timeBodyGyroMeanX - measure <numeric>
* timeBodyGyroMeanY - measure <numeric>
* timeBodyGyroMeanZ - measure <numeric>
* timeBodyGyroJerkMeanX - measure <numeric>
* timeBodyGyroJerkMeanY - measure <numeric>
* timeBodyGyroJerkMeanZ - measure <numeric>
* timeBodyAccMagMean - measure <numeric>
* timeGravityAccMagMean - measure <numeric>
* timeBodyAccJerkMagMean - measure <numeric>
* timeBodyGyroMagMean - measure <numeric>
* timeBodyGyroJerkMagMean - measure <numeric>
* frequencyBodyAccMeanX - measure <numeric>
* frequencyBodyAccMeanY - measure <numeric>
* frequencyBodyAccMeanZ - measure <numeric>
* frequencyBodyAccMeanFreqX - measure <numeric>
* frequencyBodyAccMeanFreqY - measure <numeric>
* frequencyBodyAccMeanFreqZ - measure <numeric>
* frequencyBodyAccJerkMeanX - measure <numeric>
* frequencyBodyAccJerkMeanY - measure <numeric>
* frequencyBodyAccJerkMeanZ - measure <numeric>
* frequencyBodyAccJerkMeanFreqX - measure <numeric>
* frequencyBodyAccJerkMeanFreqY - measure <numeric>
* frequencyBodyAccJerkMeanFreqZ - measure <numeric>
* frequencyBodyGyroMeanX - measure <numeric>
* frequencyBodyGyroMeanY - measure <numeric>
* frequencyBodyGyroMeanZ - measure <numeric>
* frequencyBodyGyroMeanFreqX - measure <numeric>
* frequencyBodyGyroMeanFreqY - measure <numeric>
* frequencyBodyGyroMeanFreqZ - measure <numeric>
* frequencyBodyAccMagMean - measure <numeric>
* frequencyBodyAccMagMeanFreq - measure <numeric>
* frequencyBodyBodyAccJerkMagMean - measure <numeric>
* frequencyBodyBodyAccJerkMagMeanFreq - measure <numeric>
* frequencyBodyBodyGyroMagMean - measure <numeric>
* frequencyBodyBodyGyroMagMeanFreq - measure <numeric>
* frequencyBodyBodyGyroJerkMagMean - measure <numeric>
* frequencyBodyBodyGyroJerkMagMeanFreq - measure <numeric>
* angletBodyAccMeangravity - measure <numeric>
* angletBodyAccJerkMeangravityMean - measure <numeric>
* angletBodyGyroMeangravityMean - measure <numeric>
* angletBodyGyroJerkMeangravityMean - measure <numeric>
* angleXgravityMean - measure <numeric>
* angleYgravityMean - measure <numeric>
* angleZgravityMean - measure <numeric>
* timeBodyAccStdDevX - measure <numeric>
* timeBodyAccStdDevY - measure <numeric>
* timeBodyAccStdDevZ - measure <numeric>
* timeGravityAccStdDevX - measure <numeric>
* timeGravityAccStdDevY - measure <numeric>
* timeGravityAccStdDevZ - measure <numeric>
* timeBodyAccJerkStdDevX - measure <numeric>
* timeBodyAccJerkStdDevY - measure <numeric>
* timeBodyAccJerkStdDevZ - measure <numeric>
* timeBodyGyroStdDevX - measure <numeric>
* timeBodyGyroStdDevY - measure <numeric>
* timeBodyGyroStdDevZ - measure <numeric>
* timeBodyGyroJerkStdDevX - measure <numeric>
* timeBodyGyroJerkStdDevY - measure <numeric>
* timeBodyGyroJerkStdDevZ - measure <numeric>
* timeBodyAccMagStdDev - measure <numeric>
* timeGravityAccMagStdDev - measure <numeric>
* timeBodyAccJerkMagStdDev - measure <numeric>
* timeBodyGyroMagStdDev - measure <numeric>
* timeBodyGyroJerkMagStdDev - measure <numeric>
* frequencyBodyAccStdDevX - measure <numeric>
* frequencyBodyAccStdDevY - measure <numeric>
* frequencyBodyAccStdDevZ - measure <numeric>
* frequencyBodyAccJerkStdDevX - measure <numeric>
* frequencyBodyAccJerkStdDevY - measure <numeric>
* frequencyBodyAccJerkStdDevZ - measure <numeric>
* frequencyBodyGyroStdDevX - measure <numeric>
* frequencyBodyGyroStdDevY - measure <numeric>
* frequencyBodyGyroStdDevZ - measure <numeric>
* frequencyBodyAccMagStdDev - measure <numeric>
* frequencyBodyBodyAccJerkMagStdDev - measure <numeric>
* frequencyBodyBodyGyroMagStdDev - measure <numeric>
* frequencyBodyBodyGyroJerkMagStdDev - measure <numeric>

##Tidy Data Set 2 :
The second tidy data set consist of 1 file:  <b>TidyData.txt</b>
This data set consists of 180 rows and 89 columns as described below.
The values in each column are the mean of measures per subject and activity.
The columns are identical to the set described above (Tidy Data Set 1)

# Instruction list/script:
1)  Copy the Raw Data and run_analysis.R to an appropriate directory.
2)  Set the working directory in R to the same directory that contains the Raw Data and run_analysis.R.
3)  Load script run_analysis.R into R.
4)  Ensure that the following packages are installed:  plyr and reshape2.
5)  Run the script run_analysis.R.
6)  Check that 2 files: MeanStd.txt TidyData.txt have been created and match the specifications above.


