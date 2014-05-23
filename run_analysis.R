# Purpose:  Create a tidy data set from the UCI HAR Dataset.
library(plyr)
library(reshape2)

#1. Merge the training and test sets to create one data set.
# 1a) Determine column names by loading features.txt
dfColumns <- read.table("UCI HAR Dataset/features.txt")
#    use make.names() function to make syntactically valid column names
colNames <- make.names(as.character(dfColumns[,2]), unique=TRUE)

# 1b) Load the Y, X, and Subject data
#   Load Train Data:
dfSTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, 
                       col.names="subjectID", colClasses="numeric") #7352 x 1
dfYTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, 
                       col.names="activityID", colClasses="numeric") #7352 x 1
dfXTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, 
                       col.names=colNames, 
                       colClasses=rep.int("numeric",length(colNames)))#7352 x 561
#   Load Test Data:
dfSTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, 
                      col.names="subjectID", colClasses="numeric") #2947 x 1
dfYTest <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, 
                      col.names="activityID", colClasses="numeric") #2947 x 1
dfXTest <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, 
                      col.names=colNames, 
                      colClasses=rep.int("numeric",length(colNames)))#2947 x 561

# 1c) Merge all 6 of the datasets:
#    Combine columns of all 3 Train datasets
dfTrain <- cbind(dfSTrain, dfYTrain, dfXTrain) # 7352 x 563
#    Combine columns of all 3 Train datasets
dfTest <- cbind(dfSTest, dfYTest, dfXTest) # 2947 x 563
#    Combine rows of Train and Test datasets
dfTotal <- rbind(dfTrain, dfTest) # 10299 x 563


#2. Extract only the measurements involving mean or standard deviation for each measurement
#    Create subset of column names
colNamesMeanStd <- c("subjectID", "activityID",
                     grep(".*mean.*", x=colNames, ignore.case=TRUE, value=TRUE),
                     grep(".*std.*", x=colNames, ignore.case=TRUE, value=TRUE))
#    Create subset of data.frame
dfMeanStd <- dfTotal[, colNamesMeanStd] # 10299 x 86


#3. Use descriptive activity names to name the activities
#    Load Activity Labels:
dfActivityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, 
                               col.names=c("activityID", "activityLabel"), 
                               colClasses=c("numeric","character"))
#    Join dfActivityLabels with dfMeanStd
dfMeanStd <- join(dfMeanStd, dfActivityLabels, by="activityID", type="left")


#4  Appropriately label the data set (columns) with descriptive activity names
#    Create list of column names to be re-labelled
colNamesOriginal <- names(dfMeanStd)
#    If first character is 't', replace with 'time'
colNames <- gsub("^t", "time", colNamesOriginal)
#    If first character is 'f', replace with 'frequency'
colNames <- gsub("^f", "frequency", colNames)
#    Replace 'std' with 'StdDev'
colNames <- gsub("std", "StdDev", colNames)
#    Replace 'mean' with 'Mean'
colNames <- gsub("mean", "Mean", colNames)
#    Remove all periods
colNames <- gsub("\\.", "", colNames)
#    Assign the new column names back to dfMeanStd
names(dfMeanStd) <- colNames

#Display the structure of the new data.frame
str(dfMeanStd)


#5  Create a second, independent tidy data set:
#    average of each combination of variable, activity and subject

#    Determine 'measure' columns (i.e. remove "subjectID", "activityID", "activityLabel")
colMeasure <- colNames[!(colNames %in% c("subjectID", "activityID", "activityLabel"))]
#    Melt 'measure' columns into new dataframe     
dfMelt <- melt(dfMeanStd, id.vars=c("activityID", "activityLabel", "subjectID"), 
               measure.vars=colMeasure, variable.name = "variable", value.name = "value")
dfMelt$group <- paste(dfMelt$activityLabel, dfMelt$subjectID, dfMelt$variable, sep=".")
#    Create a list of groups 
#    Check:  length(lstGroups) = 20 subjects x 6 activities x 86 variables = 15480
lstGroups <- split(dfMelt$value, dfMelt$group) # 15480
#    Calculate the mean of each group
dfAvgGroups <- ldply(.data = lstGroups, .fun=mean)  # 15480 x 2
names(dfAvgGroups) <- c("group", "mean") #rename the columns
#    Join back subjectID, activityID, activityLabel, and variable columns
dfAvgGroups2 <- join(dfAvgGroups, 
                     dfMelt [,c("subjectID", "activityID", "activityLabel", "variable", "group")], 
                     by="group", type="left", match="first")
#    Re-organize the columns for better appearance
#    Cols:  subjectID, activityID, activityLabel, variable, mean  (drop 'group' column)
dfTidyData <- dfAvgGroups2[ ,c("subjectID", "activityID", "activityLabel", "variable", "mean")]
#   Save this dataframe to file:  TidyData.csv
write.table(dfTidyData,"TidyData.txt", sep = "\t", col.names=TRUE, row.names=FALSE)


