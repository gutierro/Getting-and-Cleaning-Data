run_analysis<-function(directory="./"){
#This script prepares the tidy data that can be used for later analysis
#
#

#Set the working directory
setwd(directory)
        
#Merges the training and the test sets to create one data set.
dt.X <- rbind(read.table("./train/X_train.txt"), read.table("./test/X_test.txt"))
dt.Y <- rbind(read.table("./train/Y_train.txt"), read.table("./test/Y_test.txt"))
dt.subject <- rbind(read.table("./train/subject_train.txt"), read.table("./test/subject_test.txt"))

#labels the data set with descriptive variable names. 
features<-read.table("features.txt")[,2]
names(dt.X) <- features
names(dt.Y) <- "activity"
names(dt.subject) <- "subject_id"# 

#Extracts only the measurements on the mean and standard deviation for each measurement.
dt.X<-dt.X[,grep("-mean\\(\\)|-std\\(\\)", features)]


#Uses descriptive activity names to name the activities in the data set.
dt.activities <- read.table("activity_labels.txt")
dt.Y[,1] = dt.activities[dt.Y[,1], 2]

#create one data set
dt<-cbind(dt.subject,dt.Y,dt.X)

#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.1
dt.tidy<-dt %>%
        group_by(subject_id,activity) %>%
        summarise_each(funs(mean))

# Export the data set to a text file 
write.table(dt.tidy,"run_analysis_result.txt",row.name=FALSE)}