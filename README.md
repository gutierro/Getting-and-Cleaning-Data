Getting-and-Cleaning-Data
=========================



## Course Project

1. Download the data file for the project (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to a folder on your local drive and unzip it. e.g "C:\Users\yourname\Documents\R\UCI HAR Dataset\"

2. Copy the script run_analysis.R in the same directory you unzipped the the data.

3. In R excite ,source("run_analysis.R"). 

4. run the function run_analysis(directory=.”/” ). If run_analysis.R is in a different directy to the DataSet then pass the function the 
directory with the data set

### run_analysis{}

#### Description
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. Export the data set to a text file "run_analysis_result.txt" to the working directory



#### Usage
run_analysis(directory=.”/” )

#### Arguments

directory String;  set the working directory that is must be the same to the directory where the data files are located. The default is the current working directory.
