# run_analysis.R

This is the course project submission for:   
Coursera Course: Getting and Cleaning Data (getdata-013)   

## Purpose
This script will read in the data set from the "Human Activity Recognition
Using Smartphone" Data Set and produce a file containing the merged test and 
training data sets. The data will summarize all of the mean and 
standard deviation data point. The summarized data points will be the average
as grouped by activity and subject. 

## Aquiring the data set
The data set can be aquired from here: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The description of the data is available here: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Running the script

### Assumptions 
* The script expects the data to be downloaded and un-zipped into the same directory 
as the run_analysis.R script 
* The script expects the data to be in the same hierarchy as when you unzip the file

### Expected file locations (OSX/Linux)
    Activities file         "./UCI HAR Dataset/activity_labels.txt"
    Feature file            "./UCI HAR Dataset/features.txt"
    Test Group Data         "./UCI HAR Dataset/test/X_test.txt"
    Training Group Data     "./UCI HAR Dataset/train/X_train.txt"
    Test Group Subject      "./UCI HAR Dataset/test/subject_test.txt"
    Training Group Subject  "./UCI HAR Dataset/train/subject_train.txt"
