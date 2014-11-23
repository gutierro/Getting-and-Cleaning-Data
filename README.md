Getting-and-Cleaning-Data
=========================

## Course Project

1. Unzip the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into a folder on your local drive, say C:\Users\yourname\Documents\R\

2. Put run_analysis.R into C:\Users\yourname\Documents\R\UCI HAR Dataset\

3. In RStudio: setwd("C:\\\\Users\\\\yourname\\\\Documents\\\\R\\\\UCI HAR Dataset\\\\"), followed by: source("run_analysis.R"). It will run the script and it will export the result to the file "run_analysis_result.tx") in the same working directory.

4. Use data <- read.table("run_analysis_result.txt.txt") to read the data.
