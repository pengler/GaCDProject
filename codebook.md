## Thoughts on tidying the data

Assumptions: 
1) Assume that all of the data is under the working directory (the working directory being the one the contains run_analysis.R script
2) Data is already unzipped in the following hierarch (as un-rolled from the zip file:

./UCI HAR Dataset
./UCI HAR Dataset/activity_labels.txt
./UCI HAR Dataset/features_info.txt
./UCI HAR Dataset/features.txt
./UCI HAR Dataset/README.txt
./UCI HAR Dataset/test/Inertial Signals
./UCI HAR Dataset/test/subject_test.txt
./UCI HAR Dataset/test/X_test.txt
./UCI HAR Dataset/test/y_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt
./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt
./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt
./UCI HAR Dataset/train/subject_train.txt
./UCI HAR Dataset/train/X_train.txt
./UCI HAR Dataset/train/y_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt
./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt

3) Nothing in the "Inertial Siganls" directories will be used
4) feature.txt will map out the columns in the X_test.txt and X_train.txt files
5) We will only use the columns that end in -mean or -std as described in the feature.txt file. 


