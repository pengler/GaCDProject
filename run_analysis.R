## Read in the factors.txt file 
features <- read.table ("./UCI HAR Dataset/features.txt")
numCols <-nrow(features)

## Look for any column that contains "mean" or "std" in the description
## and store this in a vector 
matchColumns <-grep ("mean|std", features$V2)
importColumns <- rep("NULL",numCols)
for ( v in matchColumns) {
  importColumns[v]="numeric"
}

data1 <- read.table (file = "./UCI HAR Dataset/test/X_test.txt", colClasses = importColumns, nrows=5)