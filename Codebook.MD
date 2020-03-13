---
title: "Codebook"
author: "Dorien Huijser"
date: "2020-03-11"
output: html_document
---

## General information
The information included in this codebook was derived by the information provided on the website of the original dataset, see [this link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

*Citation*: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

**Participants**: n = 30, 19-48 years old

**Procedure**: each participant wore a smartphone on the waist that measured acceleration and velocity at 50Hz using an *accelerometer* and *gyroscope* during 6 activities:

- Walking
- Walking upstairs
- Walking downstairs
- Sitting
- Standing
- Laying down


Both the original dataset and the tidy datasets created with this script contain data from these smartphone watches for all participants during all of these six activities. 


### Output dataset 1: tidy_dataset_1.txt
This dataset contains all variables with measurements on the mean and standard deviation for each measurement. It is a combination of the testing and training datasets from the original data, but only containing the variables that have the mean or standard deviation from the original dataset. Note that there are multiple measurements for each subject-activitylabel combination. In total, there are 102999 observations of 79 measured variables and 2 identifiers (id and activitylabel):

- id: subject id (number, 1-30)
- activitylabel: label of the type of activity measured (standing, sitting, laying, walking, walking upstairs, walking downstairs)
- variables measured (all numeric): gravity movements, (body) acceleration (x-axis, y-axis and z-axis) and (body) gyroscopic movements (x-axis, y-axis and z-axis):

 "tbodyacc-mean-x", "tbodyacc-mean-y", "tbodyacc-mean-z", "tbodyacc-std-x", "tbodyacc-std-y", "tbodyacc-std-z", "tgravityacc-mean-x", "tgravityacc-mean-y", "tgravityacc-mean-z", "tgravityacc-std-x", "tgravityacc-std-y", "tgravityacc-std-z", "tbodyaccjerk-mean-x", "tbodyaccjerk-mean-y", "tbodyaccjerk-mean-z", "tbodyaccjerk-std-x", "tbodyaccjerk-std-y"m-, "tbodyaccjerk-std-z", "tbodygyro-mean-x", "tbodygyro-mean-y", "tbodygyro-mean-z", "tbodygyro-std-x", "tbodygyro-std-y", "tbodygyro-std-z", "tbodygyrojerk-mean-x", "tbodygyrojerk-mean-y", "tbodygyrojerk-mean-z", "tbodygyrojerk-std-x", "tbodygyrojerk-std-y", "tbodygyrojerk-std-z", "tbodyaccmag-mean", "tbodyaccmag-std", "tgravityaccmag-mean", "tgravityaccmag-std", "tbodyaccjerkmag-mean", "tbodyaccjerkmag-std", "tbodygyromag-mean", "tbodygyromag-std", "tbodygyrojerkmag-mean", "tbodygyrojerkmag-std", "fbodyacc-mean-x", "fbodyacc-mean-y", "fbodyacc-mean-z", "fbodyacc-std-x", "fbodyacc-std-y", "fbodyacc-std-z", "fbodyacc-meanfreq-x", "fbodyacc-meanfreq-y", "fbodyacc-meanfreq-z", "fbodyaccjerk-mean-x", "fbodyaccjerk-mean-y", "fbodyaccjerk-mean-z", "fbodyaccjerk-std-x", "fbodyaccjerk-std-y", "fbodyaccjerk-std-z", "fbodyaccjerk-meanfreq-x", "fbodyaccjerk-meanfreq-y", "fbodyaccjerk-meanfreq-z", "fbodygyro-mean-x", "fbodygyro-mean-y", "fbodygyro-mean-z""fbodygyro-std-x", "fbodygyro-std-y","fbodygyro-std-z", "fbodygyro-meanfreq-x", "fbodygyro-meanfreq-y", "fbodygyro-meanfreq-z", "fbodyaccmag-mean", "fbodyaccmag-std", "fbodyaccmag-meanfreq", "fbodybodyaccjerkmag-mean", "fbodybodyaccjerkmag-std", "fbodybodyaccjerkmag-meanfreq", "fbodybodygyromag-mean", "fbodybodygyromag-std", "fbodybodygyromag-meanfreq", "fbodybodygyrojerkmag-mean", "fbodybodygyrojerkmag-std", "fbodybodygyrojerkmag-meanfreq"


### Output dataset 2: tidy_dataset_summary.txt
This dataset contains the mean of each variable grouped by subject id and activity. So for each activity and each subject, it gives the average of each of the 79 measured variables as stated above.

Structure: 180 rows (30 participants * 6 activities) by 81 columns: 

- activitylabel (standing, sitting, laying, walking, walking upstairs, walking downstairs)
- id: subject id (number, 1-30)
- the 79 variables as stated above