#####
# Import our libraries that we will be using
library (plyr)

#####
# configuration variables
nrowsToImport <- -1  ## Number of rows to import, to allow for quicker testing, set to -1 for whole file

## Read in the files that will be used to lable the data sets


## activities.txt contains the mapping from numeric to activitiy description
## Read in the activities.txt file
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

## factors.txt contains the labels for the columns in the data sets 
## Read in the factors.txt file 
features <- read.table ("./UCI HAR Dataset/features.txt")
numCols <-nrow(features)



## Look for any column that contains "mean" or "std" in the description
## and store this in a vector 
matchColumns <-grep ("\\-mean\\(\\)|\\-std\\(\\)", features$V2, perl=TRUE)
importColumns <- rep("NULL",numCols)
for ( v in matchColumns) {
  importColumns[v]="numeric"
}

## Read in the testing and training data sets
testing <- read.table (file = "./UCI HAR Dataset/test/X_test.txt", colClasses = importColumns, nrows=nrowsToImport)
training <- read.table (file = "./UCI HAR Dataset/train/X_train.txt", colClasses = importColumns, nrows=nrowsToImport)

## Clean up the Column names on both data sets to represent what is in the factors file
myCols<-as.character(features[matchColumns,]$V2)
colnames(testing) <- myCols
colnames(training) <- myCols

## I am going to eventually reorder the columns in the data frame
## So I am modifying the myCols vector to represent this future state


## Read in the testing and training subject information
testSubjects <-read.table (file = "./UCI HAR Dataset/test/subject_test.txt",  nrows=nrowsToImport)
trainingSubjects <- read.table (file = "./UCI HAR Dataset/train/subject_train.txt", nrows=nrowsToImport)
## Add the subject information into the testing and training data sets
testing$subject <- testSubjects$V1
training$subject <- trainingSubjects$V1
## Clean up the subject information to save memory
rm(testSubjects)
rm(trainingSubjects)

## Read in the testing and training activity information
testActivities <-read.table (file = "./UCI HAR Dataset/test/y_test.txt", nrows=nrowsToImport)
trainingActivities <- read.table (file = "./UCI HAR Dataset/train/y_train.txt", nrows=nrowsToImport)
## Add the activity information into the testing and training data sets
testing$activity <- testActivities$V1
training$activity <- trainingActivities$V1
## Clean up the subject information to save memory
rm(testActivities)
rm(trainingActivities)

## Add a dataset factor column to each data set so we can later seperate the data sets if neccessary
testing$dataset <-as.factor("test")
training$dataset <-as.factor("train")

## Reorder out stat sets so that the added columns are on the left
myCols <- append (myCols, c("subject","activity","dataset"), after=0)
testing<-testing[,myCols]
training<-training[,myCols]

## Merge the two data sets and clean up the temp tables
finalData<-merge (testing, training, all=TRUE)
rm(testing)
rm(training)
##plyr::rename(data1,c)