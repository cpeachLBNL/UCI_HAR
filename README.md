##Purpose:  Create 2 tidy data sets from the UCI HAR Dataset.

This Repo contains the following files:
* CodeBook.md - A description of the 2 tidy data sets and decisions made
* MeanStd.txt - The first tidy data set
* TidayData.txt - The second tidy data set
* run_analysis.R - The R script required to create the 2 tidy data sets from the raw data
* /UCI HAR Dataset/  - directory containing the various raw data files (see ‘Raw Data’ below for more information).


## Instruction list/script:
1)  Copy the Raw Data and run_analysis.R to an appropriate directory on your local machine.<br\>
2)  Set the working directory in R to the same directory that contains the Raw Data and run_analysis.R.<br\>
3)  Load script run_analysis.R into R.<br\>
4)  Ensure that the following packages are installed:  plyr and reshape2.<br\>
5)  Run the script run_analysis.R.<br\>
6)  Check that 2 files: MeanStd.txt TidyData.txt have been created and match the specifications above.<br\>


##Raw Data:
The raw data used to construct the tidy data can be found in the following folder:  /UCI HAR Dataset.  

Specifically, the following files were used:

* <b>activity_labels.txt</b>  a list of activity ID (integer) and corresponding activity label (character).

* The training dataset:
  * <b>train/subject_train.txt</b>  the subject ID (integer)
  * <b>train/y_train.txt</b>  the activity ID (integer)
  * <b>train/X_train.txt</b> - a set of 561 measurements (numeric).  Each row corresponds to row in subject_train.txt and y_train.txt

*The test dataset:
  * <b>test/subject_test.txt</b> - the subject ID (integer) 
  * <b>test/y_test.txt</b> - the activity ID (integer)
  * <b>test/X_test.txt</b> - a set of 561 measurements (numeric).  Each row corresponds to a row in subject_test.txt and y_test.txt

More information about the raw data set can be found in:
* <b>/UCI HAR Dataset/README.txt</b>
* <b>/UCI HAR Dataset/features.txt</b>
* <b>/UCI HAR Dataset/features_info.txt</b>


