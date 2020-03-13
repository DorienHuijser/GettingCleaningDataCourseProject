# GettingCleaningDataCourseProject
This repository contains the data, code and information necessary to reproduce the tidy dataset for the Getting and Cleaning Data Course on Coursera.
The instruction text for this project can be found [here](https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project)

Files in this repository:

- Readme.md: the current readme file
- Codebook.md: codebook for the tidy datasets that are created with the run_analysis.R script: which variables represent what?
- tidy_dataset_1.txt: the first dataset that is created with the run_analysis.R script
- tidy_dataset_summary.txt: the second dataset that is created with the run_analysis.R script containing summary measures from the first dataset
- run_analysis.R: an R script that gets and cleans the original data and produces the two tidy datasets described above

## The run_analysis.R script
This script performs the following actions:

1. **Prepare the data**: set the working directory (change to your own working directory!) and  [download](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and unzip the original data to be transformed
2. **Merge the training and test datasets** to create one dataset: load the necessary original data, name the variables and combine the test and training datasets into one large dataset containing 561 variables and 10299 observations
3. **Extract the measurements on the mean and standard deviations** for each measurement
4. **Label** the dataset with descriptive variable names
5. **Use descriptive activity names** to name the acitivities in the dataset: instead of numbers indicating the activities (walking, laying, sitting, etc.), replace them for actual words. In this step, the first dataset "tidy_dataset_1.txt" is created
6. **Create a second tidy dataset** with the average of each variable for each activity and each subject. In this step, the second dataset is created: "tidy_dataset_summary.txt"