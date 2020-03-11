# This script contains all code necessary to go from the original dataset to the tidy dataset
# Author: Dorien Huijser
# Date: 2020-03-11

# 0. Prepare the data ####
# Set working directory
setwd("C:/Users/dorie/Documenten/201912_Coursera_Data_Science_Specialization/3. Getting and cleaning data/GettingCleaningDataCourseProject")

# Download the data
zipfileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
install.packages("downloader")
library(downloader)
download(zipfileURL,destfile="Datazipped.zip", mode="wb")
unzip("Datazipped.zip", exdir = ".")


# 1. Merge the training and the test sets to create one data set ####
# Load all the necessary data
columnNames <- read.table("./UCI HAR Dataset/features.txt") # This is a dataframe with 2 columns: a nr and a name, we only want column 2
columnNames <- columnNames$V2 # vector with all column names (all features measured)

# load and name training dataset
subj_nrs_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") # This is a dataframe with 1 column for subject numbers
names(subj_nrs_train) <- "id"

activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt") # This is a dataframe with 1 column for activity indicators (1-6)
names(activity_train) <- "activitynumber"

data_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(data_train) <- columnNames

# load and name test dataset
subj_nrs_test <- read.table("./UCI HAR Dataset/test/subject_test.txt") # This is a dataframe with 1 column for subject numbers
names(subj_nrs_test) <- "id"

activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt") # This is a dataframe with 1 column for activity indicators (1-6)
names(activity_test) <- "activitynumber"

data_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(data_test) <- columnNames

# Combine the training and test dataframes
total_df <- rbind(data_train,data_test) # 10299 rows by 561 columns


# 2. Extract only the measurements on the mean and standard deviation for each measurement ####
df_mean_std <- total_df[,grep("mean|std", names(total_df), value=TRUE)] # 10299 rows by 79 columns


# 3. Use descriptive activity names to name the activities in the data set ####
subj_nrs <- rbind(subj_nrs_train,subj_nrs_test) # combine subject ids for train and test sets
activity <- rbind(activity_train,activity_test) # combine activity indicators for train and test sets
df_mean_std_total <- cbind(subj_nrs,activity,df_mean_std) # add subject ids and activity indicators to test set


# 4. Create a second, independent tidy data set with the average of each variable for each activity and each subject ####


